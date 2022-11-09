import allure
import pytest
import requests

from msi_api.Apis.sign_in import SignIn
from msi_api.Utils.utils import Utils

yml_user = Utils.get_yaml_data('sign.yml')['user']
ids = Utils.get_yaml_data('sign.yml')['ids']

@allure.feature('Sign in')
class TestSignin:
    def setup_class(self):
        self.Signin = SignIn()

    def teardown_class(self):
        pass
    @allure.story('sign in')
    @allure.title('sign in')
    @pytest.mark.parametrize('sign_in_type,email,password,token,code,expect',yml_user,ids=ids)
    def test_sign_in(self,sign_in_type,email,password,token,code,expect):
        with allure.step('Get the return value of the interface'):
            r = self.Signin.signin(sign_in_type,email,password,token)
            # print(r.json()['authorization']['access_token'])
        with allure.step('assertion'):
            if r.status_code != 200:
                assert r.json()['errors'][0]['message'] == expect
            else:
                assert r.status_code == code
                assert r.json()['user']['email'] == expect


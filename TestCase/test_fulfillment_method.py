import pytest
import allure

from msi_api.Apis.fulfillment_methods import Fulfillment_method
from msi_api.Utils.utils import Utils

yml_fulfillment_method = Utils.get_yaml_data('fulfillment_method.yml')['fulfillment_method']['fulfillment']
ids_fulfillment = Utils.get_yaml_data('fulfillment_method.yml')['fulfillment_method']['ids']
@allure.feature("")
class TestFulfillmentMethod:

    def setup_class(self):
        self.Fulfillment = Fulfillment_method()
    def teardown_class(self):
        pass
    @allure.story('')
    @allure.title('')
    @pytest.mark.parametrize('channel,locale',yml_fulfillment_method, ids=ids_fulfillment)
    def test_fulfillment_methods(self, channel, locale, get_token):
        with allure.step('Get the return value of the interface'):
            res = self.Fulfillment.get_fulfillment_methods(channel, locale, get_token)
        with allure.step('assertion'):
            pass


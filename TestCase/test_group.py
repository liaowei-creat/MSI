import pytest
import allure

from msi_api.Apis.group import Group
from msi_api.Utils.utils import Utils

# get the test data
yml_sellable_data = Utils.get_yaml_data('group.yml')['sellable_group']['info']
ids_sellable = Utils.get_yaml_data('group.yml')['sellable_group']['ids']
yml_sellable_detail = Utils.get_yaml_data('group.yml')['sellable_detail']['info']
ids_sellable_detail = Utils.get_yaml_data('group.yml')['sellable_detail']['ids']
yml_navigation_data = Utils.get_yaml_data('group.yml')['navigation_group']['info']
ids_navigation = Utils.get_yaml_data('group.yml')['navigation_group']['ids']
yml_navigation_detail = Utils.get_yaml_data('group.yml')['navigation_detail']['info']
ids_navigation_detail = Utils.get_yaml_data('group.yml')['navigation_detail']['ids']

@allure.feature('group')
class TestGroup:
    def setup_class(self):
        self.Group = Group()

    def teardown_class(self):
        pass

    @allure.story('group')
    @allure.title('see sellable group')
    @pytest.mark.parametrize('channel,local,label,shop_id,include_sellables,expect',
                             yml_sellable_data,ids=ids_sellable)
    def test_sellable_group(self,channel,local,label,shop_id,include_sellables,expect):
        with allure.step('Get the return value of the interface'):
            res = self.Group.sellable_group(channel,local,label,shop_id,include_sellables)
        with allure.step('assertion'):
            assert res.status_code == 200
            if res.json()['data']['objects'][0]['sellables']:
                assert res.json()['data']['objects'][0]['sellables'][1]['name'] == expect


    @allure.story('group')
    @allure.title('see sellable group detail')
    @pytest.mark.parametrize('channel,local,id,expect',
                             yml_sellable_detail, ids=ids_sellable_detail)
    def test_sellable_detail(self,channel,local,id,expect):
        print(yml_sellable_detail)
        with allure.step('Get the return value of the interface'):
            res = self.Group.sellable_group_detail(channel,local,id)
        with allure.step('assertion'):
            if res.status_code != 200:
                assert res.json()['errors'][0]['message'] == expect
            if res.status_code == 200:
                assert res.json()['data']['object']['sellables'][0]['name'] == expect


    @allure.story('group')
    @allure.title('see navigation group')
    @pytest.mark.parametrize('channel,local,name,navigation_group_type,expect',
                             yml_navigation_data, ids=ids_navigation)
    def test_navigation_group(self, channel,local,name,navigation_group_type,expect):
        with allure.step('Get the return value of the interface'):
            res = self.Group.navigation_group(channel,local,name,navigation_group_type)
        with allure.step('assertion'):
            if res.status_code == 200:
                assert res.json()['data']['objects'][0]['navigations'][0]['title'] == expect
            if res.status_code != 200:
                print(res)

    @allure.story('group')
    @allure.title('see navigation group detail')
    @pytest.mark.parametrize('local,id,expect',
                             yml_navigation_detail, ids=ids_navigation_detail)
    def test_navigation_group_detail(self,local,id,expect):
        with allure.step('Get the return value of the interface'):
            res = self.Group.navigation_detail(local,id)
        with allure.step('assertion'):
            assert res.status_code == 200
            assert res.json()['data']['object']['navigations'][0]['title'] == expect
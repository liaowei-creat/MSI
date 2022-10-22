import allure
import pytest

from msi_api.Apis.fulfillment import Fulfillment
from msi_api.Utils.utils import Utils

yml_fulfillment = Utils.get_yaml_data('fulfillment_data.yml')['fulfillment']['info']
ids_fulfillment = Utils.get_yaml_data('fulfillment_data.yml')['fulfillment']['ids']

@allure.feature('fulfillment')
class TestFulfillment:
    def setup_class(self):
        self.Fulfillment = Fulfillment()

    def teardown_class(self):
        pass

    @allure.story('fulfillment')
    @allure.title('fulfillment')
    @pytest.mark.parametrize('channel,locale,page,par_page,order_id,user_id,channel_id,redeemable_ids,redeemable_type,status',
                             yml_fulfillment,ids=ids_fulfillment)
    def test_fulfillment(self,channel,locale,page,par_page,order_id,user_id,channel_id,redeemable_ids,redeemable_type,status,get_token):
        with allure.step("Get the return value of the interface"):
            r = self.Fulfillment.fulfillment(channel,locale,page,par_page,order_id,user_id,channel_id,redeemable_ids,redeemable_type,status,get_token)
        with allure.step('assertion'):
            pass



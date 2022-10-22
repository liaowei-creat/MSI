import pytest
import allure

from msi_api.Apis.order import Orders
from msi_api.Utils.utils import Utils

# get the test data
yml_create_order_data = Utils.get_yaml_data("create_order_data.yml")['create_order_data']['info']
ids_create = Utils.get_yaml_data("create_order_data.yml")['create_order_data']['ids']
yml_make_payment_data = Utils.get_yaml_data("create_order_data.yml")['create_order_data_make_payment']['info']
ids_make = Utils.get_yaml_data("create_order_data.yml")['create_order_data_make_payment']['ids']

@allure.feature('orders')
class TestOrders:
    def setup_class(self):
        self.Orders = Orders()
    def teardown_class(self):
        pass


    @allure.story('create order')
    @allure.title('create order but not pay')
    @pytest.mark.parametrize("channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids, user_remarks,sellables,Expected_Results",
                             yml_create_order_data,ids=ids_create)
    def test_create_order(self,get_token,channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids, user_remarks,sellables,Expected_Results):
        with allure.step('Get the return value of the interface'):
            res = self.Orders.create_an_order(get_token,channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids, user_remarks,sellables)
        with allure.step('assertion'):
            assert res.status_code == 200
            assert res.json()['data']['order']['payment_modes'][0] == Expected_Results[0]
            assert res.json()['data']['order']['status'] == Expected_Results[1]
            assert res.json()['data']['order']['payments'][0]['status'] == Expected_Results[2]



    @allure.story('create order')
    @allure.title('create order and  pay')
    @pytest.mark.parametrize(
        "channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids, user_remarks,sellables,Expected_Results",
        yml_make_payment_data, ids=ids_make)
    def test_create_make_payment_order(self, get_token, channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids,
                          user_remarks, sellables,Expected_Results):
        with allure.step('Get the return value of the interface'):
            r_pay,r_success,r_detail = self.Orders.create_make_payment_order(get_token, channel, locale, cart_checkout, fulfillment, receive_info,
                                              voucher_ids, user_remarks, sellables)
        with allure.step('assertion'):
            assert r_success.status_code == 200
            assert r_pay.status_code == 200
            assert r_detail.json()['data']['order']['status'] == Expected_Results[0]
            assert r_detail.json()['data']['order']['payments'][0]['status'] == Expected_Results[1]


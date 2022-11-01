import allure
import pytest

from msi_api.Apis.order import Orders
from msi_api.Apis.promotion import Promotion
from msi_api.Utils.utils import Utils

yml_promotion_data = Utils.get_yaml_data("promotion.yml")['quotation_data']['info']
ids_promotion = Utils.get_yaml_data("promotion.yml")['quotation_data']['ids']

yml_make_payment_data = Utils.get_yaml_data("promotion.yml")['order_data']['info']
ids_make = Utils.get_yaml_data("promotion.yml")['order_data']['ids']
class TestQuotation:
    def setup_class(self):
        self.Promotion = Promotion()
        self.Pay = Orders()

    def teardown_class(self):
        pass

    @allure.story('')
    @allure.title('')
    @pytest.mark.parametrize("channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids,sellables,Expected_Results",
                             yml_promotion_data,ids=ids_promotion)
    def test_request_quotation(self,get_token,channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids,sellables,Expected_Results):
        with allure.step('Get the return value of the interface'):
            res = Promotion().request_quotation(get_token ,channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids,sellables)
        with allure.step('assertion'):
            if res.status_code == 200:
                total_amount = res.json()['data']['quotation']['grand_total']
                t1 = float(total_amount[2:])
                t2 = float(Expected_Results)
                assert t2 == t1
            else:
                print(res.json())






    @allure.story('create order')
    @allure.title('create order and  pay')
    @pytest.mark.parametrize("channel, locale,cart_checkout,promotion_code,membership_name,  fulfillment, receive_info, voucher_ids, user_remarks,sellables,Expected_Results",
                             yml_make_payment_data, ids=ids_make)
    def test_create_make_payment_order(self, get_token, channel, locale,cart_checkout,promotion_code,membership_name,  fulfillment, receive_info, voucher_ids, user_remarks,sellables,Expected_Results):
        with allure.step('Get the return value of the interface'):
            r = self.Pay.create_an_order(get_token, channel, locale,cart_checkout, promotion_code,membership_name,  fulfillment, receive_info, voucher_ids, user_remarks,sellables)
        with allure.step('assertion'):
            if r.status_code == 200:
                total_amount = r.json()['data']['order']['payments'][0]['amount']
                t1 = float(total_amount)
                t2 = float(Expected_Results)
                assert t2 == t1
            else:
                print(r.json())

import allure
import pytest
from msi_api.Apis.quotation import Quotation
from msi_api.Utils.utils import Utils

yml_quotation_data = Utils.get_yaml_data("quotation_data.yml")['quotation_data']['quotation']
ids_quotation = Utils.get_yaml_data("quotation_data.yml")['quotation_data']['ids']


class TestQuotation:
    def setup_class(self):
        self.Quotation = Quotation()

    def teardown_class(self):
        pass

    @allure.story('')
    @allure.title('')
    @pytest.mark.parametrize(
        "channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids,sellables",
        yml_quotation_data, ids=ids_quotation)
    def test_request_quotation(self, get_token, channel, locale, cart_checkout, promotion_code, membership_name,
                               fulfillment, receive_info, voucher_ids, sellables):
        with allure.step('Get the return value of the interface'):
            res = Quotation().request_quotation(get_token, channel, locale, cart_checkout, promotion_code,
                                                membership_name, fulfillment, receive_info, voucher_ids, sellables)
        with allure.step('assertion'):
            pass
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
    @pytest.mark.parametrize("channel,locale,cart_checkout,sellable_id,sellable_type,bundle_id,quantity,preference_item_ids,"
                             "fulfillment_method,fulfillment_date,fulfillment_time_slot_id,receiver_name,"
                             "receiver_email,receiver_phone_number,address_line_1,address_line_2,address_line_3,"
                             "address_postal_code,voucher_ids",
                             yml_quotation_data,ids=ids_quotation)
    def test_request_quotation(self,channel,locale,cart_checkout,sellable_id,sellable_type,
                          bundle_id,quantity,preference_item_ids,
                          fulfillment_method,fulfillment_date,fulfillment_time_slot_id,
                          receiver_name,receiver_email,receiver_phone_number,
                          address_line_1,address_line_2,address_line_3,address_postal_code,voucher_ids, get_token):
        with allure.step('Get the return value of the interface'):
            res = Quotation().request_quotation(channel,locale,cart_checkout,sellable_id,sellable_type,
                          bundle_id,quantity,preference_item_ids,
                          fulfillment_method,fulfillment_date,fulfillment_time_slot_id,
                          receiver_name,receiver_email,receiver_phone_number,
                          address_line_1,address_line_2,address_line_3,address_postal_code,voucher_ids,get_token)
        with allure.step('assertion'):
            pass
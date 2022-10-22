from msi_api.Apis.base_api import BaseApi

class Quotation(BaseApi):
    # 请求询价
    def request_quotation(self, channel, locale, cart_checkout, sellable_id, sellable_type,
                          bundle_id, quantity, preference_item_ids,
                          fulfillment_method, fulfillment_date, fulfillment_time_slot_id,
                          receiver_name, receiver_email, receiver_phone_number,
                          address_line_1, address_line_2, address_line_3, address_postal_code, voucher_ids, token):
        add_url = "/core/v1/orders/request_quotation"

        sellables = [{
            "sellable_id": sellable_id,
            "sellable_type": sellable_type,
            "bundle_id": bundle_id,
            "quantity": quantity,
            "preference_item_ids": preference_item_ids
        }]
        fulfillment = {
            "fulfillment_method": fulfillment_method,
            "fulfillment_date": fulfillment_date,
            "fulfillment_time_slot_id": fulfillment_time_slot_id
        }
        receive_information = {
            "receiver_name": receiver_name,
            "receiver_email": receiver_email,
            "receiver_phone_number": receiver_phone_number,
            "address_line_1": address_line_1,
            "address_line_2": address_line_2,
            "address_line_3": address_line_3,
            "address_postal_code": address_postal_code
        }
        voucher_ids = voucher_ids

        param = {
            "cart_checkout": cart_checkout,
            "sellables": sellables,
            "fulfillment": fulfillment,
            "receive_information": receive_information,
            "voucher_ids": voucher_ids
        }

        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }
        req = {
            'method': 'POST',
            'headers': headers,
            'url': add_url,
            'json': param
        }
        res = self.send_api(req)
        return res

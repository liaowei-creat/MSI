from msi_api.Apis.base_api import BaseApi

class Promotion(BaseApi):
    # 请求询价
    def request_quotation(self, token ,channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids,sellables):
        add_url = "/core/v1/orders/request_quotation"
        fulfill = {
            "fulfillment_method": fulfillment[0],
            "fulfillment_date": fulfillment[1],
            "fulfillment_time_slot_id": fulfillment[2]
        }
        receiver_information = {
            "receiver_name": receive_info[0],
            "receiver_email": receive_info[1],
            "receiver_phone_number": receive_info[2],
            "address_line_1": receive_info[3],
            "address_line_2": receive_info[4],
            "address_line_3": receive_info[5],
            "address_postal_code": receive_info[6]
        }
        param = {
            "cart_checkout": cart_checkout,
            'promotion_code':promotion_code,
            'membership_name': membership_name,
            "sellables": sellables,
            "fulfillment": fulfill,
            "receive_information": receiver_information,
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


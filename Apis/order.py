

from msi_api.Apis.base_api import BaseApi
from msi_api.Apis.saleable_prod import Saleable
from msi_api.Utils.utils import Utils


class Orders(BaseApi):
    '''
    接口实现只描述接口信息，不要做断言等
    '''
    #获得订单列表页面（不同的状态）
    def order_list(self,page,par_page,channel,locale,status,fulfillment_type,token):

        # 定义创建url
        list_url = "/order/v1/orders"
        # 定义参数
        params = {
            'page': page,
            'per_page': par_page,
            'status': status,
            'fulfillment_type': fulfillment_type
        }

        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }

        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": list_url,
            "params": params,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r

    #订单详情页面
    def order_dateil(self,order_id,channel,locale,token):
        order_datail = f'/order/v1/orders/{order_id}'

        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }

        req = {
            "method": "GET",
            "url": order_datail,
            'headers': header
        }

        r = self.send_api(req)
        return r

    #确认支付
    def make_payment(self,order_id,payment_id,channel,locale,mode,token):
        order_payment = f'/order/v1/payments/{payment_id}/make_payment'
        payment_success = f'/order/v1/payments/{payment_id}/notify_paid'
        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }
        data = {
            "mode": mode,
            "return_url": f'https://msi-c2qa-api.fooyo.shop/services/order/v1/orders/{order_id}'
        }
        req_pay = {
            "method": "POST",
            "url": order_payment,
            'headers': header,
            'json':data
        }

        req_success = {
            "method": "POST",
            "url": payment_success,
            'headers': header
        }
        r_pay = self.send_api(req_pay)
        r_success = self.send_api(req_success)
        if r_pay.status_code == 200 & r_success.status_code == 200:
            r_detail = self.order_dateil(order_id,channel,locale,token)
            return r_detail
        else:
            return r_pay.json(),r_success.json()
    # #支付成功
    # def payment_success(self,order_id,channel,locale,token):
    #     payment_success = f'/order/v1/payments/{order_id}/notify_paid'
    #
    #     header = {
    #         'X-CHANNEL-KEY': channel,
    #         'Authorization': 'Bearer ' + token
    #     }
    #
    #     req = {
    #         "method": "POST",
    #         "url": payment_success,
    #         'json': header
    #     }
    #     r = self.send_api(req)
    #     return r

    #创建订单之后并且支付
    def create_make_payment_order(self, token ,channel, locale,cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids, user_remarks,sellables):
        # create_url = "/core/v1/orders/place_order"
        #
        # fulfill = {
        #     "fulfillment_method": fulfillment[0],
        #     "fulfillment_date": fulfillment[1],
        #     "fulfillment_time_slot_id": fulfillment[2]
        # }
        # receiver_information = {
        #     "receiver_name": receive_info[0],
        #     "receiver_email": receive_info[1],
        #     "receiver_phone_number": receive_info[2],
        #     "address_line_1": receive_info[3],
        #     "address_line_2": receive_info[4],
        #     "address_line_3": receive_info[5],
        #     "address_postal_code": receive_info[6]
        # }
        # param = {
        #     "cart_checkout": cart_checkout,
        #     "sellables": sellables,
        #     "fulfillment": fulfill,
        #     "receiver_information": receiver_information,
        #     "voucher_ids": voucher_ids,
        #     "user_marks": user_remarks
        # }
        #
        # headers = {
        #     'X-CHANNEL-KEY': channel,
        #     'LOCALE': locale,
        #     'Authorization': 'Bearer ' + token
        # }
        # req = {
        #     'method': 'POST',
        #     'headers': headers,
        #     'url': create_url,
        #     'json': param
        # }
        # res = self.send_api(req)
        res = self.create_an_order(token ,channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids, user_remarks,sellables)
        order_id = res.json()['data']['order']['id']
        mode = res.json()['data']['order']['payment_modes'][0]
        payment_id = res.json()['data']['order']['payments'][0]['id']
        r = self.make_payment(order_id,payment_id,channel,locale,mode,token)
        return r

    #创建订单
    def create_an_order(self, token ,channel, locale, cart_checkout,promotion_code,membership_name, fulfillment, receive_info, voucher_ids, user_remarks,sellables):
        create_url = "/core/v1/orders/place_order"

        #查询每个商品自己的sellable_id
        # if sellables[0]['sellable_type'] == 'product_sku':
        #     prod_sellable = Saleable().product_datail(channel, locale, id,token)
        #     prod_id = prod_sellable.json()['data']['product']['product_skus'][0]['id']
        #     sellables[0]['sellable_id'] = prod_id
        # if sellables[0]['sellable_type'] == 'voucher_product':
        #     voucher_prod_sellable = Saleable().voucher_product_datail(channel, locale, id,token)
        #     voucher_id = voucher_prod_sellable.json()['data']['voucher_product'][]
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
            "promotion_code":promotion_code ,
            "membership_name": membership_name,
            "sellables": sellables,
            "fulfillment": fulfill,
            "receiver_information": receiver_information,
            "voucher_ids": voucher_ids,
            "user_rmarks": user_remarks
        }

        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }
        req = {
            'method': 'POST',
            'headers': headers,
            'url': create_url,
            'json': param
        }
        # print(req)
        res = self.send_api(req)
        order_id = res.json()['data']['order_id']
        r = self.order_dateil(order_id,channel,locale,token)
        return r
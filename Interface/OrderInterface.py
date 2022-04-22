"""
文件名:OrderInterface.py
作用:录入订单接口
"""

from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class OrderInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        member = MemberInterface()
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def confirm_order(self):
        """
        确认订单
        :return:
        """
        method = 'post'  # 不带参数的post请求
        url = self.url + '/order/generateConfirmOrder'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)

    def generate_order(self, payload):
        """
        生成订单
        :return:
        """
        method = 'post'  # 带参数的post请求
        url = self.url + '/order/generateOrder'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def pay_success(self, order_id):
        """
        支付回调
        :return:
        """
        method = 'post'
        url = self.url + '/order/paySuccess'
        payload = {'orderId': order_id}  # post请求默认格式参数
        return SendMethod.send_method(method=method, url=url, data=payload, headers=self.headers)


if __name__ == '__main__':
    order = OrderInterface()
    # print(order.confirm_order())
    payload = {
        "memberReceiveAddressId": 143,  # 地址ID
        "payType": 1  # 支付方式：0->未支付；1->支付宝；2->微信
    }
    # print(order.generate_order(payload))
    print(order.pay_success(187))

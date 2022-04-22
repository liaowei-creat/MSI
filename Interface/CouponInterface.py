"""
文件名：MemberCouponInterface.py
作用：录入优惠券接口

"""
from Interface.MemberInterface import MemberInterface
from Utils.SendMethod import SendMethod


class CouponInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def add_coupon(self, coupinId):
        """
        领取指定优惠券接口
        :param coupinId: 优惠券id
        :return:
        """
        method = 'post'
        url = self.url + '/member/coupon/add/'
        return SendMethod.send_method(method=method, url=url + f'{coupinId}', headers=self.headers)

    def coupon_list(self, useStatus):
        """
        获取用户优惠券列表接口
        :param useStatus: 优惠券状态
        :return:
        """
        method = 'get'
        url = self.url + '/member/coupon/list'
        payload = {'useStatus': useStatus}
        return SendMethod.send_method(method=method, url=url, headers=self.headers, params=payload)

    def cart_coupon_list(self, type):
        """
        获取登录会员购物车的相关优惠券
        :param type: 优惠券类型
        :return:
        """
        method = 'get'
        url = self.url + '/member/coupon/list/cart/' + type
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


if __name__ == '__main__':
    coupon = CouponInterface()
    # print(coupon.add_coupon(3))
    # print(coupon.coupon_list(0))
    print(coupon.cart_coupon_list('1'))

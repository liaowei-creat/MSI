"""
文件名:CartInterface.py
作用:录入购物车接口
"""
from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class Cart:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def add_cart(self, payload):
        """
        添加商品到购物车
        :param payload: 请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/cart/add'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def get_cart_list(self):
        """
        获取某个会员的购物车列表
        :return:
        """
        method = 'get'
        url = self.url + '/cart/list'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)

    def cart_delete(self, ids):
        """
        删除购物车中的某个商品
        :return:
        """
        method = 'post'
        url = self.url + '/cart/delete'
        payload = {'ids': ids}
        return SendMethod.send_method(method=method, url=url, headers=self.headers, data=payload)

    def get_product(self, productId):
        """
        获取购物车中某个商品的规格,用于重选规格
        :return:
        """
        method = 'get'
        url = self.url + '/cart/getProduct/' + f'{productId}'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)

    def get_list_promotion(self):
        """
        获取某个会员的购物车列表,包括促销信息
        :return:
        """
        method = 'get'
        url = self.url + '/cart/list/promotion'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)

    def update_attribute(self, payload):
        """
        修改购物车中商品的规格
        :return:
        """
        method = 'post'
        url = self.url + '/cart/update/attr'
        return SendMethod.send_method(method=method, url=url, headers=self.headers, json=payload)

    def update_quantity(self, id, quantity):
        """
        修改购物车中某个商品的数量
        :return:
        """
        method = 'get'
        url = self.url + '/cart/update/quantity'
        payload = {
            'id': id,
            'quantity': quantity
        }
        return SendMethod.send_method(method=method, url=url, headers=self.headers, params=payload)

    def cart_clear(self):
        """
        清空购物车
        :return:
        """
        method = 'post'
        url = self.url + '/cart/clear'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


if __name__ == '__main__':
    cart = Cart()
    # payload = {
    #     "createDate": "2022-04-19T02:22:53.321Z",
    #     "deleteStatus": 0,
    #     "id": 0,
    #     "memberId": 0,
    #     "memberNickname": "string",
    #     "modifyDate": "2022-04-19T02:22:53.321Z",
    #     "price": 299,
    #     "productAttr": '[{"key": "颜色", "value": "蓝色"}, {"key": "尺寸", "value": "39"}, {"key": "风格", "value": "秋季"}]',
    #     "productBrand": "NIKE",
    #     "productCategoryId": 29,
    #     "productId": 35,
    #     "productName": "耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码",
    #     "productPic": "http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg",
    #     "productSkuCode": "202002250035008",
    #     "productSkuId": 178,
    #     "productSn": "6799342",
    #     "productSubTitle": "耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码",
    #     "quantity": 1
    # }
    # print(cart.add_cart(payload))
    # print(cart.get_cart_list())
    # data = {'ids': 128}
    # print(cart.cart_delete(data))
    # print(cart.get_product(35))
    # print(cart.get_list_promotion())

    # print(cart.updata_attribute(payload))
    payload = {'id': 228, 'quantity': 2}
    print(cart.update_quantity(payload))
    # print(cart.cart_clear())

"""
文件名：CartInterface.py
作用：录入购物车接口

"""
from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class CartInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def add_cart(self, payload):
        """
        添加购物车
        :param payload:请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/cart/add'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def get_cart_list(self):
        """
        购物车列表接口
        :return:
        """
        method = 'get'
        url = self.url + '/cart/list'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


if __name__ == '__main__':
    cart = CartInterface()
    payload = {
        "createDate": "2022-04-19T06:32:27.663Z",
        "deleteStatus": 0,
        "id": 0,
        "memberId": 0,
        "memberNickname": "string",
        "modifyDate": "2022-04-19T06:32:27.663Z",
        "price": 5499.00,
        "productAttr": '[{"key":"颜色","value":"银色"},{"key":"容量","value":"32G"}]',
        "productBrand": "苹果",
        "productCategoryId": 19,
        "productId": 29,
        "productName": "Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机",
        "productPic": "shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg",
        "productSkuCode": "201808270029003",
        "productSkuId": 201808270029003,
        "productSn": "108",
        "productSubTitl": "7437799",
        "quantity": 1
    }
    # print(cart.add_cart(payload))
    print(cart.get_cart_list())

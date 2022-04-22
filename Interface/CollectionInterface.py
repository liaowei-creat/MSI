"""
文件名:CollectonInterface.py
    会员收藏管理接口
"""

from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class CollectonInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def add_collection(self, payload):
        """
        添加收藏商品
        :param payload: 请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/member/collection/addProduct'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def delete_collection(self,memberId,productId):
        """
        删除收藏商品
        :param memberId: 用户的id
        :param productId: 商品的id
        :return:
        """
        method = 'post'
        url = self.url + '/member/collection/deleteProduct'
        payload = {
            'memberId': memberId,
            'productId': productId
        }
        return SendMethod.send_method(method=method, url=url, data=payload,headers=self.headers)

    def get_collection_list(self,memberId):
        """
        获取会员收藏列表
        :param memberId: 会员id
        :return:
        """
        method = 'get'
        url = self.url + '/member/address/'+f'{memberId}'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


if __name__ == '__main__':
    collection=CollectonInterface()
    payload={
            "createTime": "2022-04-19T01:15:29.966Z",
            "id": "string",
            "memberIcon": "string",
            "memberId": 146,
            "memberNickname": "string",
            "productId": 29,
            "productName": "Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机",
            "productPic": "string",
            "productPrice": "string",
            "productSubTitle": "string"
        }
    print(collection.add_collection(payload))  #收藏商品
    print(collection.get_collection_list(146))  #查看收藏


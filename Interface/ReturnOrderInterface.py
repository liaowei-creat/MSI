"""
文件名：ReturnOrderInterface.py
作用：录入申请退货管理接口

"""

from Interface.MemberInterface import MemberInterface
from Utils.SendMethod import SendMethod


class ReturnOrderInterface:
    def __init__(self):
        self.url = ' http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def return_apply(self, returnApply):
        """
        申请退货接口
        :param returnApply: 退货申请
        :return:
        """
        method = 'post'
        url = self.url + '/returnApply/create'
        returnApply = {
            "description": "string",
            "memberUsername": "string",
            "orderId": 0,
            "orderSn": "string",
            "productAttr": "string",
            "productBrand": "string",
            "productCount": 0,
            "productId": 0,
            "productName": "string",
            "productPic": "string",
            "productPrice": 0,
            "productRealPrice": 0,
            "proofPics": "string",
            "reason": "string",
            "returnName": "string",
            "returnPhone": "string"
        }
        return SendMethod.send_method(method=method, url=url, json=returnApply, headers=self.headers)


if __name__ == '__main__':
    apply = ReturnOrderInterface()
    print(apply.return_apply({
        "description": "string",
        "memberUsername": "string",
        "orderId": 2,
        "orderSn": "string",
        "productAttr": "string",
        "productBrand": "string",
        "productCount": 0,
        "productId": 0,
        "productName": "string",
        "productPic": "string",
        "productPrice": 0,
        "productRealPrice": 0,
        "proofPics": "string",
        "reason": "string",
        "returnName": "string",
        "returnPhone": "string"
    }))

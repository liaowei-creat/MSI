"""
文件名: AddressInterface.py
作用:录入收获地址接口
"""

from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class AddressInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        member = MemberInterface()
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def add_address(self, payload):
        """
        添加收获地址
        :param payload: 收获地址参数
        :return:
        """
        method = 'post'
        url = self.url + '/member/address/add'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def get_address_list(self):
        """
        获取收获地址列表
        :return:
        """
        method = 'get'
        url = self.url + '/member/address/list'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


if __name__ == '__main__':
    addr = AddressInterface()
    payload = {
        "city": "成都",
        "defaultStatus": 0,
        "detailAddress": "武侯祠",
        "id": 0,
        "memberId": 0,  # 通过token登录获取
        "name": "诸葛亮",
        "phoneNumber": "13822223333",
        "postCode": "610000",
        "province": "四川省",
        "region": "武侯区"
    }
    # print(addr.add_address(payload))
    print(addr.get_address_list())

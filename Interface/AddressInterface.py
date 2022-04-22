"""
文件名:AddressInterface.py
    会员收货地址

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
        添加收货地址
        :param payload: 请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/member/address/add'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def member_address_list(self):
        """
        显示收货地址列表
        :param payload: 请求参数
        :return:
        """
        method = 'get'
        url = self.url + '/member/address/list'

        return SendMethod.send_method(method=method, url=url, headers=self.headers)


    def member_address_update(self,id, payload):
        """
        根据id修改收货地址
        :param payload: 请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/member/address/update/'+f'{id}'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def member_address_delete(self,id):
        """
        根据id删除收货地址
        :param payload: 请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/member/address/delete/'+f'{id}'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


    def member_address_id(self,id):
        """
        根据id显示收货地址信息
        :param payload: 请求参数
        :return:
        """
        method = 'get'
        url = self.url + '/member/address/'+f'{id}'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


    def get_address_list(self):
        """
        获取收获地址列表
        :return:
        """
        method = 'get'
        url = self.url + '/member/address/list'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)

if __name__ == '__main__':
     addr=AddressInterface()
     payload={
             "city": "成都市",
             "defaultStatus": 0,
             "detailAddress": "天府新谷",
             "id": 0,
             "memberId": 146,
             "name": "qyyo",
             "phoneNumber": "13370004002",
             "postCode": "654321",
             "province": "四川省",
             "region": "武侯区"
         }

     print(addr.add_address(payload))  #添加收货地址
     #print(addr.member_address_list()) #显示收货地址列表
     #print(addr.member_address_update(100,payload))  #根据id修改收货地址
     #print(addr.member_address_delete(68))  # 根据id删除收货地址
     print(addr.member_address_id(100)) #根据id显示收货地址
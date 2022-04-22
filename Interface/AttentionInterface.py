"""
文件名:AttentionInterface.py
    会员关注品牌接口
"""

from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class AttentionInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def add_attention(self, payload):
        """
        添加关注品牌
        :param payload: 请求参数
        :return:
        """
        method = 'post'
        url = self.url + '/member/attention/add'
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def delete_attention(self,memberId,brandId):
        """
        删除关注品牌
        :param memberId: 用户的id
        :param productId: 商品的id
        :return:
        """
        method = 'post'
        url = self.url + '/member/attention/delete'
        payload = {
            'memberId': memberId,
            'brandId': brandId
        }
        return SendMethod.send_method(method=method, url=url, data=payload,headers=self.headers)

    def get_attention_list(self,memberId):
        """
        获取会员品牌关注列表
        :param memberId: 会员id
        :return:
        """
        method = 'get'
        url = self.url + '/member/address/'+f'{memberId}'
        return SendMethod.send_method(method=method, url=url, headers=self.headers)


if __name__ == '__main__':
    attention=AttentionInterface()
    payload={
        {
            "brandAttentionCount": 0,
            "brandCity": "string",
            "brandId": 0,
            "brandLogo": "string",
            "brandName": "string",
            "createTime": "2022-04-19T01:15:29.952Z",
            "id": "string",
            "memberIcon": "string",
            "memberId": 0,
            "memberNickname": "string"
        }
        }
    #print(attention.add_attention(payload))  #关注品牌
    print(attention.get_attention_list(146))  #查看关注


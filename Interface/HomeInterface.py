"""
文件名:HomeInterface.py
作用:录入首页内容管理的接口
"""
from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class HomeInterface:
    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        # self.headers = MemberInterface().get_member_token("刘阿斗", '123456')
        # self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def home_content(self):
        """
        首页内容页信息展示
        :return:
        """
        method = 'get'
        url = self.url + '/home/content'
        return SendMethod.send_method(method=method, url=url)

    def product_catelist(self, parentId):
        """
        获取首页商品分类
        :return:
        """
        method = 'get'
        url = self.url + '/home/productCateList/' + f'{parentId}'
        # payload = {'parentId': parentId}
        return SendMethod.send_method(method=method, url=url)

    def recommend_productlist(self, pageSize=4, pageNum=1):
        """
        分页获取推荐商品
        :return:
        """
        method = 'get'
        url = self.url + '/home/recommendProductList'
        payload = {
            'pageSize': pageSize,
            'pageNum': pageNum
        }
        return SendMethod.send_method(method=method, url=url, params=payload)

    def subject_list(self, payload):
        """
        根据分类获取专题
        :return:
        """
        method = 'get'
        url = self.url + '/home/subjectList'
        return SendMethod.send_method(method=method, url=url, params=payload)


if __name__ == '__main__':
    home = HomeInterface()
    # print(home.home_content())
    # print(home.product_catelist())
    print(home.recommend_productlist())
    # print(home.subject_list(1))

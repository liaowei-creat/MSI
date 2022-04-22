"""
文件名: OrderInterface.py
作用:会员商品浏览记录接口

"""
from Utils.SendMethod import SendMethod
from Interface.MemberInterface import MemberInterface


class HistoryInterface:

    def __init__(self):
        self.url = 'http://139.159.146.104:8083'
        self.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})

    def create_record(self, payload):
        """
        创建浏览记录
        :param
        :return:
        """
        # 1.请求方式
        method = 'post'  # 带着参数的get请求,用params接收参数
        # 2.请求地址
        url = self.url + "/member/readHistory/create"
        # 3. 获取返回值
        return SendMethod.send_method(method=method, url=url, json=payload, headers=self.headers)

    def delete_record(self, ids):
        """
        删除浏览记录
        :param
        :return:
        """
        # 1.请求方式
        method = 'post'  # 带着参数的get请求,用params接收参数
        # 2.请求地址
        url = self.url + "/member/readHistory/delete"
        payload={
            "ids":ids
        }
        # 3. 获取返回值
        return SendMethod.send_method(method=method, url=url, data=payload, headers=self.headers)

    def show_record(self, payload):
        """
        展示浏览记录
        :param
        :return:
        """
        # 1.请求方式
        method = 'get'  # 带着参数的get请求,用params接收参数
        # 2.请求地址
        url = self.url + "/member/readHistory/list"
        # 3. 获取返回值
        return SendMethod.send_method(method=method, url=url, params=payload, headers=self.headers)


if __name__ == '__main__':
    history = HistoryInterface()
    payload = {
        "createTime": "2022-04-19T01:33:05.113Z",
        "id": "string",
        "memberIcon": "string",
        "memberId": 146,
        "memberNickname": "string",
        "productId": 27,
        "productName": "string",
        "productPic": "http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg",
        "productPrice": "string",
        "productSubTitle": "骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购"
    }
    print(history.create_record(payload))
    # params = '146'
    # print(history.show_record('146'))

    # print(history.delete_record(['625fda2c4211cb10306caffc']))

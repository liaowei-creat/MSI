"""
文件名：MemberInterface.py
作用：录入会员模块接口，每一个接口有一个对应的方法，该方法应用于接口测试

"""
from Utils.SendMethod import SendMethod
from Utils.GetKeyword import GetKeyword


class MemberInterface:
    def __init__(self):
        self.url = ' http://139.159.146.104:8083'

    def get_auth_code(self,telephone):
        """
        获取验证码接口
        :param telephone: 手机号码
        :return:
        """
        # 1.请求方式
        method = 'get'  # 带着参数的get请求，用params接收参数

        # 2.请求地址
        url = self.url + '/sso/getAuthCode'

        # 3请求参数
        payload = {'telephone': telephone}
        # 4.获取返回值
        return SendMethod.send_method(method=method, url=url, params=payload)

    def get_code(self, telephone):
        """
        获取验证码
        :param telephone:
        :return:
        """
        return self.get_auth_code(telephone=telephone)['body']['data']

    def member_register(self, username, password, telephone):
        """
        会员注册接口
        :param username: 用户名
        :param password: 密码
        :param telephone: 手机号
        :return:
        """
        method = 'post'  # 带参数的post请求，x-www-form-urlencoded,使用data接收
        url = self.url + '/sso/register'
        payload = {
            'username': username,
            'password': password,
            'telephone': telephone,
            'authCode': self.get_code(telephone)  # 通过调用获取验证码接口
        }
        return SendMethod.send_method(method=method, url=url, data=payload)

    def member_login(self, payload: dict):
        """
        会员登录接口
        :return:
        """
        method = 'post'  # 带参数的post请求，x-www-form-urlencoded,使用data接收
        url = self.url + '/sso/login'

        return SendMethod.send_method(method=method, url=url, data=payload)

    def get_member_token(self, payload):
        """
        获取会员token
        :return: 携带token信息的请求头参数
        """
        # token = self.member_login(username, password)['body']['data']['token']  # 调用会员登录，获取token值
        token = GetKeyword.get_keyword(self.member_login(payload), 'token')
        return {'Authorization': f'Bearer {token}'}  # 合成请求头，拼接token信息

    def get_info(self, username, password):
        """
        获取会员信息
        :param username: 用户名
        :param password: 密码
        :return: 会员信息
        """
        return self.member_login(payload)

    def refresh_token(self):
        """
        刷新token
        :return:
        """
        token = GetKeyword.get_keyword(self.member_login(payload), 'token')
        return {'Authorization': f'Bearer {token}'}

    def update_password(self,telephone, password):
        """
        修改密码接口
        :param telephone: 手机号码
        :param password: 密码
        :return:
        """
        method = 'post'
        url = self.url + '/sso/updatePassword'
        payload = {
            'telephone': telephone,
            'password': password,
            'authCode': self.get_code(telephone)  # 调用获取验证码
        }
        return SendMethod.send_method(method=method, url=url, data=payload)


if __name__ == '__main__':
    member = MemberInterface()
    telephone = ''
    # print(member.get_auth_code(telephone))
    print(member.get_code(telephone))
    payload = {
        'username': '曹操',
        'password': '123456',
        'telephone': '13879797987',
    }
    username = ''
    password = '789'
    # print(member.member_register(username, password, telephone))
    # print(member.member_login(payload))
    # print(member.get_member_token(username, password))
    # print(member.get_info(username, password))
    # print(member.refresh_token())
    print(member.update_password(telephone, password))

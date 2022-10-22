
from msi_api.Apis.base_api import BaseApi


class SignIn(BaseApi):

    #登录
    def signin(self,sign_in_type,email,password,token):
        # 定义创建url
        sign_url = "/core/v1/users/sign_in"
        # 定义参数
        req_body = {
            "user": {
                "sign_in_type": sign_in_type,
                "email": email,
                "phone_number": "",
                "password": password,
                "token_provider": token,
                "token": token,
                "device_key": ""
            }
        }

        header = {
            'Content-Type': 'application/json'
        }

        # 组装调用send的参数
        req = {
            "method": "POST",
            "url": sign_url,
            'headers': header,
            'json': req_body
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r
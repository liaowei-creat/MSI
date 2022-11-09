import time

import requests
import yaml
from msi_api.Utils.log_utils import logger

class BaseApi:

    BASE_URL = "https://msi-c2qa-api.fooyo.shop/services"

    def send_api(self, req):
        '''
        对 requests进行二次封装
        :return: 接口对应接口
        '''
        proxies = {
            "http": 'http://127.0.0.1:8888',
            'https': 'http://127.0.0.1:8888'
        }
        if self.BASE_URL:
            req["url"] = self.BASE_URL + req.get("url")
            req['proxies'] = proxies
            req['verify'] = False
        logger.info(f"请求数据为：{req}")
        r = requests.request(**req)
        time.sleep(2)
        logger.info(f"响应数据为：{r.text}")
        return r

    def get_yaml_data(self,file):
        with open(file, encoding="utf-8") as f:
            result = yaml.safe_load(f)
            return result
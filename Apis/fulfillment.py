from msi_api.Apis.base_api import BaseApi

class Fulfillment(BaseApi):

    def fulfillment(self,channel,locale,page,par_page,order_id,user_id,channel_id,redeemable_ids,redeemable_type,status,token):
        # 定义创建url
        full_url = "/fulfillment/v1/redeemables"
        # 定义参数
        params = {
            'page': page,
            'per_page': par_page,
            'order_id': order_id,
            'user_id': user_id,
            'channel_id': channel_id,
            'redeemable_ids': redeemable_ids,
            'redeemable_type': redeemable_type,
            'status': status
        }
        header = {
                'X-CHANNEL-KEY': channel,
                'LOCALE': locale,
                'Authorization': 'Bearer ' + token
            }
        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": full_url,
            "params": params,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r
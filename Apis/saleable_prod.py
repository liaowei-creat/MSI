from msi_api.Apis.base_api import BaseApi


class Saleable(BaseApi):
    #sellable 接口
    def sellables(self,channel,locale,sellable_type,keyword,sort_by,page,per_page,token):
        # 定义创建url
        sellable_url = "/core/v1/sellables"
        # 定义参数
        params = {
            'page': page,
            'per_page': per_page,
            'sort_by': sort_by,
            'sellable_type': sellable_type,
            'keyword': keyword
        }

        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }

        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": sellable_url,
            "params": params,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r


    #商品详情
    def product_datail(self, channel, locale, id, token):
        # 定义创建url
        product_url = f"/core/v1/products/{id}"
        # 定义参数


        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }

        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": product_url,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r

    # 优惠券商品详情
    def voucher_product_datail(self, channel, locale, id, token):
        # 定义创建url
        voucher_product_url = f"/core/v1/voucher_products/{id}"
        # 定义参数

        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }

        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": voucher_product_url,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r

    # bundle商品详情
    def bundles_datail(self, channel, locale, id, token):
        # 定义创建url
        bundles_url = f"/core/v1/bundles/{id}"
        # 定义参数

        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Authorization': 'Bearer ' + token
        }

        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": bundles_url,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r

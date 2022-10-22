from msi_api.Apis.base_api import BaseApi

class CartItem(BaseApi):
    #将商品加入到购物车
    def create_cart_item(self, channel,locale, require_user_cart, id, product_sku, quantity, preference_id, token):
        # 定义创建url
        create_cart_item_url = "/core/v1/cart_items"
        # 定义参数
        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'Content-Type': 'application/json',
            'authorization': token

        }
        params = {
            "require_user_cart_and_quotation": require_user_cart
        }
        data_cart = {
            "cart_item": {
                "cartable_id": id,
                "cartable_type": product_sku,
                "quantity": quantity,
                "preference_item_ids": [
                    preference_id
                ]
            }
        }


        # 组装调用send的参数
        req = {
            "method": "POST",
            "url": create_cart_item_url,
            'headers': header,
            'json': data_cart,
            'params': params
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r

    #获取购物车的内容
    def get_cart_item(self,channel,locale,token):
        # 定义创建url
        get_cart_item_url = "/core/v1/cart_items"
        # 定义参数

        header = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'authorization': token
        }

        # 组装调用send的参数
        req = {
            "method": "GET",
            "url": get_cart_item_url,
            'headers': header
        }
        # 发起请求
        # r = requests.request("POST", url=create_url, params=params, json=data)
        r = self.send_api(req)
        # print(r.text)
        # 返回请求得到的结果
        return r

    def update_a_cart_item(self, channel, locale,require_user_cart, id, product_sku,  quantity , preference_id, update_quantity,selected, token):
        '''
        更新购物车商品数量，选中状态
        '''
        r = self.create_cart_item(channel,locale, require_user_cart, id, product_sku, quantity, preference_id, token)
        cart_items_id = r.json()['data']['user_cart']['shop'][0]['cart_items'][0]['id']
        update_url = f"/core/v1/cart_items/{cart_items_id}"
        param = {
            "cart_item": {
                "quantity": update_quantity,
                "selected": selected
            }
        }

        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'authorization': token
        }
        req = {
            'method': 'PUT',
            'headers': headers,
            'url': update_url,
            'json': param
        }
        print(req)
        res = self.send_api(req)
        print(res.text)

        return res

    def delete_a_cart_item(self, channel, locale, id, token):
        self.update_a_cart_item
        delete_url = f"/core/v1/cart_items/{id}"
        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': locale,
            'authorization': token
        }
        req = {
            'method': 'DELETE',
            'headers': headers,
            'url': delete_url,
            # 'params' : ''
        }

        res = self.send_api(req)
        print(res.text)

        return res
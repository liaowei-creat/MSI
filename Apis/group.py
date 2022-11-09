from msi_api.Apis.base_api import BaseApi

class Group(BaseApi):

    def sellable_group(self,channel,local,label,shop_id,include_sellables):
        sellable_group_url = '/core/v1/sellable_groups'
        param = {
            'label': label,
            'shop_id': shop_id,
            'include_sellables': include_sellables
        }
        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': local,
            'accept': 'application/json'
        }
        req = {
            'method': 'GET',
            'headers': headers,
            'url': sellable_group_url,
            'params': param
        }
        res = self.send_api(req)
        return res

    def sellable_group_detail(self,channel,local,id):
        sellable_group_detail_url = f'/core/v1/sellable_groups/{id}'
        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': local
        }
        req = {
            'method': 'GET',
            'headers': headers,
            'url': sellable_group_detail_url,
        }
        res = self.send_api(req)
        return res

    def navigation_group(self,channel,local,name,navigation_group_type):
        navigation_url = '/core/v1/navigation_groups'
        param = {
            'name': name,
            'navigation_group_type': navigation_group_type,
        }
        headers = {
            'X-CHANNEL-KEY': channel,
            'LOCALE': local
        }
        req = {
            'method': 'GET',
            'headers': headers,
            'url': navigation_url,
            'json': param
        }
        res = self.send_api(req)
        return res

    def navigation_detail(self,local,id):
        navigation_detail_url = f'/core/v1/navigation_groups/{id}'
        headers = {
            'LOCALE': local
        }
        req = {
            'method': 'GET',
            'headers': headers,
            'url': navigation_detail_url,
        }
        res = self.send_api(req)
        return res

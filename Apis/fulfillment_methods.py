from msi_api.Apis.base_api import BaseApi

class Fulfillment_method(BaseApi):


    def get_fulfillment_methods(self,channel,locale, token):

        fulfillment_methods_url = "/core/v1/fulfillment_methods"
        param = {}
        
        headers = {
            'X-CHANNEL-KEY' : channel,
            'LOCALE' : locale,
            'Authorization': 'Bearer ' + token
        }
        req = {
            'method' : 'GET',
            'headers' : headers,
            'url' : fulfillment_methods_url
        }
        res = self.send_api(req)

        return res





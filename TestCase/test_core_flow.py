from msi_api.Apis.order import Orders
from msi_api.Apis.sign_in import SignIn


class TestCoreFlow:
    def setup_class(self):
        self.sign = SignIn()
        self.order = Orders()
    def teardown_class(self):
        pass

    #guest用户下单
    def test_guest_place_order(self,sign_in_type,email,password,token,channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids, user_remarks,sellables):
        res = self.sign.signin(sign_in_type,email,password,token)
        access_token = res.json()['authorization']['access_token']
        res_order = self.order.create_make_payment_order(access_token,channel, locale, cart_checkout, fulfillment, receive_info, voucher_ids, user_remarks,sellables)

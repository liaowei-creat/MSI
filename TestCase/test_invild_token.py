import allure

from msi_api.Apis.cart_item import CartItem
from msi_api.Apis.fulfillment import Fulfillment
from msi_api.Apis.fulfillment_methods import Fulfillment_method
from msi_api.Apis.order import Orders
from msi_api.Apis.quotation import Quotation
from msi_api.Apis.saleable_prod import Saleable


class TestInvildToken:
    def setup_class(self):
        self.Sale = Saleable()
        self.Cart_item = CartItem()
        self.Fulfillment_method = Fulfillment_method()
        self.Quotation = Quotation()
        self.Orders = Orders()
        self.Fulfillment = Fulfillment()



    def teardown_class(self):
        pass

    def test_saleable(self):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.sellables('anEExskQdLwOO481W5EvOFKtrzViLheI','en','product','','price_asc',1,25, '')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_product(self):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.product_datail('anEExskQdLwOO481W5EvOFKtrzViLheI','en',1, '')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_voucher_product(self):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.voucher_product_datail('anEExskQdLwOO481W5EvOFKtrzViLheI','en',1, '')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_bundle_product(self):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.bundles_datail('anEExskQdLwOO481W5EvOFKtrzViLheI','en',1, '')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_create_cart_item(self):
        with allure.step('Get the return value of the interface'):
            r = self.Cart_item.create_cart_item('anEExskQdLwOO481W5EvOFKtrzViLheI', 'en', True, 1, 'product_sku', 1, '', '')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_get_cart_item(self):
        with allure.step('Get the return value of the interface'):
            r = self.Cart_item.get_cart_item('1', 'en','')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_update_cart(self):
        with allure.step('Get the return value of the interface'):
            res = self.Cart_item.update_a_cart_item('9X1tR7uauolCRapFoU3GstlnyOjJr4Zi','en',10,'true',1, '')
        with allure.step('assertion'):
            assert res.status_code == 401
            assert res.json()['errors'][0]['message'] == 'Unauthorized'

    def test_delete_cart_item(self):
        with allure.step('Get the return value of the interface'):
            res = self.Cart_item.delete_a_cart_item('9X1tR7uauolCRapFoU3GstlnyOjJr4Zi','en',1, '')
        with allure.step('assertion'):
            assert res.status_code == 401
            assert res.json()['errors'][0]['message'] == 'Unauthorized'

    def test_fulfillment_methods(self):
        with allure.step('Get the return value of the interface'):
            res = self.Fulfillment_method.get_fulfillment_methods('9X1tR7uauolCRapFoU3GstlnyOjJr4Zi','en', '')
        with allure.step('assertion'):
            assert res.status_code == 401
            assert res.json()['errors'][0]['message'] == 'Unauthorized'

    def test_request_quotation(self):
        with allure.step('Get the return value of the interface'):
            res = Quotation().request_quotation('emTUvDH7IjEwY0QBqPLSotYCPceebKkT','en',True,2,
                                                'product_sku',0,1,0,'delivery','2022-09-30',1,
                                                'zhangsan','xx@11.com','15227629383','address1',
                                                'address2','adress3','610000',[], '')
        with allure.step('assertion'):
            assert res.status_code == 401
            assert res.json()['errors'][0]['message'] == 'Unauthorized'

    def test_create_order(self):
        with allure.step('Get the return value of the interface'):
            res = self.Orders.create_an_order('','emTUvDH7IjEwY0QBqPLSotYCPceebKkT','en',True,['delivery','2022-09-30',1],['zhangsan','xx@11.com','152-2762-9383','address1','address2','adress3','610000'],[],'double sugar',[{
            "sellable_id": 2,
            "sellable_type": 'product_sku',
            "bundle_id": 0,
            "quantity": 1,
            "preference_item_ids": []
        }])
        with allure.step('assertion'):
            assert res.status_code == 401
            assert res.json()['errors'][0]['message'] == 'Unauthorized'


    def test_order_list(self):
        with allure.step('Get the return value of the interface'):
            r = self.Orders.order_list(1,25,'emTUvDH7IjEwY0QBqPLSotYCPceebKkT','en','to_pay','delivery','')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_order_datail(self):
        with allure.step('Get the return value of the interface'):
            r = self.Orders.order_dateil(1,'emTUvDH7IjEwY0QBqPLSotYCPceebKkT','en','')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'

    def test_make_order(self):
        with allure.step('Get the return value of the interface'):
            r_pay,r_success = self.Orders.make_payment(1,'emTUvDH7IjEwY0QBqPLSotYCPceebKkT','en','')
        with allure.step('assertion'):
            assert r_pay.status_code == 401
            assert r_pay.json()['errors'][0]['message'] == 'Unauthorized'
            assert r_success.status_code == 401
            assert r_success.json()['errors'][0]['message'] == 'Unauthorized'

    def test_fulfillment(self):
        with allure.step("Get the return value of the interface"):
            r = self.Fulfillment.fulfillment('emTUvDH7IjEwY0QBqPLSotYCPceebKkT','en',1,25,1,1,1,1,'voucher','to_redeem','')
        with allure.step('assertion'):
            assert r.status_code == 401
            assert r.json()['errors'][0]['message'] == 'Unauthorized'
import pytest as pytest
import allure
from msi_api.Apis.order import Orders
from msi_api.Utils.utils import Utils

yml_order_list = Utils.get_yaml_data('order_data.yml')['order_data']['info']
ids_list = Utils.get_yaml_data('order_data.yml')['order_data']['ids']
yml_order_detail = Utils.get_yaml_data('order_data.yml')['order_datail']['info']
ids_detail = Utils.get_yaml_data('order_data.yml')['order_datail']['ids']
yml_order_unpaid = Utils.get_yaml_data('order_data.yml')['Unpaid']['info']
ids_unpaid = Utils.get_yaml_data('order_data.yml')['Unpaid']['ids']
@allure.feature('order')
class TestOrder:

    def setup_class(self):
        self.Orders = Orders()
        # data = get_yaml_data('../Data/order_data.yml')

    def teardown_class(self):
        pass

    @allure.story('order list')
    @allure.title('different status orders')
    @pytest.mark.parametrize('page,par_page,channel,locale,status,fulfillment_type',yml_order_list,ids=ids_list)
    def test_order_list(self,page,par_page,channel,locale,status,fulfillment_type,get_token):
        with allure.step('Get the return value of the interface'):
            r = self.Orders.order_list(page,par_page,channel,locale,status,fulfillment_type,get_token)
        with allure.step('assertion'):
            pass
            # pytest.assume(r.code==200)
            # pytest.assume()

    @allure.story('order detail')
    @allure.title('Order details in different states')
    @pytest.mark.parametrize('order_id,channel,locale',
                            yml_order_detail,ids=ids_detail)
    def test_order_datail(self,order_id,channel,locale,get_token):
        with allure.step('Get the return value of the interface'):
            r = self.Orders.order_dateil(order_id,channel,locale,get_token)
        # print(r.text)
        with allure.step('assertion'):
            pass
            # pytest.assume(r.code==200)
            # pytest.assume()

    @allure.story('order payment')
    @allure.title('Pay for the order')
    @pytest.mark.parametrize('order_id,channel,locale',yml_order_unpaid,ids=ids_unpaid)
    def test_make_order(self,order_id,channel,locale,get_token):
        with allure.step('Get the return value of the interface'):
            r_pay,r_success = self.Orders.make_payment(order_id,channel,locale,get_token)

        with allure.step('assertion'):
            pass

    # @allure.story('order payment success')
    # @allure.title('payment success')
    # @pytest.mark.parametrize('order', get_yaml_data('../Data/order_data.yml')['Unpaid']['order_info'])
    # def test_pyamnet_success(self,order):
    #     with allure.step('Get the return value of the interface'):
    #         r = self.Orders.payment_success(order)
    #     with allure.step('assertion'):
    #         pass

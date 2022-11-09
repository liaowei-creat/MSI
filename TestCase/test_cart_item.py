import allure
import pytest

from msi_api.Apis.cart_item import CartItem
from msi_api.Utils.utils import Utils

yml_create_cart_item = Utils.get_yaml_data('cart_item.yml')['create_cart_item']['add']
ids_create = Utils.get_yaml_data('cart_item.yml')['create_cart_item']['ids']
yml_get_cart_item = Utils.get_yaml_data('cart_item.yml')['get_cart_item']['cart']
ids_cart = Utils.get_yaml_data('cart_item.yml')['get_cart_item']['ids']
yml_update_cart_data = Utils.get_yaml_data('cart_item.yml')['update_cart_data']['cart']
ids_update = Utils.get_yaml_data('cart_item.yml')['update_cart_data']['ids']
yml_delete_item = Utils.get_yaml_data('cart_item.yml')['delete_item']['info']
ids_delete = Utils.get_yaml_data('cart_item.yml')['delete_item']['ids']
@allure.feature('cart item')
class TestCartItem:
    def setup_class(self):
        self.Cart_item = CartItem()

    def teardown_class(self):
        pass

    @allure.story('create cart item')
    @allure.title('create cart item')
    @pytest.mark.parametrize('channel,locale, require_user_cart, id, product_sku, quantity, preference_id',
                             yml_create_cart_item,ids=ids_create)
    def test_create_cart_item(self,channel,locale, require_user_cart, id, product_sku, quantity, preference_id,get_token):
        with allure.step('Get the return value of the interface'):
            r = self.Cart_item.create_cart_item(channel,locale, require_user_cart, id, product_sku, quantity, preference_id,get_token)
        with allure.step('assertion'):
            pass

    @allure.story('get cart item')
    @allure.title('get cart item')
    @pytest.mark.parametrize('channel, locale',
                             yml_get_cart_item,ids=ids_cart)
    def test_get_cart_item(self,channel, locale,get_token):
        with allure.step('Get the return value of the interface'):
            r = self.Cart_item.get_cart_item(channel, locale,get_token)
        with allure.step('assertion'):
            pass

    @allure.story('')
    @allure.title('update cart item')
    @pytest.mark.parametrize('channel, locale, quantity, selected, id',
                             yml_update_cart_data,ids=ids_update)
    def test_update_cart(self, channel, locale, quantity, selected, id, get_token):
        with allure.step(''):
            res = self.Cart_item.update_a_cart_item(channel, locale, quantity, selected, id, get_token)
        with allure.step('assertion'):
            pass

    @allure.story('')
    @allure.title('delete cart item')
    @pytest.mark.parametrize('channel, locale, id',
                             yml_delete_item, ids=ids_delete)
    def test_delete_cart_item(self, channel, locale, id, get_token):
        with allure.step(''):
            res = self.Cart_item.delete_a_cart_item(channel, locale, id, get_token)
        with allure.step('assertion'):
            pass
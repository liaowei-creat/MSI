import allure
import pytest

from msi_api.Apis.saleable_prod import Saleable
from msi_api.Utils.utils import Utils

yml_sellable = Utils.get_yaml_data('saleable.yml')['sellable']['sell']
ids_sellable = Utils.get_yaml_data('saleable.yml')['sellable']['ids']
yml_prod = Utils.get_yaml_data('saleable.yml')['product']['info']
ids_prod = Utils.get_yaml_data('saleable.yml')['product']['ids']
yml_voucher_prod = Utils.get_yaml_data('saleable.yml')['voucher_product']['info']
ids_voucher_prod = Utils.get_yaml_data('saleable.yml')['voucher_product']['ids']
yml_bundle = Utils.get_yaml_data('saleable.yml')['bundles']['info']
ids_bundle = Utils.get_yaml_data('saleable.yml')['bundles']['ids']




@allure.feature('saleable product')
class TestSaleable:
    def setup_class(self):
        self.Sale = Saleable()
    def teardown_class(self):
        pass

    @allure.story('saleable')
    @allure.title('saleable')
    @pytest.mark.parametrize('channel,locale,sellable_type,keyword,sort_by,page,per_page',
                             yml_sellable,ids=ids_sellable)
    def test_saleable(self,channel,locale,sellable_type,keyword,sort_by,page,per_page,get_token):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.sellables(channel,locale,sellable_type,keyword,sort_by,page,per_page,get_token)
        with allure.step('assertion'):
            pass

    @allure.story('product detail')
    @allure.title('product detail page')
    @pytest.mark.parametrize('channel,locale,id',
                             yml_prod,ids=ids_prod)
    def test_product(self,channel,locale,id,get_token):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.product_datail(channel, locale, id,get_token)
        with allure.step('assertion'):
            pass


    @allure.story('voucher product detail')
    @allure.title('voucher product detail page')
    @pytest.mark.parametrize('channel,locale,id',
                             yml_voucher_prod,ids=ids_voucher_prod)
    def test_voucher_product(self, channel, locale, id,get_token):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.voucher_product_datail(channel, locale, id, get_token)
        with allure.step('assertion'):
            pass

    @allure.story('bundles detail')
    @allure.title('bundles detail page')
    @pytest.mark.parametrize('channel,locale,id',
                            yml_bundle,ids=ids_bundle)
    def test_bundle_product(self, channel, locale, id, get_token):
        with allure.step("Get the return value of the interface"):
            r = self.Sale.bundles_datail(channel, locale, id, get_token)
        with allure.step('assertion'):
            pass



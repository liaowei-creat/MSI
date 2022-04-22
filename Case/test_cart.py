"""
文件名:test_cart.py
作用:购物车接口测试
"""
import pytest
import allure
from Utils.GetKeyword import GetKeyword


@allure.feature('购物车')  # 模块名称
@allure.story('添加商品到购物车')  # 测试模块下的功能
@allure.title('添加商品到购物车_正确数据')
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_add_cart(cart):
    """添加商品到购物车测试"""
    with allure.step('1.测试数据准备'):
        payload = {
            "createDate": "2022-04-20T01:12:18.793Z",
            "deleteStatus": 0,
            "id": 0,
            "memberId": 0,
            "memberNickname": "string",
            "modifyDate": "2022-04-20T01:12:18.793Z",
            "price": 200,
            "productAttr": '[{"key": "颜色", "value": "蓝色"}, {"key": "尺寸", "value": "39"}, {"key": "风格", "value": "秋季"}]',
            "productBrand": "NIKE",
            "productCategoryId": 29,
            "productId": 35,
            "productName": "耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码",
            "productPic": "http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg",
            "productSkuCode": "202002250035008",
            "productSkuId": 178,
            "productSn": "6799342",
            "productSubTitle": "耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码",
            "quantity": 1
        }
    with allure.step('2.发起添加商品到购物车的请求'):
        result = cart.add_cart(payload)
    with allure.step('3.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('获取会员购物车列表')
@allure.title('获取购物车列表')
@allure.severity(allure.severity_level.BLOCKER)
def test_get_cartlist(cart):
    """获取购物车列表测试"""
    with allure.step('1.发起获取购物车列表的请求'):
        result = cart.get_cart_list()
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:status
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('修改购物车中商品的数量')
@allure.title('修改购物车中商品的数量_正确数据')
@allure.severity(allure.severity_level.BLOCKER)
def test_update_quantity(cart):
    """修改购物车中某个商品的数量"""
    with allure.step('1.发起请求'):
        cartpro_id = GetKeyword.get_keyword(cart.get_cart_list(), 'id')
        result = cart.update_quantity(cartpro_id, 4)
    with allure.step('2.断言'):
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('获取购物车中某个商品的规格')
@allure.title('获取购物车中商品的规格_正确数据')
@allure.severity(allure.severity_level.BLOCKER)
def test_get_product(cart):
    """获取购物车中某个商品的规格测试"""
    with allure.step('1.发起请求'):
        product_id = GetKeyword.get_keyword(cart.get_cart_list(), 'productId')
        result = cart.get_product(product_id)
    with allure.step('2.断言'):
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('获取某个会员的购物车列表,包括促销信息')
@allure.title('获取会员的购物车列表_正确数据')
@allure.severity(allure.severity_level.BLOCKER)
def test_get_product(cart):
    """获取购物车中某个商品的规格"""
    with allure.step('1.发起获取购物车列表的请求'):
        result = cart.get_list_promotion()
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:status
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('修改购物车中商品的规格')
@allure.title('修改商品属性中的风格为夏季')
@allure.severity(allure.severity_level.BLOCKER)
def test_update_attribute(cart):
    with allure.step('1.准备测试数据'):
        payload = {
            "createDate": "2022-04-20T01:12:18.793Z",
            "deleteStatus": 0,
            "id": 0,
            "memberId": 0,
            "memberNickname": "string",
            "modifyDate": "2022-04-20T01:12:18.793Z",
            "price": 200,
            "productAttr": '[{"key": "颜色", "value": "蓝色"}, {"key": "尺寸", "value": "39"}, {"key": "风格", "value": "夏季"}]',
            "productBrand": "NIKE",
            "productCategoryId": 29,
            "productId": 35,
            "productName": "耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码",
            "productPic": "http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg",
            "productSkuCode": "202002250035008",
            "productSkuId": 178,
            "productSn": "6799342",
            "productSubTitle": "耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码",
            "quantity": 1
        }
    with allure.step('2.发起请求'):
        result = cart.update_attribute(payload)
    with allure.step('3.断言'):
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:status
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('删除购物车商品')
@allure.title('删除购物车中存在的商品')
@allure.severity(allure.severity_level.BLOCKER)
def test_cart_delete(cart):
    """删除购物车中的某个商品"""
    with allure.step('1.准备测试数据'):
        cartpro_id = GetKeyword.get_keyword(cart.get_cart_list(), 'id')
    with allure.step('2.发起请求'):
        result = cart.cart_delete(cartpro_id)
    with allure.step('3.断言'):
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('购物车')
@allure.story('删除购物车商品')
@allure.title('删除购物车中不存在的商品')
@allure.severity(allure.severity_level.BLOCKER)
def test_cart_delete(cart):
    """删除购物车中的某个商品"""
    with allure.step('1.准备测试数据'):
        cartpro_id = GetKeyword.get_keyword(cart.get_cart_list(), 'id')
    with allure.step('2.发起请求'):
        result = cart.cart_delete(cartpro_id + 1)
    with allure.step('3.断言'):
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        code = result['body']['code']
        pytest.assume(code == 500)


@allure.feature('购物车')
@allure.story('清空购物车')
@allure.title('清空购物车_正确数据')
@allure.severity(allure.severity_level.BLOCKER)
def test_cart_clean(cart):
    """清空购物车"""
    with allure.step('1.测试数据准备'):
        result = test_add_cart(cart)
    with allure.step('2.发起请求'):
        result = cart.cart_clear()
    with allure.step('3.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:status
        code = result['body']['code']
        pytest.assume(code == 200)

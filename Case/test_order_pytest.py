"""
文件名: test_order_pytest.py
作用: 使用pytest写订单接口
"""
import pytest
import allure
from Utils.Database import Database




@allure.feature('订单')  # 模块名称
@allure.story('根据购物车信息生成确认单信息')  # 测试模块下的功能
@allure.title('根据购物车信息生成确认单信息_正确数据')  # 用例标题
@allure.severity(allure.severity_level.NORMAL)  # 用例优先级
def test_01_confirm_order(order):
    """
    根据购物车信息生成确认单信息
    :param order:
    :param payload:
    :return:
    """
    with allure.step('1.发起确认订单请求'):
        confirm_result = order.confirm_order()
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = confirm_result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = confirm_result['body']['code']  # status实际结果
        pytest.assume(status == 200)


@allure.feature('订单')  # 模块名称
@allure.story('根据购物车信息生成订单')  # 测试模块下的功能
@allure.title('根据购物车信息生成订单_正确数据')  # 用例标题
@allure.severity(allure.severity_level.NORMAL)  # 用例优先级
def test_02_generate_order(order):
    """
    根据购物车信息生成订单
    :param order:
    :param payload:
    :return:
    """
    with allure.step('1.发起生成订单请求'):
        get_address_sql = """SELECT * FROM ums_member_receive_address WHERE member_id=146"""
        payload = {
            "memberReceiveAddressId": Database().readone(get_address_sql)['id'],  # 地址ID
            "payType": 1  # 支付方式：0->未支付；1->支付宝；2->微信
        }
        generate_result = order.generate_order(payload)
        print(generate_result)
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = generate_result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码


@allure.feature('订单')  # 模块名称
@allure.story('支付成功的回调')  # 测试模块下的功能
@allure.title('支付成功的回调_正确数据')  # 用例标题
@allure.severity(allure.severity_level.NORMAL)  # 用例优先级
def test_03_pay_success(order):
    """
    支付成功的回调
    :param order:
    :param payload:
    :return:
    """
    with allure.step('1.发起支付成功的回调请求'):
        pay_success_sql = """SELECT id FROM oms_order WHERE member_id=146"""
        success_result = order.pay_success(Database().readone(pay_success_sql)['id'])
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = success_result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = success_result['body']['code']  # status实际结果
        pytest.assume(status == 200)

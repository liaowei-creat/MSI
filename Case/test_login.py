"""
文件名: test_login.py
作用: 登录用例
"""
import allure
import pytest


@allure.feature('登录')  # 模块名称
@allure.story('登录')  # 测试模块下的功能
@allure.title('{login_data[comments]}')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_login(login, login_data):
    with allure.step('1.测试数据准备'):  # 测试用例中的操作步骤
        expected = login_data.pop('expected')  # 后面断言用到
        login_data.pop('comments')  # 临时处理,如后期仍不需要,可修改原始数据删除,直接pop不接收
    with allure.step('2.发起登录的请求'):
        result = login.member_login(login_data)  # 请求登录接口
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = result['body']['code']  # code实际结果
        pytest.assume(status,expected)


@allure.feature('登录')  # 模块名称
@allure.story('获取验证码')  # 测试模块下的功能
@allure.title('{code_data[comments]}')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_code(login, code_data):
    with allure.step('1.测试数据准备'):  # 测试用例中的操作步骤
        expected = code_data.pop('expected')  # 后面断言用到
        code_data.pop('comments')  # 临时处理,如后期仍不需要,可修改原始数据删除,直接pop不接收
    with allure.step('2.获取验证码的请求'):
        result = login.get_auth_code(code_data)  # 获取验证码接口
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = result['status_code']  # 状态码实际结果
        print(result)
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = result['body']['code']  # code实际结果
        pytest.assume(status,expected)


@allure.feature('登录')  # 模块名称
@allure.story('注册')  # 测试模块下的功能
@allure.title('{register_data[comments]}')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_register(login, register_data):
    with allure.step('1.测试数据准备'):  # 测试用例中的操作步骤
        expected = register_data.pop('expected')  # 后面断言用到
    register_data.pop('comments')  # 临时处理,如后期仍不需要,可修改原始数据删除,直接pop不接收
    with allure.step('2.发起注册的请求'):
        result = login.member_register(register_data['username'], ['password'], ['telephone'])  # 请求注册接口
    # 断言http状态码: status_code
    with allure.step('3.断言'):
        status_code = result['status_code']  # 状态码实际结果
    pytest.assume(status_code == 200)  # 断言状态码

    # 断言开发自检字段: status
    status = result['body']['code']  # code实际结果
    pytest.assume(status, expected)


@allure.feature('登录')  # 模块名称
@allure.story('修改密码')  # 测试模块下的功能
@allure.title('验证修改密码接口')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_register(login, update_data):
    with allure.step('1.发起修改密码的请求'):
        expected = update_data.pop('expected')  # 后面断言用到
        update_data.pop('comments')  # 临时处理,如后期仍不需要,可修改原始数据删除,直接pop不接收
    with allure.step('2.发起注册的请求'):
        result = login.update_password(update_data['password'], ['telephone'])  # 请求修改密码接口
    # 断言http状态码: status_code
    with allure.step('3.断言'):
        status_code = result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码

        # 断言开发自检字段: status
        status = result['body']['code']  # code实际结果
        pytest.assume(status, expected)

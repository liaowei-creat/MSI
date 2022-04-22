"""
文件名:test_address.py
      测试收货地址用例
"""
import pytest
import allure
from Utils.Database import Database

@allure.feature('收货地址')  # 模块名称
@allure.story('添加收货地址')  # 测试模块下的功能
@allure.title('添加收货地址')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_add_address(address):
    with allure.step('1.收货地址测试数据准备'):  # 测试用例中的操作步骤
        payload = {
            "city": "成都市",
            "defaultStatus": 0,
            "detailAddress": "天府新谷",
            "id": 0,
            "memberId": 146,
            "name": "qyyo",
            "phoneNumber": "13370004001",
            "postCode": "654321",
            "province": "四川省",
            "region": "武侯区"
        }
    with allure.step('2.发起添加收货地址的请求'):  # 测试用例中的操作步骤
        result = address.add_address(payload)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # # 断言开发自检字段: message
        status = result['body']['message']  # status实际结果
        pytest.assume(status == '操作成功')



@allure.feature('收货地址')  # 模块名称
@allure.story('查询用户收货地址列表')  # 测试模块下的功能
@allure.title('收货地址列表')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_show_address_list(address):
    print(address.member_address_list())  # 打印返回内容
    with allure.step('1.发起查询收货地址的请求'):  # 测试用例中的操作步骤
        result = address.member_address_list()
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码
        data_id = result['body']['code']
        pytest.assume(data_id == 200)



@allure.feature('收货地址')  # 模块名称
@allure.story('根据id修改收货地址')  # 测试模块下的功能
@allure.title('修改收货地址')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_update_address(address):
    with allure.step('1.修改收货地址测试数据准备'):  # 测试用例中的操作步骤
      get_address_sql = """SELECT * FROM ums_member_receive_address WHERE member_id=146"""
      payload = {
            "name": "qyyo",
            "phoneNumber": "13370004000"
        }
    with allure.step('2.发起修改收货地址的请求'):  # 测试用例中的操作步骤
        result = address.member_address_update(Database().readone(get_address_sql)['id'],payload)
        print(result)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码



@allure.feature('收货地址')  # 模块名称
@allure.story('根据id删除收货地址')  # 测试模块下的功能
@allure.title('删除收货地址')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_delete_address(address):
    print(address.member_address_id(415))  # 打印返回内容
    with allure.step('1.发起删除收货地址的请求'):  # 测试用例中的操作步骤
        result = address.member_address_delete(415)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码


@allure.feature('收货地址')  # 模块名称
@allure.story('根据id查询收货地址')  # 测试模块下的功能
@allure.title('id查询收货地址')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_show_address_id(address):
    with allure.step('1.发起查询收货地址的请求'):  # 测试用例中的操作步骤
        get_address_sql = """SELECT * FROM ums_member_receive_address WHERE member_id=146"""
        result = address.member_address_id(Database().readone(get_address_sql)['id'])
        print(result)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码
        data_id = result['body']['data']['id']
        pytest.assume(data_id == 408)  # 断言id是否匹配


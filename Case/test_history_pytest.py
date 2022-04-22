"""
文件名: test_order_pytest.py
作用: 使用pytest写订单接口
"""
import pytest
import allure


@allure.feature('会员商品浏览记录管理')  # 模块名称
@allure.story('创建浏览记录')  # 测试模块下的功能
@allure.title('创建浏览记录_正确数据')  # 用例标题
@allure.severity(allure.severity_level.NORMAL)  # 用例优先级
def test_01_create_record(history):

    """
    创建浏览记录测试用例
    :param order:
    :param payload:
    :return:
    """
    with allure.step('1.发起生成订单请求'):
        payload = {
            "createTime": "2022-04-19T01:33:05.113Z",
            "id": "123",
            "memberIcon": "string",
            "memberId": 111,
            "memberNickname": "string",
            "productId": 27,
            "productName": "string",
            "productPic": "http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg",
            "productPrice": "string",
            "productSubTitle": "骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购"
        }
        create_result = history.create_record(payload)
        print(create_result)
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = create_result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = create_result['body']['code']  # status实际结果
        pytest.assume(status == 200)


@allure.feature('会员商品浏览记录管理')  # 模块名称
@allure.story('删除浏览记录')  # 测试模块下的功能
@allure.title('删除浏览记录_正确数据')  # 用例标题
@allure.severity(allure.severity_level.NORMAL)  # 用例优先级
def test_02_delete_record(history):
    """
    删除浏览记录测试用例
    :param order:
    :param payload:
    :return:
    """
    with allure.step('1.发起删除浏览记录请求'):
        delete_result = history.delete_record(['123'])
        print(delete_result)
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = delete_result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = delete_result['body']['code']  # status实际结果
        pytest.assume(status == 200)


@allure.feature('会员商品浏览记录管理')  # 模块名称
@allure.story('展示浏览记录')  # 测试模块下的功能
@allure.title('展示浏览记录_正确数据')  # 用例标题
@allure.severity(allure.severity_level.NORMAL)  # 用例优先级
def test_03_show_record(history):
    """
    展示浏览记录测试用例
    :param order:
    :param payload:
    :return:
    """
    with allure.step('1.发起展示浏览记录请求'):
        show_result = history.show_record('146')
        print(show_result)
    with allure.step('3.断言'):
        # 断言http状态码: status_code
        status_code = show_result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码
        # 断言开发自检字段: status
        status = show_result['body']['code']  # status实际结果
        pytest.assume(status == 200)

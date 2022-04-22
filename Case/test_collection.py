"""
文件名:test_collection.py
      测试会员收藏用例
"""
import pytest
import allure


@allure.feature('会员收藏')  # 模块名称
@allure.story('添加会员收藏')  # 测试模块下的功能
@allure.title('添加会员收藏')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_add_collection(collection):
    with allure.step('1.收藏商品测试数据准备'):  # 测试用例中的操作步骤
        payload = {
            "createTime": "2022-04-19T01:15:29.966Z",
            "id": "string",
            "memberIcon": "string",
            "memberId": 146,
            "memberNickname": "string",
            "productId": 29,
            "productName": "Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机",
            "productPic": "string",
            "productPrice": "string",
            "productSubTitle": "string"
            }
    with allure.step('2.发起添加收藏的请求'):  # 测试用例中的操作步骤
        result = collection.add_collection(payload)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码



@allure.feature('会员收藏')  # 模块名称
@allure.story('查询会员收藏列表')  # 测试模块下的功能
@allure.title('会员收藏列表')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_show_collection_list(collection):
    with allure.step('1.发起查询会员收藏的请求'):  # 测试用例中的操作步骤
        result = collection.get_collection_list(146)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码
    #     data_id = result['body']['code']
    #     pytest.assume(data_id == 200)


@allure.feature('会员收藏')  # 模块名称
@allure.story('取消会员收藏')  # 测试模块下的功能
@allure.title('取消会员收藏')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_delete_collection(collection):
    with allure.step('1.发起取消会员收藏的请求'):  # 测试用例中的操作步骤
        result = collection.delete_collection(146,29)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码


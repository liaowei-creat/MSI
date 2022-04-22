"""
文件名:test_attention.py
      测试会员关注品牌用例
"""
import pytest
import allure


@allure.feature('会员关注品牌')  # 模块名称
@allure.story('添加会员关注品牌')  # 测试模块下的功能
@allure.title('添加会员关注品牌')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_add_attention(attention):
    with allure.step('1.关注品牌测试数据准备'):  # 测试用例中的操作步骤
        payload = {
              "brandAttentionCount": 0,
              "brandCity": "string",
              "brandId": 51,
              "brandLogo": "string",
              "brandName": "苹果",
              "createTime": "2022-04-20T06:34:56.874Z",
              "id": "string",
              "memberIcon": "string",
              "memberId": 146,
              "memberNickname": "string"
            }
    with allure.step('2.发起添加关注品牌的请求'):  # 测试用例中的操作步骤
        result = attention.add_attention(payload)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码实际结果
        pytest.assume(status_code == 200)  # 断言状态码



@allure.feature('会员关注品牌')  # 模块名称
@allure.story('查询会员关注品牌列表')  # 测试模块下的功能
@allure.title('会员关注品牌列表')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_show_attention_list(attention):
    with allure.step('1.发起查询会员关注品牌的请求'):  # 测试用例中的操作步骤
        result = attention.get_attention_list(146)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码
    #     data_id = result['body']['code']
    #     pytest.assume(data_id == 200)


@allure.feature('会员关注品牌')  # 模块名称
@allure.story('取消会员关注品牌')  # 测试模块下的功能
@allure.title('取消会员关注品牌')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_delete_attention(attention):
    with allure.step('1.发起取消会员关注品牌的请求'):  # 测试用例中的操作步骤
        result = attention.delete_attention(146,51)
    with allure.step('2.断言'):
        status_code = result['status_code']  # 状态码结果
        pytest.assume(status_code == 200)  # 断言状态码



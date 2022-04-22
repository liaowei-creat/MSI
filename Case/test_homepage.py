"""
文件名:test_homepage.py
作用:首页内容管理接口测试
"""
import pytest
import allure


@allure.feature('首页')
@allure.story('首页内容页信息展示')
@allure.title('首页内容页信息展示_正确数据')
@allure.severity(allure.severity_level.BLOCKER)  # 优先级
def test_home_content(home):
    with allure.step('1.发起请求'):
        result = home.home_content()
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('首页')
@allure.story('获取首页商品分类')
@allure.title('获取首页商品分类_正确数据')
@allure.severity(allure.severity_level.BLOCKER)  # 优先级
def test_product_catelist(home):
    with allure.step('1.发起请求'):
        result = home.product_catelist(1)
        print(result)  # parent_id在pms_product_category表中,参数是0-5,12的数字
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code == 200)
        # 断言data不为空
        data = result['body']['data']
        pytest.assume(data != [])


@allure.feature('首页')
@allure.story('获取首页商品分类')
@allure.title('获取首页商品分类_错误数据')
@allure.severity(allure.severity_level.BLOCKER)  # 优先级
def test_product_catelist(home):
    with allure.step('1.发起请求'):
        result = home.product_catelist(80)
        print(result)  # parent_id在pms_product_category表中,参数是0-5,12的数字
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code == 200)
        # 断言data为空
        data = result['body']['data']
        pytest.assume(data == [])


@allure.feature('首页')
@allure.story('分页获取推荐商品')
@allure.title('分页获取推荐商品_默认数据')
@allure.severity(allure.severity_level.BLOCKER)  # 优先级
def test_recommend_productlist(home):
    with allure.step('1.发起请求'):
        result = home.recommend_productlist()
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('首页')
@allure.story('分页获取推荐商品')
@allure.title('分页获取推荐商品_正确数据')
@allure.severity(allure.severity_level.BLOCKER)  # 优先级
def test_recommend_productlist(home):
    with allure.step('1.发起请求'):
        result = home.recommend_productlist(pageSize=3, pageNum=7)
    with allure.step('2.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code == 200)


@allure.feature('首页')
@allure.story('分类获取专题')
@allure.title('{subject_list_data[comments]}')
@allure.severity(allure.severity_level.BLOCKER)  # 优先级
def test_subject_list(home, subject_list_data):
    """分类获取专题"""
    with allure.step('1.准备测试数据'):
        expected = subject_list_data.pop('expected')
        subject_list_data.pop('comments')
    with allure.step('2.发起请求'):
        result = home.subject_list(subject_list_data)
        print(result)
    with allure.step('3.断言'):
        # 断言http状态码:status_code
        status_code = result['status_code']
        pytest.assume(status_code == 200)
        # 断言开发自检字段:code
        code = result['body']['code']
        pytest.assume(code, expected)

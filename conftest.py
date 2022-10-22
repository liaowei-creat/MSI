import os
import time
import pytest
import yaml
import requests


def pytest_collection_modifyitems(items):
    """
    测试用例收集完成时，将收集到的item的name和nodeid的中文显示
    :return:
    """
    for item in items:
        item.name = item.name.encode("utf-8").decode("unicode_escape")
        item._nodeid = item.nodeid.encode("utf-8").decode("unicode_escape")


@pytest.fixture(scope="session", autouse=True)
def manage_logs(request):
    """Set log file name same as test name"""
    now = time.strftime("%Y-%m-%d %H-%M-%S")
    log_name = 'output/log/' + now + '.logs'

    request.config.pluginmanager.get_plugin("logging-plugin") \
        .set_log_path((log_name))



# @pytest.fixture(scope='session')
# def operate_database():
    # 备份数据库
    # os.system(
    #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-core-qa > c2-core-qa.sql')
    # os.system(
    #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-inventory-qa > c2-inventory-qa.sql')
    # os.system(
    #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-fulfillment-qa > c2-fulfillment-qa.sql')
    # os.system(
    #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-order-qa > c2-order-qa.sql')
    # yield
    # 还原数据库
    # os.system('psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-core-qa < c2-core-qa.sql')
    # os.system(
    #     'psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-inventory-qa < c2-inventory-qa.sql')
    # os.system(
    #     'psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-fulfillment-qa < c2-fulfillment-qa.sql')
    # os.system('psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-order-qa < c2-order-qa.sql')

    # os.system('psql --dbname=postgresql://postgres:password@1.15.46.232:5432/test_data < ./Data/postgres.sql')

#登录获取token
@pytest.fixture(scope='session')
def get_token():
    sign_url = 'https://msi-c2qa-api.fooyo.shop/services/core/v1/users/sign_in'
    req_body = {
        "user": {
            "sign_in_type": "user",
            "email": "huyang@fooyo.sg",
            "phone_number": "19983141609",
            "password": "11111111",
            "token_provider": "ciam",
            "token": "",
            "device_key": ""
        }
    }
    header = {
        'Content-Type': 'application/json'
    }
    r = requests.post(url=sign_url,json=req_body,headers=header)
    # print(r.json())
    access_token = r.json()['authorization']['access_token']

    return access_token

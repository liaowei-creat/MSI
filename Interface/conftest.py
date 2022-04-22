"""

"""

import pytest
from Interface.MemberInterface import MemberInterface
from Interface.CartInterface import CartInterface


@pytest.fixture()
def url():  # 测试地址
    return 'http://139.159.146.104:8083'


@pytest.fixture()
def login(url):  # 测试账号
    """获取会员token"""
    return MemberInterface(url).get_member_token('诸葛亮', '123456')


@pytest.fixture()
def cart(url, login):  # 购物车模块
    return CartInterface(url=url, headers=login)

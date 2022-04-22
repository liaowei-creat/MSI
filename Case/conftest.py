"""

"""
import pytest
from Interface.MemberInterface import MemberInterface
from Interface.ReturnOrderInterface import ReturnOrderInterface
from Utils.OperationData import OperationData


# 1. 添加登录模块fixture
# 实例化登录模块

@pytest.fixture()
def login():
    """
    :return: 返回MemberInterface实例化对象
    """
    return MemberInterface()


# 添加登录测试数据
# 准备测试数据,[{},{},{}]
login_list = OperationData('login.csv').new_dict()


@pytest.fixture(params=login_list)  # 使用params接收测试数据,并进行处理
def login_data(request):
    """
    使用fixture实现参数化
    :param request:
    :return:
    """
    return request.param  # 遍历数据并返回,逐个返回{}


# 添加验证码测试数据
# 准备测试数据,[{},{},{}]
code_list = OperationData('code.csv').new_dict()


@pytest.fixture(params=code_list)  # 使用params接收测试数据,并进行处理
def code_data(request):
    """
    使用fixture实现参数化
    :param request:
    :return:
    """
    return request.param  # 遍历数据并返回,逐个返回{}


# 添加注册测试数据
# 准备测试数据,[{},{},{}]
register_list = OperationData('register.csv').new_dict()


@pytest.fixture(params=register_list)  # 使用params接收测试数据,并进行处理
def register_data(request):
    """
    使用fixture实现参数化
    :param request:
    :return:
    """
    return request.param  # 遍历数据并返回,逐个返回{}


# 添加修改密码测试数据
# 准备测试数据,[{},{},{}]
update_list = OperationData('update.csv').new_dict()


@pytest.fixture(params=update_list)  # 使用params接收测试数据,并进行处理
def update_data(request):
    """
    使用fixture实现参数化
    :param request:
    :return:
    """
    return request.param  # 遍历数据并返回,逐个返回{}


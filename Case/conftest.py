"""

"""
import pytest
from Interface.MemberInterface import MemberInterface
from Utils.OperationData import OperationData
from Interface.CartInterface import Cart
from Interface.HomeInterface import HomeInterface
from Interface.CollectionInterface import CollectonInterface
from Interface.AttentionInterface import AttentionInterface
from Interface.AddressInterface import AddressInterface
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

# 添加购物车模块fixture
# 实例化购物车模块
@pytest.fixture()
def cart():
    """
    :return: 返回Cart实例化对象
    """
    return Cart()


# 添加首页模块fixture
# 实例化首页模块
@pytest.fixture()
def home():
    """返回HomeInterface的实例化对象"""
    return HomeInterface()


# 获取首页列表测试数据
subject_list = OperationData('subject_list.csv').get_data_to_dict()


@pytest.fixture(params=subject_list)
def subject_list_data(request):
    return request.param

# 收货地址模块fixture
# 实例化收货地址模块
@pytest.fixture()
def address():
    """
    :return: 返回AddressInterface实例化对象
    """
    return AddressInterface()

# 用户收藏模块fixture
# 实例化用户收藏模块
@pytest.fixture()
def collection():
    """
    :return: 返回AddressInterface实例化对象
    """
    return CollectonInterface()

# 用户品牌关注模块fixture
# 实例化用户品牌关注模块
@pytest.fixture()
def attention():
    """
    :return: 返回AddressInterface实例化对象
    """
    return AttentionInterface()





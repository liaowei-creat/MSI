"""
文件名: test_return_order.py
作用: 申请退货管理用例
"""
import allure
import pytest
from Interface.MemberInterface import MemberInterface
from Interface.CartInterface import CartInterface
from Interface.ReturnOrderInterface import ReturnOrderInterface
from Interface.AddressInterface import AddressInterface
from Utils.Database import Database
from Utils.GetKeyword import GetKeyword

@allure.feature('退货管理')  # 模块名称
@allure.story('申请退货')  # 测试模块下的功能
@allure.title('申请退货流程')  # 用例标题
@allure.severity(allure.severity_level.BLOCKER)  # 用例优先级
def test_return_order():
    """申请退货流程"""
    # 1. 会员登录
    member = MemberInterface()
    member.headers = MemberInterface().get_member_token({'username': 'qyyo', 'password': '123456'})
    # 2. 查询购买商品的库存,删除当前会员原有的购物车数据和订单数据
    delete_cart_sql = """DELETE FROM oms_cart_item WHERE member_id=146"""  # 清空当前会员的购物车
    delete_order_sql = """DELETE FROM oms_order WHERE member_id=146"""  # 清空当前会员订单
    stock_sql = """SELECT stock FROM pms_sku_stock WHERE id = 98"""  # 查询商品为id=98的商品库存
    select_stock = Database().readone(stock_sql)  # 执行查询库存SQL
    before_stock = GetKeyword.get_keyword(select_stock, 'stock')  # 查询购买之前的商品库存
    Database().write(delete_cart_sql)  # 删除当前会员购物车数据
    Database().write(delete_order_sql)  # 删除当前会员订单数据
    # 3. 添加购物车
    cart_payload = {
        "createDate": "2022-04-19T01:09:17.907Z",
        "deleteStatus": 0,
        "id": 0,
        "memberId": 0,
        "memberNickname": "string",
        "modifyDate": "2022-04-19T01:09:17.908Z",
        "price": 2699,
        "productAttr": '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]',
        "productBrand": "小米",
        "productCategoryId": 19,
        "productId": 27,
        "productName": "小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待",
        "productPic": "http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg",
        "productSkuCode": "201808270027001",
        "productSkuId": 98,
        "productSn": "7437788",
        "productSubTitle": "骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购",
        "quantity": 1  # 购买数量
    }
    cart = CartInterface()
    cart_result = cart.add_cart(cart_payload)  # 执行添加购物车接口
    cart_code = GetKeyword.get_keyword(cart_result, 'code')  # 获取添加购物车接口返回开发自检字段
    pytest.assume(cart_code == 200)  # 断言开发自检字段 code

    cart_sql = """SELECT delete_status FROM oms_cart_item WHERE member_id=146 ORDER BY create_date DESC"""
    delete_status = Database().readone(cart_sql)
    pytest.assume(GetKeyword.get_keyword(delete_status, 'delete_status') == 0)  # 断言数据表中的记录 delete_status=0

    # 4. 添加收获地址
    address = AddressInterface()
    address_payload = {
        "city": "成都",
        "defaultStatus": 0,
        "detailAddress": "武侯祠",
        "id": 0,
        "memberId": 0,  # 通过token登录获取
        "name": "诸葛亮",
        "phoneNumber": "13822223333",
        "postCode": "610000",
        "province": "四川省",
        "region": "武侯区"
    }
    address_result = address.add_address(address_payload)
    cart_code = GetKeyword.get_keyword(address_result, 'code')  # 获取添加购物车接口返回开发自检字段
    pytest.assume(cart_code == 200)  # 断言开发自检字段 code

    # 5.申请退货
    return_order = ReturnOrderInterface()
    payload = {
        "description": "string",
        "memberUsername": "string",
        "orderId": 312,
        "orderSn": "string",
        "productAttr": "string",
        "productBrand": "string",
        "productCount": 0,
        "productId": 0,
        "productName": "string",
        "productPic": "string",
        "productPrice": 0,
        "productRealPrice": 0,
        "proofPics": "string",
        "reason": "string",
        "returnName": "string",
        "returnPhone": "string"
    }
    order_apply = return_order.return_apply(payload)  # 执行申请退货接口
    order_code = GetKeyword.get_keyword(order_apply, 'code')  # 获取申请退货接口返回开发自检字段
    pytest.assume(order_code == 200)  # 断言开发自检字段 code

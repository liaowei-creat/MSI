"""
文件名: OperationData.py
作用:
    1.读取Data文件夹中的测试数据,Excel或CSV格式
    2.将Excel表或csv文件读取数据后,读取成什么样的格式
        - 列表嵌套列表
        - 列表嵌套字典
    3.使用pandas库
    4.csv文件创建
        1.Excel表格 另存为 csv格式
        2.使用记事本将csv文件打开,将编码格式转为UTF-8

"""
import json
import numpy
import pandas
import os


class OperationData:
    def __init__(self,file_name: str):
        base_path = os.path.dirname(os.path.dirname(__file__))  # 相当于cd .. 返回上一层文件夹
        data_path = os.path.join(base_path, 'Data')
        file_path = os.path.join(data_path, file_name)
        # 判断文件格式
        if file_name.endswith('xls'):  #
            self.table = pandas.read_excel(file_path,keep_default_na=False)  # 读Excel表
        elif file_name.endswith('csv'):
            self.table = pandas.read_csv(file_path,keep_default_na=False)  # 读csv文件
        else:
            print('请选择符合条件的文件,例如csv或xls')
            self.table = None

    def get_data_to_list(self):
        """
        将文件内容读取成列表嵌套列表格式
        :return:
        """
        if self.table is not None:
            return self.table.values.tolist()
        else:
            return None

    def get_data_to_dict(self):
        """
        将文件内容读取成为列表嵌套字典格式
        :return:
        """
        if self.table is not None:
            return [self.table.loc[i].to_dict() for i in self.table.index.values]
        else:
            return None

    def new_dict(self):
        """新列表嵌套字典"""
        dict_str = json.dumps(self.get_data_to_dict(), cls=NpEncoder)  # 将int64字段,转为int
        return json.loads(dict_str)

    def new_list(self):
        """新列表嵌套列表"""
        list_str = json.dumps(self.get_data_to_list(),cls=NpEncoder)
        return json.loads(list_str)


# 处理pandas读取CSV/excel中整数数据类型
class NpEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, numpy.integer):  # numpy.integer 是int64
            return int(obj)
        elif isinstance(obj, numpy.floating):
            return float(obj)
        elif isinstance(obj, numpy.ndarray):
            return obj.tolist()
        else:
            return super(NpEncoder, self).default(obj)


if __name__ == '__main__':
    oper = OperationData('register.csv')
    print(oper.new_list())
    oper.new_dict()
    print(oper)

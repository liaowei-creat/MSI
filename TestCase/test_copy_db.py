import os



class TestCopyDb:
    def test_db(self):
        pass
        # # 备份数据库
        # os.system(
        #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-core-qa > c2-core-qa.sql')
        # os.system(
        #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-inventory-qa > c2-inventory-qa.sql')
        # os.system(
        #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-fulfillment-qa > c2-fulfillment-qa.sql')
        # os.system(
        #     'pg_dump -c --dbname=postgresql://postgres:softgrid@13.212.152.250:31879/c2-order-qa > c2-order-qa.sql')
        # # 还原数据库
        # os.system('psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-core-qa < c2-core-qa.sql')
        # os.system('psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-inventory-qa < c2-inventory-qa.sql')
        # os.system('psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-fulfillment-qa < c2-fulfillment-qa.sql')
        # os.system('psql --dbname=postgresql://postgres:5fJ9Y12Dsx@20.212.115.131:5432/c2-order-qa < c2-order-qa.sql')

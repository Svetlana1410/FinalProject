# from flask import g

from leasingco.db import get_db
from leasingco.models import Product


class StorageModel:

    def __init__(self):
        self.db = get_db()
        self.cursor = self.db.cursor()

    def add_product(self,name,adress,phone):
        select = "INSERT INTO Manufacturer (Name,Adress,Phone_number) VALUES ('{}', '{}', '{}')".format(name, adress, phone)
        self.cursor.execute(select)
        # Фиксирует изменения в таблице БД
        self.conn.commit()


    def add_seller(self,name,phone):
        select = "INSERT INTO Seller (Name,Phone_number) VALUES ('{}','{}')".format(name, phone)
        self.cursor.execute(select)
        self.conn.commit()
from datetime import date

class Order():
    def __init__(self, code_order: int, sale_date: date, delivered: bool, id_client: int, id_employee: int):
        self.code_order = code_order
        self.sale_date = sale_date
        self.delivered = delivered
        self.id_client = id_client
        self.id_employee = id_employee
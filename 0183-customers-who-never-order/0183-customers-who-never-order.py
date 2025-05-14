import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    res = pd.merge(customers, orders, left_on='id', right_on='customerId', how='left', suffixes=('_customers', '_orders'))
    return res[res['customerId'].isna()][['name']].rename(columns={'name': 'Customers'})
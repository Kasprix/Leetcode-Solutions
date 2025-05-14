import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    # Really like this way of doing it
    filtered_customers = customers[~customers['id'].isin(orders['customerId'])]
    result = filtered_customers[['name']].rename(columns={'name': 'Customers'})
    return result
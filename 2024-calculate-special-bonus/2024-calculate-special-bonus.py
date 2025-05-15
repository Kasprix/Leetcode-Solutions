import pandas as pd

def calculate_special_bonus(employees: pd.DataFrame) -> pd.DataFrame:
    employees['bonus'] = [x if emp_id % 2 == 1 and name[0] != 'M' else 0 for x, emp_id, name in zip(employees['salary'], employees['employee_id'], employees['name'])]

    return employees[['employee_id', 'bonus']].sort_values(by = 'employee_id', ascending = True)
import pandas as pd

def pivotTable(weather: pd.DataFrame) -> pd.DataFrame:
    newWeather = weather.pivot(index = 'month', columns = 'city', values = 'temperature')

    return newWeather
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
import time
import csv


current_url = 'https://www.timeanddate.com/weather/usa/san-francisco/historic?month=12&year=2021'

years_months = ['2020-04', '2020-05', '2020-06', '2020-07', '2020-08', '2020-09', '2020-10', '2020-11', '2020-12',
                '2021-01', '2021-02', '2021-03', '2021-04', '2021-05', '2021-06', '2021-07', '2021-08', '2021-09',
                '2021-10', '2021-11', '2021-12', '2022-01', '2022-02', '2022-03', '2022-04', '2022-05', '2022-06',
                '2022-07', '2022-08', '2022-09', '2022-10', '2022-11', '2022-12', '2023-01', '2023-02', '2023-03',
                '2023-04', '2023-05', '2023-06', '2023-07', '2023-08', '2023-09']
days_31 = ['2020-05', '2020-07', '2020-08', '2020-10', '2020-12',
           '2021-01', '2021-03', '2021-05', '2021-07', '2021-08',
           '2021-10', '2021-12', '2022-01', '2022-03', '2022-05',
           '2022-07', '2022-08', '2022-10', '2022-12', '2023-01', '2023-03',
           '2023-05', '2023-07', '2023-08']
days_30 = ['2020-04',  '2020-06',  '2020-09', '2020-11',
           '2021-04', '2021-06', '2021-09',
           '2021-11', '2022-04', '2022-06',
           '2022-09', '2022-11', 
           '2023-04',  '2023-06', '2023-09']
days_28 = ['2021-02', '2022-02', '2023-02']

data_frame = []

driver = webdriver.Chrome()

for year_month in years_months:
    driver.get(current_url)
    month_dropdown = driver.find_element(By.ID, 'month')
    month_select = Select(month_dropdown)
    month_select.select_by_value(year_month)

    current_url = driver.current_url

    driver.get(current_url)

    if year_month in days_31:
        days_amount = 32
    elif year_month in days_30:
        days_amount = 31
    elif year_month in days_28:
        days_amount = 29

    for i in range(1, days_amount):

        formatted_number = f'{i:02}'
        date = year_month.replace("-","") + formatted_number

        day_dropdown = driver.find_element(By.ID, 'wt-his-select')
        day_select = Select(day_dropdown)
        day_select.select_by_value(date)

        time.sleep(5)

        current_html_text = driver.page_source
        soup = BeautifulSoup(current_html_text, 'html.parser')

        grids = soup.find_all("table", id = "wt-his")

        for grid in grids:
            body = grid.find('tbody')

        rows = body.find_all('tr')

        for row in rows:
            time_of_day = row.find('th').text[:8]
            condition = row.find("td", class_ = "small").text.rstrip('.')
            temp = row.find_all("td")[1].text
            wind = row.find('td', class_='sep').text.rstrip('.')
            wind_direction = row.find_all('td')[4].find('span').get('title')
            humidity = row.find_all('td')[5].text
            barometer = row.find_all('td')[6].text
            visibility = row.find_all('td')[7].text

            data_frame.append({'Date': date, 'Time': time_of_day, 'Condition': condition, 'Temperature': temp, 'Wind': wind, 'Wind Direction' : wind_direction, 'Humidity' : humidity, 'Barometer' : barometer, 'Visibility' : visibility})

    current_url = driver.current_url

for row in data_frame:
    row['Temperature'] = row['Temperature'].replace('\xa0', ' ')
    row['Visibility'] = row['Visibility'].replace('\xa0', ' ')

csv_header = ['Date', 'Time', 'Condition', 'Temperature', 'Wind', 'Wind Direction', 'Humidity', 'Barometer', 'Visibility']

csv_file_path = 'weather_data_official1.csv'
with open(csv_file_path, 'w', newline='') as csv_file:
    writer = csv.DictWriter(csv_file, fieldnames=csv_header)
    writer.writeheader()
    writer.writerows(data_frame)

print(f'Data has been successfully written to {csv_file_path}.')







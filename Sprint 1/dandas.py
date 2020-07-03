import pandas as pd

data = {'Chips': ['Simba','Lays',''],        
        'Cooldrinks': ['Coke', 'Fanta', ''],
        'Chocolates': ['Cadbury', 'Tex', ''],
        'Pies': ['Pepper Steak', 'Chicken', ''],
        'Fruit': ['Pear', 'Apple', 'Orange'],
        'Cupcakes': ['Vanilla', 'Chocolate', ''],
        'Veggies': ['Spinich', 'Cabbage', '']}
df = pd.DataFrame(data, index = [1,2,3])

df

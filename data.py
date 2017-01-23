# Datasets - http://machinelearningmastery.com/time-series-datasets-for-machine-learning/ 
import pandas as pd
import matplotlib.pyplot as plt

# shampoo
shampoo = pd.read_csv('sales-of-shampoo-over-a-three-ye.csv', 
                      parse_dates = ['Month'])


# occupancy - binary classificatoin time series (a typical)
# http://archive.ics.uci.edu/ml/datasets/Occupancy+Detection+ (prob most interesting)
occupancy = pd.read_csv('occupancy_data/datatraining.txt', parse_dates = True)
occupancy.index = occupancy['date']
del occupancy['date']



head -5 titanic.csv
# Experiment with task 3
#awk -F, '{print $0} NR==5{exit}' OFS=', ' titanic.csv

import sys
import numpy as np

print("My Script Name:", sys.argv[0]) 
print("My Argument:", sys.argv[1])
arg1 = sys.argv[1]

# Read in dataset
sex, height, weight = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, unpack = True, encoding=None, dtype=None)
new_array = np.array([sex, height, weight])
# Subset array
to_subset = new_array[0,:]==arg1
subset_array = new_array[:,to_subset]
# Print out number of Females in data set and export subset
print(str(sum(to_subset)) + " are " + arg1)
np.savetxt("data/height-weight_"+arg1+".csv", subset_array, delimiter=',', fmt='%s')

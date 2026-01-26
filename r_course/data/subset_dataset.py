
import numpy as np

# Read in dataset
sex, height, weight = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, unpack = True, encoding=None, dtype=None)
new_array = np.array([sex, height, weight])
# Subset array
to_subset = new_array[0,:]=="Female"
subset_array = new_array[:,to_subset]
# Print out number of Females in data set and export subset
print(str(sum(to_subset)) + " are female")
np.savetxt("data/height-weight_female.csv", subset_array, delimiter=',', fmt='%s')

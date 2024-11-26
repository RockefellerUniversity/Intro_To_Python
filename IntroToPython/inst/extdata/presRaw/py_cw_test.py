import matplotlib.pyplot as plt
import numpy as np

sex, height, weight = np.genfromtxt('IntroToPython/inst/extdata/data/height-weight.csv', unpack = True, delimiter = ",", skip_header=True, dtype=None, encoding='UTF-8')

height_m = []
height_f = []
weight_m = []
weight_f = []

for i in range(len(sex)):
    if sex[i] == 'Male':
        height_m.append(height[i])
        weight_m.append(weight[i])
    else:
        height_f.append(height[i])
        weight_f.append(weight[i])

# Generate figure and axes
fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
# Plot data on ax1
ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, marker = 's')
ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, marker = 'o')
ax1.set_title("Height vs Weight")
ax1.set_xlabel("Weight (kg)")
ax1.set_ylabel("Height (cm)")
plt.show()


import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator

plt.rcParams["font.family"] = "Times New Roman"

x = np.linspace(0, 10)
y = 0.5*x  # choosing '3' as the slope

fig, ax = plt.subplots()
ax.plot(x, y)

ax.xaxis.set_major_locator(MultipleLocator(2))
ax.xaxis.set_minor_locator(MultipleLocator(1))
ax.yaxis.set_major_locator(MultipleLocator(2))
ax.yaxis.set_minor_locator(MultipleLocator(1))

plt.grid(b=True, which='major', color='k', linestyle='-', lw=0.2)
plt.grid(b=True, which='minor', color='k', linestyle='--', lw=0.2)

# plotting the line
plt.plot(x, y, color='r')

# plotting the line parallel to x-axis
plt.plot(np.linspace(2, 4, 100), 1*np.ones(100))
plt.plot(np.linspace(6, 8, 100), 3*np.ones(100))
# plotting the line parallel to y-axis
plt.plot(4*np.ones(100), np.linspace(1, 2, 100))
plt.plot(8*np.ones(100), np.linspace(3, 4, 100))

# highlighting the points of intersection
plt.scatter([2, 4], [1, 2])
plt.scatter([6, 8], [3, 4])


plt.legend()
plt.xlabel('X')
plt.ylabel('Y')
plt.axis('equal')
plt.title('Calculate the slopes of the two parts of the line.')
plt.show()

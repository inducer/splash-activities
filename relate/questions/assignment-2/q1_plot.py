import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator
plt.rcParams["font.family"] = "Times New Roman"

x = np.linspace(0, 33)
y = 0.0625*x**2 + 1  # choosing '3' as the slope

fig, ax = plt.subplots()
ax.plot(x, y)

ax.xaxis.set_major_locator(MultipleLocator(2))
ax.yaxis.set_major_locator(MultipleLocator(2))

plt.grid(b=True, which='major', color='k', linestyle='-', lw=0.2)
plt.grid(b=True, which='minor', color='k', linestyle='--', lw=0.2)

# plotting the line
plt.plot(x, y, color='r')

# setting the x1, x2
x1, y1 = 4, 0.0625*4**2+1
x2, y2 = 32, 0.0625*32**2+1

# plotting the line parallel to x-axis
plt.plot(np.linspace(x1, x2, 100), y1*np.ones(100))
# plotting the line parallel to y-axis
plt.plot(x2*np.ones(100), np.linspace(y1, y2, 100))

# highlighting the points of intersection
plt.scatter([x1, x2], [y1, y2])


plt.legend()
plt.xlabel('X')
plt.ylabel('Y')
plt.axis('equal')
plt.title('Slope of a bendy curve.')
plt.show()

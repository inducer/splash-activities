import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import (MultipleLocator, FormatStrFormatter,
                               AutoMinorLocator)
plt.rcParams["font.family"] = "Times New Roman"

majorLocator = MultipleLocator(2)
minorLocator = MultipleLocator(1)

x = np.linspace(0, 10)
y = 3*x  # choosing '3' as the slope

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
plt.plot(np.linspace(2, 6, 100), 6*np.ones(100))
# plotting the line parallel to y-axis
plt.plot(6*np.ones(100), np.linspace(6, 18, 100))

# highlighting the points of intersection
plt.scatter([2, 6], [6, 18])


plt.legend()
plt.xlabel('X')
plt.ylabel('Y')
plt.axis('equal')
plt.title('A line with slope ???')
plt.show()
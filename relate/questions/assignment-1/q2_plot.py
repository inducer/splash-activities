import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator
plt.rcParams["font.family"] = "Times New Roman"

x = np.linspace(42, 52)
slope = 1.72
y = slope*x + 17  # choosing an intercept of 17

fig, ax = plt.subplots()
ax.plot(x, y)

ax.xaxis.set_major_locator(MultipleLocator(1))
ax.xaxis.set_minor_locator(MultipleLocator(0.1))
ax.yaxis.set_major_locator(MultipleLocator(1))
ax.yaxis.set_minor_locator(MultipleLocator(0.1))

plt.grid(b=True, which='major', color='k', linestyle='-', lw=0.2)
plt.grid(b=True, which='minor', color='k', linestyle='--', lw=0.1)

# plotting the line
plt.plot(x, y, color='r')

plt.legend()
plt.xlabel('X')
plt.ylabel('Y')
plt.axis('equal')
plt.title('A line with slope ???')
plt.show()

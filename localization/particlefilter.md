# Particle Filter

1. Start with n particles scattered randomly in the region where position is believed to be. This is critical, as any particles in ultra-low probability areas do not contribute to an accurate solution
1. Each particle has a location and a probability. The probability is computed using the expected analytical distribution determining how likely it is that the robot is there. For example, if the GPS tells the robot that it is at $(x,y)$ but the GPS has a known standard deviation of $1m$ then with $95%$ confidence we can state that the location is $+/- 3m$ in each direction.

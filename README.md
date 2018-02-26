# G-Acc-FlynnUhlLiebow
# Names:
Kevin Flynn, Jake Liebow, Christoph Uhl

# Goal:
Our goal was to help people paralyzed from the waist down and only one functioning arm, to be able to transport themselves with the parts of their body that they can use. I.e, make transport a physical activity, in order to feel more reward for moving from place to place.

# How we approached this problem:
We thought about which sensors would help in the best way possible, with the least disturbance possible. We decided to use a singular micro:bit which the user can strap around their wrist, when the user tilts their wrist, the micro:bit will pick up on that and send the signal to move to the machine which transports the user.
We received all the continuous signals the micro:bit sends, and then sent wekinator only the continous x axis data via OSC messages, to pick up on the rotate left/right motion of the wrist.
For our ML modle we used linear regression. Our output was a continous process and testing between neural network, linear, and progression all three worked about the same. Linear regression was slightly more accurate so we decided to go with this.

# Ideas about how others might improve upon our work
Others might also decide to use a micro:bit in order to pick up on movements, they could use our code as a foundation to work off of. Others might decide it's agreat idea but it would get exhausting for the user, so to counter that, they could make the code more sensitive to motion the longer the device is active, furthermore one could include a sort of 'momentum' function, such that the more continuous effort the user puts in, the fast the vehicle will go.

# Link to the demo video
https://youtu.be/DjISsn7UEus


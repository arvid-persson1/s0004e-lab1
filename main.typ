// #set ref(supplement: it => if it.func() == math.equation { })

= Exercise 1

Three periods of the signal with frequency $f_1 = 3$ are to be rendered. Choose
$t_l = 0$ as the left bound. Then, the right bound $t_r = t_l + 3/f_1 = 1$.

#figure(
    image("images/e1.svg"),
    caption: "Two continous sinusoidal signals",
)

= Exercise 2

The three signals are illustrated below.

#figure(
    image("images/e2.svg"),
    caption: "Three continous signals",
)

= Exercise 3

The same three signals sampled with $T_s = 1/5$ are illustrated below.

#figure(
    image("images/e3.svg"),
    caption: "Three discrete signals",
)

= Exercise 4

Define System 1:

#math.equation(
    block: true,
    $y[n] = (x[n] + x[n-1] + x[n-2] + x[n-3] + x[n-4] + x[n-5] + x[n-6] + x[n-7])/8$
)

As the system is LTI, the impulse response $h[n]$ is defined as the output
$y[n]$ when the input $x[n] = delta[n]$:

#math.equation(
    block: true,
    $
    h[n] &= (delta[n] + delta[n-1] + delta[n-2] + delta[n-3] + delta[n-4] + delta[n-5] + delta[n-6] + delta[n-7])/8 \
         &= cases(1/8 "if" 0 lt.eq n lt.eq 7, 0 "otherwise")
    $
)

= Exercise 5

Below the input signal and the output when fed through System 1 are illustrated.

#figure(
    image("images/e5.svg"),
    caption: "Input and output signals",
)

= Exercise 6

Below is the same signal, but with the time delayed by 2 units. Note that the
shape of both graphs are identical, but the magnitudes are different. This is
due to the input signal being a geometric sequence.

#figure(
    image("images/e6.svg"),
    caption: "Input and output signals, delayed",
)

= Exercise 7

While the original impulse response acts as a moving average, its negation
acts as a "moving dampener", in this case mostly acting to weaken the signal.
The same input and its output when fed through this new system are illustrated
below.

#figure(
    image("images/e7.svg"),
    caption: "Input and output signals, response altered",
)

= Exercise 8

While the input clearly appears to be a sum of sinusoids, the output looks like
a single sinusoid. In the input, two frequencies are present--- $pi/4$ and
$pi/8$. As our filter is a moving average, higher frequencies are attenuated
while lower frequencies are mostly untouched. Hence it makes sense that the
output resembles a sinusoid with frequency $pi/8$. Below are shown the input
and output signals, as well as an approximation showing that this model is
almost, but not entirely, correct. Phase and amplitude have been determined
analytically (choose $sin$ such that the phase $phi = 0$; the amplitude is
given by the somewhat unwieldy expression
$A = (sqrt(2-sqrt(2)) + 2sqrt(2+sqrt(2+sqrt(2)))) / (2pi) approx 0.7462$).
The error, of course, is due to the $pi/4$ frequency being attenuated but not
eliminated.

#figure(
    image("images/e8.svg"),
    caption: "Input and output signals, response altered",
)

= Exercise 9

The sound when fed through the filter could be described as muffled, which
makes sense intuitively by looking at the graphs of the other signals that
have been fed through the filter. An "averaging" or a "smoothing" is a type
of "muffling".

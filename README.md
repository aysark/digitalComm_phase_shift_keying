## Phase Shift Keying

Bandpass modulation allows us to transform a signal into a more convenient frequency band. Namely, to be able to design relatively small antennas which are directly proportional to the size of our signal frequency. In this lab, we designed a Phase Shift Keying (PSK) modulator to represent out bandpass modulation system. We also designed a demodulator for it to detect the received symbols.

**Results & Analysis**

Problem 1

The constant envelope PSK signal waveforms were generated for M=8. The amplitude of the signals can reach up to sqrt(2). We can see the graphs show no differences except in their phases, hence PSK.

Problem 5

Here we generated a 1000 random numbers to represent our symbols; we then divided them into 4 intervals. Whereby each interval corresponds to a symbol a0, a1, a2, a3. Below is a stem plot of 100 random symbols generated in accordance to the interval divisions.

Problem 6

This was the same as previously done in Problem 1, except this is for M=4. Below we see each signal plot.

Problem 7

Using a 5-symbol vector from problem 5 where each symbol been divided into 4 intervals, we replace each one with a signal plot from problem 6 to generate a final whole plot.

Problem 8

Below we see what received signals are really like, by adding AWGN with No = 2. Here we plot the original signal (top) and the AWGN affected signal (bottom).

Problem 9

In this problem, we first generate random values as done previously and we then use problem 5 to divide them. Next, we replace these values with actual signals as in problem 7. We then add noise to them as in problem 8. Next we correlate them using:

X=∫0Trt∗ψ1tdt,Y=∫0Trt∗ψ2tdt 

Next we calculate the phase of each signal using arctan2. Finally, we using problem 4 to decide which signal it was. This was done a number of times and _the symbol error rate Pe was averaged to be 0.0005925 for PSD No=8. _

Problem 10

Below we see the symbol error rate Pe versus Eb/No ratio, for when No = 4, 8, 16, 32. We can see that the symbol error rate increases substantially as noise increases.

Conclusion

We have successfully designed a PSK modulator and demodulator and have modeled what the signal looks like when AWGN is introduced. We have also shown that noise can be a substantial enabler to the symbol error rate.

This code is a modified version of CLASS to incorporate FIMP DM (freebly interacting massive particle DM).

I implement warm dark matter phase-space (momentum) distribution created by freeze-in processes, whose analytic expression is derived in [arXiv:1907.04558](https://arxiv.org/abs/1907.04558).

For the original CLASS code, see http://class-code.net/ and https://github.com/lesgourg/class_public.

### WDM phase space distribution in CLASS

The DM phase space distribution f(q) is implemented in the function ```int background_ncdm_distribution``` of ```background.c```.

There ```f0``` represents the distribution f(q), and one can specify parameters for f(q) by ```param```.

In ```ini``` card,```ncdm_psd_parameters``` is used for ```param```.

### General remarks

The overall yield of DM is automatically calculated by CLASS, so we do not take care of the overall coefficients. 

### FIMP distribution

Different distribution is specified by ```param[0]``` (the first element of ```ncdm_psd_parameters``` in ```ini``` card).

First, I implement the distribution of fermionic DM produced by 2-body decay and scattering:

- ```param[0]==3```: Analytic formula of FIMP produced by 2-body decay. ```param[1] = mDM/M``` where ```M``` is a mass of mother particle.

- ```param[0]==4```: Analytic formula of FIMP produced by 2-body decay and scattering. ```param[1] = mDM/M```. ```param[2]``` denotes the yukawa coupling between DM and other plasma particles, see [arXiv:1907.04558](https://arxiv.org/abs/1907.04558).


I also implement simple power-law + exponential distribution with a few parameters.

- ```param[0]==1```: q^2*f(q) = q^param[1]*exp(-param[2]*q).

- ```param[0]==2```: q^2*f(q) = param[1]*q^param[2]*exp(-param[3]*q) + param[4]*q^param[5]*exp(-param[6]*q). 

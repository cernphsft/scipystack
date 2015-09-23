
# Analogous to ipython/scipystack, based on CC7.

FROM cernphsft/notebook

MAINTAINER Enric Tejedor Saavedra <enric.tejedor.saavedra@cern.ch>

# Install the SciPy stack (only for Python 2)
RUN yum -y install \
    numpy \
    scipy \
    python-matplotlib \
    python-pandas

RUN pip install sympy

## Extremely basic test of install
RUN python2 -c "import numpy, scipy, matplotlib, pandas, sympy"


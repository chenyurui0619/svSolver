rm -Rf REPLACEME_SV_TOP_BLD_DIR_NUMPY

cp -Rf REPLACEME_SV_TOP_SRC_DIR_NUMPY REPLACEME_SV_TOP_BLD_DIR_NUMPY

# pip needs python env vars
export PYTHONHOME=REPLACEME_SV_TOP_BIN_DIR_PYTHON
export PYTHONPATH=REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/python2.7/lib-dynload:REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib:REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/python2.7:REPLACEME_SV_TOP_BIN_DIR_PYTHON/lib/python2.7/site-packages

REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_EXECUTABLE REPLACEME_SV_TOPLEVEL_SRCDIR/BuildHelpers/Originals/python/get-pip.py
REPLACEME_SV_TOP_BIN_DIR_PYTHON/bin/pip install Cython --install-option="--no-cython-compile"

export BLAS=None
export LAPACK=None
export ATLAS=None

REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_EXECUTABLE REPLACEME_SV_TOP_BLD_DIR_NUMPY/setup.py build
REPLACEME_SV_TOP_BIN_DIR_PYTHON/REPLACEME_SV_PYTHON_EXECUTABLE REPLACEME_SV_TOP_BLD_DIR_NUMPY/setup.py install --prefix REPLACEME_SV_TOP_BIN_DIR_PYTHON --old-and-unmanageable



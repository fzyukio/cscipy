#!/usr/bin/env bash
rm cscipy/distance.cpp cscipy/*.so;
pip uninstall -y "cscipy>=0.0.0"
python setup.py clean;
python setup.py build_ext --inplace;
python tests/example.py
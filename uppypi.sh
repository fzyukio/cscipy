#!/usr/bin/env bash
rm -rf cscipy.egg-info
rm -rf dist/*
python setup.py sdist
twine upload dist/*

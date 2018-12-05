#!/usr/bin/env bash

if [ -e .venv ]; then
    source .venv/bin/activate
  else
    virtualenv --python=`which python` .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    pip install -r requirements-dev.txt
  fi

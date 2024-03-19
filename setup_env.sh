#!/usr/bin/bash
set -e

python3.8 -m venv --copies venv
source venv/bin/activate
pip3 install wheel
pip3 install -r requirements.txt
pip3 install skggm@git+https://github.com/abelowska/skggm@mah/bump-sklearn-comp
python -m ipykernel install --user --name=skggmtest

# pip install pre-commit
# pre-commit install
deactivate
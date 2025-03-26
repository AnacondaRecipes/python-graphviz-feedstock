#!/bin/bash
set -euo pipefail

# Sanity check: make sure 'graphviz' can be imported before proceeding
python -c "import graphviz"

pip check
pytest tests -v
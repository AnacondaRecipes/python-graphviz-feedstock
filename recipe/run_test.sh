#!/bin/bash
set -euo pipefail

pip check
pytest tests -v
#!/bin/bash

set -e

[ "${INPUT_REQUIREMENTS}" ] && {
    echo "Installing requirements..."
    pip install $INPUT_REQUIREMENTS
};

eval "$INPUT_RUN"

echo "Done."

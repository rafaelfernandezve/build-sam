#!/bin/bash

set -u

function main() {

    cd ${INPUT_WORKSPACE:-.}

    echo "Run AWS SAM build for project"
    set -o pipefail

    sam build -b ${GITHUB_WORKSPACE:.}/dist ${INPUT_PARAMS}

    exitCode=${?}

    set +o pipefail
    echo "status=${exitCode}" >> $GITHUB_OUTPUT

    if [ "${exitCode}" != "0" ]; then
        echo "AWS SAM build has failed. See above console output for more details."
        exit 1  
    fi
}

main

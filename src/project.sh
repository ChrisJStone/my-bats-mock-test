#!/bin/bash

get_signal_level() {
    # cell_mgmt signal
    # Ocassionally the signal is strong, but without 4G level
    # i.e. none Level 3 (Fair)
    signal_level=$(cell_mgmt signal)
    # signal_level=$1
    _4G_level=$(echo "$signal_level" | awk '{print $1};')
    if [[ $_4G_level == "none" ]]; then
        echo "nosignal"
    else
        echo $(echo "$signal_level" | awk '{print tolower($4)}' | tr -d '()' | tr -d '[:space:]()';)
    fi
}

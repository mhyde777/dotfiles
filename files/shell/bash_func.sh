
# Diesel Deploy Script
alias diesel-sync=mordor-sync
function mordor-sync {
    if [[ $# != 1 || "$1" = "-h" || "$1" = "--help" ]]
    then
        echo "Usage: mordor-sync <IP_ADDRESS>"
        return 1
    fi

    IP="$1"
    MORDOR="$HOME/Documents/code/mordor/"
	ssh $IP mount / -o remount,rw
	rsync -ai --include "*/" --exclude ".mypy_cache/" --exclude "__pycache__/" \
        --include "*.py" --exclude "*" \
        "$MORDOR/python/lib/diesel/" "$IP:/usr/lib/python3.10/site-packages/diesel/"
    rsync -ai --include "*/" --exclude ".mypy_cache/" --exclude "__pycache__/" \
        --exclude "/data/" --exclude "/apps/" --include "*.py" --exclude "*" \
        "$MORDOR/python/lib/formlabs/" "$IP:/usr/lib/python3.10/site-packages/formlabs/"

    rsync -ai --include "*/" --exclude ".mypy_cache/" --exclude "__pycache__/" \
        --exclude "/data/" --exclude "/apps/" \
        "$MORDOR/python/lib/formlabs/" "$IP:/usr/lib/python3.10/site-packages/formlabs/"

    rsync -ai --include "*/" --exclude ".mypy_cache/" --exclude "__pycache__/" \
        --include "*.py" --exclude "*" \
        "$MORDOR/python/apps/diesel/" "$IP:/usr/lib/python3.10/site-packages/formlabs/apps/diesel/"
    rsync -ai --include "*/" --include "*.json" --exclude "*" \
        "$MORDOR/jsonschema/diesel/" "$IP:/etc/formlabs/jsonschema/diesel/"
    rsync -ai --include "*/" --include "*.json" --exclude "*" \
        "$MORDOR/jsonschema/formlabs/" "$IP:/etc/formlabs/jsonschema/formlabs/"
    rsync -ai --include "*/" --include "*.json" --exclude "*" \
        "$MORDOR/lib/Common/Common/share/defaults/Diesel/Settings/" "$IP:/etc/formlabs/"

    rsync -ai --include "*/" --include "*.py" --exclude "*" \
        "$MORDOR/python/lib/protobuf" "$IP:/usr/lib/python3.10/site-packages/"
}


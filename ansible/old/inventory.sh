#!/bin/bash
#yc compute instances list | tail -n +4 | head -n -2 | awk -F '|' '{print "["$3"]\n" $3 "-server" "%ansible_host="$6}' | tr -d '[:blank:]' | sed 's/%/ /g'  | sed 's/reddit-//g' > inventory
#ansible-inventory -i inventory --list > inventory.json

 if [[ $1 == "--list" ]]; then

app=51.250.67.79
db=51.250.94.38

    cat <<EOT
{
    "_meta": {
        "hostvars": {}
    },
    "app": {
        "hosts": ["${app}"]
    },
    "db": {
        "hosts": ["${db}"]
    }
}
EOT

elif [[ $1 == "--host" ]]; then
    echo '{"_meta": {"hostvars": {}}}' | jq -M
else
    echo '{}'
fi

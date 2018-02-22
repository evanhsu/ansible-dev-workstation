#! /bin/bash
SHORTOPTS="t:"
LONGOPTS="tags:"
ARGS=$(getopt -s bash --options ${SHORTOPTS} --longoptions ${LONGOPTS} -- "$@" )
eval set -- ${ARGS}

while true; do
    case ${1} in
        -t | --tags)
            shift
            TAGS="$1"
            shift
            ;;
        -- )
            shift
            break
            ;;
        * )
            shift
            break
            ;;
    esac
done

if [[ -n $TAGS ]]; then
    ansible-playbook -i inventory main.yml --ask-become-pass --tags "$TAGS"
else
    ansible-playbook -i inventory main.yml --ask-become-pass
fi


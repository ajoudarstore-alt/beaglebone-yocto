#!/bin/bash

#you should test the number of argument
if [ $# -ne 2 ]; then
    echo "Usage: $0 checkout|shell|build <path/to/yml>"
    exit 1
fi

#prepare yocto venv
VENEV_DIR="yocto-venv"
do_prepare_env(){

    if[-d "${VENV_DIR}" ]; then
        #Make sur that it is actually  python virtual environement if exite i mean
        #if it is not, then fail with error message
        exit 1
    else
        python3 -m venv "${VENEV_DIR}"
    fi 

    #source / activate the yocto venv
    echo "[+] sourcing the python ven"
    source "${VENEV_DIR}/bin/activate" || {
        echo "[x] Failed to setup the pŷthon venv"
        exit 1
    }

    #install the kas
    if ! pip3 install kas; then
        echo "[x] Error installing kas .."
        exit 1
    fi
}

do_kas_checkout(){
    local yml=$1
    kas-container checkout  "${yml}"
}

do_kas_shell(){
    local yml=$1
    kas-container shell  "${yml}"
}

do_kas_build(){
    local yml=$1
    kas-container build  "${yml}"
}

main(){
    
    do_prepare_env

    # declaration of some variables
    local action=$1
    local yml=$2

    #verify the existence of yml file
    if [ ! -f "${yml}"]; then
        echo "[x] "${yml}" does not exist"
        exit 1
    fi
    
    if["${action}" == "checkout"]; then
        do_kas_checkout "${yml}"
    elif ["${action}" == "shell"]; then
        do_kas_shell "${yml}"
    elif ["${action}" == "build"]; then
        do_kas_build "${yml}"
    else
        echo "[x] Wrong action"
        exit 1
    fi
}

main "$@"
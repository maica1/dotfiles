function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -lhA --color=auto
}

function cfgssh() {

   sed -i "1s/^/Host ${1}\n   Hostname ${2}\n/" ~/.ssh/config
}


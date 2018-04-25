# This is a bash completion script for kt.

_kt()
{
    local cur prev opts base common_opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    common_opts="-brokers -verbose -version -help"
    opts="consume produce topic group"
    fargs="-help"

    case "${prev}" in
        consume)
            COMPREPLY=( $(compgen -W ''"${common_opts}"' -encodekey -encodevalue -offsets -pretty -timeout -topic' -- ${cur}) )
            return 0
            ;;
        produce)
            COMPREPLY=( $(compgen -W ''"${common_opts}"' -batch -buffersize -decodekey -decodevalue -literal -partition -partitioner -pretty -timeout -topic -compression' -- ${cur}) )
            return 0
            ;;
        topic)
            COMPREPLY=( $(compgen -W ''"${common_opts}"' -filter -leaders -partitions -pretty -replicas' -- ${cur}) )
            return 0
            ;;
        group)
            COMPREPLY=( $(compgen -W ''"${common_opts}"' -filter -group -offsets -partitions -pretty -reset -topic' -- ${cur}) )
            return 0
            ;;
        *)
        ;;
    esac

   COMPREPLY=($(compgen -W "${opts} ${fargs}" -- ${cur}))
   return 0
}
complete -F _kt kt

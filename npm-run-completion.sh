#!/usr/bin/env zsh

# a list of commonly used npm commands
# TODO: need to automate this from the original npm completion
common_npm_cmds="access adduser audit bin bugs cache ci completion config dedupe deprecate diff dist-tag docs doctor edit exec explain explore find-dupes fund help help-search hook init install install-ci-test install-test link logout ls org outdated owner pack ping pkg prefix profile prune publish query rebuild repo restart root run-script search set-script shrinkwrap star stars start stop team test token uninstall unpublish unstar update version view whoami run"

_npm_rum_completion()
{
    local cur prev

    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}

    case ${COMP_CWORD} in
        1)
            COMPREPLY=($(compgen -W "$common_npm_cmds" -- ${cur}))
            ;;
        2)
            case ${prev} in
                run)
                    scripts=$([ -f package.json ] && cat package.json | jq -r '.scripts|keys|@tsv')
                    COMPREPLY=($(compgen -W "$scripts" -- ${cur}))
                    ;;
            esac
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
}

complete -F _npm_rum_completion npm
# bash completion for Notes

# Set your own notes folder path here
NOTESDIR=~/Dropbox/Notes

_notes() {   
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    subcommands="ls"
    files=`command -p ls "${NOTESDIR}"` # 'command -p' for ignoring bash aliases
    if [[ ${COMP_CWORD} == 1 ]]; then
        COMPREPLY=($(compgen -W "`echo ${subcommands} ${files}`" -- ${cur}))
        return 0
    fi
} &&
complete -F _notes n

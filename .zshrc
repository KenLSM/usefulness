# remove all deleted remote branches on local
alias gitrm="git branch -vv | grep gone | awk '{print $1}' | xargs git branch -D"

# increase max memory size. RN uses lots of them
export NODE_OPTIONS=--max_old_space_size=4096

# target vscode even if you have subl installed
export REACT_EDITOR=code

# expose auto-completion of git branch names to your function (foo)
__git_branch_names () {
  compadd "${(@)${(f)$(git branch -a)}#??}"
}
compdef __git_branch_names foo

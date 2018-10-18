lc="$reset_color$FX[bold]$FG[006]"                      # labels
nc="$reset_color$FX[bold]$FG[006]"                      # user and hostname
ic="$reset_color$FX[bold]$FG[007]"                      # info
fc="$reset_color$FX[bold]$FG[003]"                      # first color
mc="$reset_color$FX[bold]$FG[003]$BG[002]"              # mixer color
sc="$reset_color$FG[002]"                               # second color
tc1="$reset_color$FX[bold]$FG[003]"                     # second color
tc2="$reset_color$FX[bold]$FG[002]"                     # second color

local g_status="%(?:%{$fg_bold[white]%}#%m ➜ :%{$fg_bold[red]%}#%m ➜ )"
# show staged changes in the repository
local g_changes="$FG[038][%1~]%{$reset_color%}"
# Define prompts
#
PROMPT='${g_status}${g_changes} $(git_prompt_info)'

# git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

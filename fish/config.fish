function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '[%s@%s %s%s%s]  '(set_color $fish_color_normal) $USER (set_color $fish_color_host)$hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

set -x ANDROID_HOME /home/rafli/Android/Sdk
set -x ANDROID_SDK_ROOT /home/rafli/Android/Sdk

alias pamcan pacman
alias clear "printf '\033[2J\033[3J\033[1;1H'"
alias sd="shutdown now"
alias rb="reboot"
alias ocf="cd ~/.config/hypr && nvim"
alias ncf="sudo nvim /etc/nixos/configuration.nix"
alias hy="hyprland"
alias sleep="systemctl suspend"
alias nrebuild="sudo nixos-rebuild switch"
export ANDROID_HOME="/home/rafli/Android/Sdk"
export ANDROID_SDK_ROOT="/home/rafli/Android/Sdk"
export HYPRSHOT_DIR=/home/rflsaa/Pictures/Screenshots

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

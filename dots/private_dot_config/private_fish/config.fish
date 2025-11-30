mise activate fish | source

# source ~/.profile
if status is-interactive
    # Commands to run in interactive sessions can go here
end



set --export STARSHIP_CONFIG ~/.config/starship.toml
starship init fish | source

if [ -f ~/.aliases ]
    source ~/.aliases
end

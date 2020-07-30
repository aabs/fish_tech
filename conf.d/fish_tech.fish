# bind \cg "vi ~/.config/fish/config.fish"

# set -l name (basename (status -f) .fish){_uninstall}

# function $name --on-event $name
    # bind --erase \cg
# end

# abbr --add to 'tm open'


# if not set -q $fd2_current_tmux_session
#   set -U fd2_current_tmux_session "$fish_projects_current_sn"
# end

fd2_define_command -p tech -d "commands for working on file hierarchies divided by technologies"

fd2_define_subcommand -p tech -c ls -f __fd2_tech_ls -d "list available technology areas"
fd2_define_subcommand -p tech -c path -f __fd2_tech_path -d "get path to a specific area"
fd2_define_subcommand -p tech -c cd -f __fd2_tech_cd -d "change dir to a chosen technology area"
fd2_define_subcommand -p tech -c open -f __fd2_tech_open -d "select a tech area and cd to it"

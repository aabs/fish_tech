# bind \cg "vi ~/.config/fish/config.fish"

# set -l name (basename (status -f) .fish){_uninstall}

# function $name --on-event $name
    # bind --erase \cg
# end

# abbr --add to 'tm open'


# if not set -q $fd2_current_tmux_session
#   set -U fd2_current_tmux_session "$fish_projects_current_sn"
# end

fd2_define_command tech "commands for working on file hierarchies divided by technologies"

fd2_define_subcommand tech ls __fd2_tech_ls "list available technology areas"
fd2_define_subcommand tech path __fd2_tech_path "get path to a specific area"
fd2_define_subcommand tech cd __fd2_tech_cd "change dir to a chosen technology area"
fd2_define_subcommand tech open __fd2_tech_open "select a tech area and cd to it"

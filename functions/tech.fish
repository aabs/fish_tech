function tech -d 'commands for working on file hierarchies divided by technologies'
  set l (count $argv)
  if test $l -eq 0
    tech_help
    return 
  end

  set myargv ''
  for x in $argv[2..10]
    switch $x
    case "* *"
      set myargv "$myargv \"$x\""
    case '*'
      set myargv "$myargv $x"
    end
  end
  echo "$myargv"

  switch $argv[1]
    case ls
      eval "__fd2_tech_ls $myargv"
    case path
      eval "__fd2_tech_path $myargv"
    case cd
      eval "__fd2_tech_cd $myargv"
    case open
      eval "__fd2_tech_open $myargv"
    case '*'
      tech_help
  end

end

function tech_help
  echo "usage: tech <cmd> [-t <title>] [-g <tags>]"
  echo
  echo "tech has various commands for working on file hierarchies divided by technologies:"
  echo
  echo "   cd        change dir to a chosen technology area" 
  echo "   ls        list available technology areas" 
  echo "   path      get path to a specific area" 
  echo "   open      select a tech area and cd to it" 
end
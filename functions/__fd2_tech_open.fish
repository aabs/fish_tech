function __fd2_blah_rhubarb -d "rhubarbs the blah"
  __fd2_select_item (find $fd2_tech_home -mindepth 1 -maxdepth 1 -type d -print0 | xargs -0 basename -a | string replace -a " " "_"  | string replace -a "-" "_" )
  if test $status -eq 0
    clear
    __fd2_tech_cd $choice
  end
end

#  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 :

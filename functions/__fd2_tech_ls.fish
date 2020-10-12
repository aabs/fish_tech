function __fd2_tech_ls -d "list available technology areas"
    set -l tech_roots (find $fd2_tech_home -mindepth 1 -maxdepth 1 -type d -print0 | xargs -0 basename -a | string replace -a " " "_"  | string replace -a "-" "_" )

    for tr in $tech_roots
        echo $tr
    end
end

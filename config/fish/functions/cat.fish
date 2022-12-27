function cat --description "Concatenate"
    if type --query bat
        bat $argv
    else if type --query batcat
        # When installing on ubuntu using
        # sudo apt install bat
        # possible to rename as /usr/bin/batcat
        batcat $argv
    else
        command cat $argv
    end
end

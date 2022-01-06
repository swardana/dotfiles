function ls --description "List Files and Directories"
  if type --query exa
    exa --all --header --binary --long --icons $argv
  else
    command ls -Ahl --color=auto $argv
  end
end

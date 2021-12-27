function l --description "List Files and Directories"
  if type --query exa
    exa --header --binary --long --icons $argv
  else
    ls -Ahl --color=auto $argv
  end
end

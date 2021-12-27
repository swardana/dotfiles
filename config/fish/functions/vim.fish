function vim --description "The ubiquitous text editor"
  if type --query nvim
    nvim $argv
  else
    command vim $argv
  end
end

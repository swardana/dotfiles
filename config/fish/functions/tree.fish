function tree --description "List Files and Directories in Tree structure"
  if type --query exa
    exa --tree --level=2 $argv
  else if type --query tree
    tree -a -I -L 2 ".svn|.git|.hg" $argv
  else
    find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
  end
end


if status --is-interactive
    abbr --add --global cl 'clear'
    abbr --add --global cls 'clear; ls'

    # Maven alias
    if type --query mvn
        abbr --add --global mci 'mvn -T 1C clean install'
        abbr --add --global mcp 'mvn -T 1C clean package'
    end
    
    # Git alias
    if type --query git
        abbr --add --global gcam 'git commit --amend'
        abbr --add --global gcim 'git commit -m'
        abbr --add --global gl 'git log'
        abbr --add --global gs 'git status'
    end
end

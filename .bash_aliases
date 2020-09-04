alias editconfig='nano $CONFIG'

alias restartcasual='sed -i.bak "s/gamemode=\"1\"/gamemode=\"0\"/g" $CONFIG; /home/redflower/server/csgoserver restart'
alias restartcomp='sed -i.bak "s/gamemode=\"0\"/gamemode=\"1\"/g" $CONFIG; /home/redflower/server/csgoserver restart'

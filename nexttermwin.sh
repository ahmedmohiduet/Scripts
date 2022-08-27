curWinDec=`xdotool getactivewindow`
curWinId=`printf 0x0%x "$curWinDec"`
pcName=`hostname`

echo "Current window Id: $curWinId"
echo "Getting a list of all terminal windows..."
echo "Assuming shell windows titles would contain ~ and /"
winIds=`wmctrl -lp|grep -v " $pcName Desktop"|grep "~\|/\|VIM"|grep -v " - Google Chrome"|grep -v " - Mozilla Firefox"|cut -d' ' -f 1`

echo "Window list: $winIds"
winCount=`wmctrl -lp|grep -v " $pcName Desktop"|grep "~\|/\|VIM"|grep -v " - Google Chrome"|grep -v " - Mozilla Firefox"|cut -d' ' -f 1|wc -l`

echo "Window count: $winCount"
readarray -t <<<$winIds

for i in {0..100};do if [ "${MAPFILE[$i]}" = "$curWinId" ]; then abc="$i" && break;fi;done

((abc=abc+1))

if [ "$winCount" = "$abc" ]; then echo "Cycling to first window..." && abc=0;fi

echo "Next window index: $abc"
echo "Navigating to... ${MAPFILE[$abc]}"

xdotool windowactivate ${MAPFILE[$abc]}

curWinDec=`xdotool getactivewindow`
curWinId=`printf 0x0%x "$curWinDec"`
pcName=`hostname`

echo "Current window Id: $curWinId"
winIds=`wmctrl -lp|grep -v " $pcName Desktop"|grep " 0 "|cut -d' ' -f 1`

echo "Window list: $winIds"
winCount=`echo $winIds|tr -cd ' \t' | wc -c`

((winCount=winCount+1))

echo "Window count: $winCount"
readarray -t <<<$winIds

for i in {0..100};do if [ "${MAPFILE[$i]}" = "$curWinId" ]; then abc="$i" && break;fi;done

((abc=abc+1))

if [ "$winCount" = "$abc" ]; then echo "Cycling to first window..." && abc=0;fi

echo "Next window index: $abc"
echo "Navigating to... ${MAPFILE[$abc]}"

xdotool windowactivate ${MAPFILE[$abc]}

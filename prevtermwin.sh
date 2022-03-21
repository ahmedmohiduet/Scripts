curWinDec=`xdotool getactivewindow`
curWinId=`printf 0x0%x "$curWinDec"`

echo "Current window Id: $curWinId"

winIds=`wmctrl -lp|grep -v " $pcName Desktop"|grep "~\|/\|VIM"|grep -v " - Google Chrome"|grep -v " - Mozilla Firefox"|cut -d' ' -f 1`

echo "Window list: $winIds"
winCount=`echo $winIds|tr -cd ' \t' | wc -c`

((winCount=winCount+1))

echo "Window count: $winCount"
readarray -t <<<$winIds

for i in {0..100};do if [ "${MAPFILE[$i]}" = "$curWinId" ]; then abc="$i" && break;fi;done

((abc=abc-1))

lastWindow="$winCount"

((lastWindow=lastWindow-1))

if [ "0" = "$abc" ]; then echo "Cycling to last window..." && abc="$lastWindow";fi

echo "Prev window index: $abc"
echo "Navigating to... ${MAPFILE[$abc]}"

xdotool windowactivate ${MAPFILE[$abc]}

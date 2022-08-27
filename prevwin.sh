curWinDec=`xdotool getactivewindow`
curWinId=`printf 0x0%x "$curWinDec"`

echo "Current window Id: $curWinId"
winIds=`wmctrl -lp|grep " 0 "|cut -d' ' -f 1`
winCount=`wmctrl -lp|grep " 0 "|cut -d' ' -f 1|wc -l`

echo "Window list: $winIds"

echo "Window count: $winCount"
readarray -t <<<$winIds

for i in {0..100};do if [ "${MAPFILE[$i]}" = "$curWinId" ]; then abc="$i" && break;fi;done

((abc=abc-1))

lastWindow=`echo "$winCount"`
((lastWindow=lastWindow-1))


if [ "-1" = "$abc" ]; then echo "Cycling to last window..." && abc="$lastWindow";fi

echo "Prev window index: $abc"
echo "Navigating to... ${MAPFILE[$abc]}"

xdotool windowactivate ${MAPFILE[$abc]}

## battery-info.sh


if [ "$(uname -a|grep Darwin)" ]; then
    pmset -g batt | grep -o "\d*%"
fi


if [ "$(uname -a|grep Linux)" ]; then
    echo ""
fi
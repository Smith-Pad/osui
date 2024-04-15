## bluetooth-name.sh


if [ "$(uname -a|grep Darwin)" ]; then
    echo "FEATURE NOT AVAILABLE"
fi

if [ "$(uname -a|grep Linux)" ]; then
    echo ""
fi
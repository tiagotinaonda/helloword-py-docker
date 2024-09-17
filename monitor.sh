if [ -z "$1" ]; then
echo "uso: $0"
exit 1

fi

PROCESS=$1

while true; do
        #if [[$PROCESS == ~^[0-9]+$]];then
        if [[ $PROCESS =~ ^[0-9]+$ ]]; then
         ps -p "$PROCESS" -o pid,%cpu,%mem,cmd

        else
        echo "Não valido"
        exit 1
    fi
    
sleep 5
done
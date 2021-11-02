BLINK=' '
if [[ $(($(date +%s)%2)) -eq 0 ]]
then 
	BLINK=':'
fi

DATE=$(date +"%a %d/%m %H$BLINK%M")
BAT=$(acpi -b | grep "Battery 0" | awk '{gsub(/%,/,""); print $4}')

echo $DATE \| $BAT

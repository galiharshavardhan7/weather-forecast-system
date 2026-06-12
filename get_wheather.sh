#!/bin/bash
while true
do
	echo ""
echo "== Wheather Forecast System =="

echo "1.Add the wheather record"
echo "2.view wheather History"
echo "3.Exit"

echo -n "Enter your choice:"
read choice

case $choice in
 1)
	echo -n "Enter city:"
	read city
	echo -n "Enter Temperature:"
	read temp
	  echo -e "$(date +%F)\t$city\t$temp" >> wheather_history.tsv
	  echo "Wheather was sucessfully saved!"

	  ;;

    2) echo "== wheather location =="
    cat wheather_history.tsv
    ;;
  
   3) echo "Goodbye!"
	   break
	   ;;


	   *) echo " Invalid choice"
		   ;;


esac
done



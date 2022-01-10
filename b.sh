#!/bin/bash

echo "add new file | writ -> addFile"
echo "add task's to file | writ -> addTask"
echo "show task's - please enter you'r file name | writ -> show"
echo "show all files | writ -> showFiles"
echo "remove flie | writ -> remove"
echo "remove all files | writ -> removeAll"
echo "terminate the program | writ -> terminate"

x=0

while [[ $x -lt 1 ]]; do
   echo -n "enter your input : "
   read INPUT
   case $INPUT in

     addFile)
       echo -n "enter you file name : "
       read file
       if [[ -f "$file.text" ]]; then
            echo "bad input . this file has exist!"
          else
            touch $file.text      
       fi
       
       ;;
     
     addTask)
       echo -n "enter file name : "
       read file1
       if [[ -f "$file.text" ]]; then
           echo -n "enter you'r task : "
           read task1
           echo "$task1" >> "$file1.text"
         else
          echo "this file not exist"
       fi
       
       ;;

     show)
       echo -n "enter you file name : "
       read file
       if [[ -f "$file.text" ]]; then
            cat "$file.text"
          else
            echo "this file not exist"
       fi
       
       ;;
         
     showFiles)
        ls *.text     
       ;;

     remove)
        echo -n "enter file name to remove : "
        read rmFile
        if [[ -f "$file.text" ]]; then
           rm -r "$rmFile.text"
         else
          echo "this file not exist"
        fi    
       ;;
       removeAll)
          rm -r *.text
       ;;
     terminate)
       echo -n "good louck"
       x=2
       ;;

     *)
   echo -n "unknown"
   echo ""
       ;;
   esac
done

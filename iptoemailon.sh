result=$(curl ifconfig.me)
result2=$(cat /home/$USER/.config/ip.txt)

if [ $result == $result2 ]; then
        echo "nothing"
else
        echo -e 'Subject: IP\n\n '"$(curl ifconfig.me)"'' | sendmail -v email@gmail.com && echo $result > /home/$USER/ip.txt

fi

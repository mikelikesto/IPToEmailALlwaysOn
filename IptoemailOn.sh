result=$(curl ifconfig.me)
result2=$(cat ip.txt)

if [ $result == $result2 ]; then 
  echo "nothing"
else
  echo -e 'Subject: IP\n\n '"$(curl ifconfig.me)"'' | sendmail -v email@gmail.com
fi

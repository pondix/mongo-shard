ps aux |grep mongo | awk '{print $2}' |xargs kill -15


scp ./shell/post-receive root@bilibili:/root/Repos/ORServer/hooks/
scp ./shell/openresty.service root@bilibili:/usr/lib/systemd/system/
ssh root@bilibili chmod a+x /root/Repos/ORServer/hooks/post-receive
ssh root@bilibili systemctl enable openresty.service


echo "查看CPU型号"
ssh root@bilibili cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c

echo "查看物理cpu个数"
ssh root@bilibili cat /proc/cpuinfo | grep "physical id" | sort | uniq|wc -l

echo "查看逻辑cpu的个数"
ssh root@bilibili cat /proc/cpuinfo | grep "processor" |wc -l

echo "查看cpu是几核"
ssh root@bilibili cat /proc/cpuinfo | grep "cores"|uniq


# scp ./shell/letsencrypt.service root@bilibili:/usr/lib/systemd/system/
# scp ./shell/letsencrypt.timer root@bilibili:/usr/lib/systemd/system/

# ssh root@bilibili systemctl enable letsencrypt.timer 
# ssh root@bilibili systemctl start letsencrypt.timer

# scp root@bilibili:/etc/letsencrypt/live/bilibili/fullchain.pem ~/Downloads/
# scp root@bilibili:/etc/letsencrypt/live/bilibili/privkey.pem ~/Downloads/

--------------------------------------------------循环日期区间
beg_s=`date -d "$1" +%s`
end_s=`date -d "$2" +%s`
while [ "$beg_s" -le "$end_s" ]
do
    echo $(date -d @$beg_s +"%Y-%m-%d")
    beg_s=$((beg_s+86400))
done
--------------------------------------------------

#Before use pattern in git run command:
git config --global grep.extendedRegexp true

#This command append line in file sprint stats_30_10_2018.txt in format "Sprint-no-9 ('2018-05-14:2018-05-24') inserted_lines_no deleted_lines_no"
echo "$(echo 'Sprint-no-9')" "$echo('2018-05-14:2018-05-24')" "$(git log --numstat --author='hubert.wojtowicz|Hubert Wójtowicz' --since='2018-05-14' --before='2018-05-24' --pretty='%n' | awk '$1||$2  {sumIns+=$1; sumDel+=$2} END { print sumIns, sumDel }')" >> stats_30_10_2018.txt

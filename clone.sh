git config --global credential.helper
echo "protocol=https" > credcheck.txt
echo "host=github.com" >> credcheck.txt
echo "" >> credcheck.txt
echo "" >> credcheck.txt
cat credcheck.txt | git credential fill
export|grep ASSESSMENT_REPO
sleep 2
git clone --bare https://github.com/$ASSESSMENT_REPO /workspace/assessment/.git

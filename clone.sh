git config --global credential.helper
export|grep ASSESSMENT_REPO
sleep 2
git clone --bare https://github.com/$ASSESSMENT_REPO /workspace/assessment/.git

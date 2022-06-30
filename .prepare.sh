cd /workspace/assessment && \
ls -adQ !(README.md) .[^.]* | xargs rm -Rf > /dev/null 2>&1 && \
git init && \
git remote add origin $ASSESSMENT_REPO && \
sleep 1 && \
git fetch && \
git checkout -t origin/$ASSESSMENT_BRANCH -f && \
git reset --hard HEAD 

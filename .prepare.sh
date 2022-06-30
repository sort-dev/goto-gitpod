cd /workspace/assessment && \
ls -adQ .[^.]* | xargs rm -Rf > /dev/null 2>&1 && \
git init && \
git remote add origin $ASSESSMENT_REPO && \
sleep 1 && \
git fetch && \
git checkout -t origin/$ASSESSMENT_BRANCH -f && \
git reset --hard HEAD 

if [ -f "package.json" ]; then
    echo "NPM Install..."
    nvm install
    nvm use
    npm install
fi

if [ -f "gradlew" ]; then
    echo "Gradle build..."
    ./gradlew build
fi

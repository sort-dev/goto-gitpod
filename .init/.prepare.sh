cd /workspace/assessment && \
ls -adQ .[^.]* | xargs rm -Rf > /dev/null 2>&1 && \
git init && \
git remote add origin $ASSESSMENT_REPO && \
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

if ls *.sln 1> /dev/null 2>&1; then
    echo "Dotnet restore..."
    dotnet restore
fi

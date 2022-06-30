FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -q update && \
    sudo sed -i -e 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' /gitpod/.sdkman/etc/config && \
    sudo sdk update java && \
    wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    sudo dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    sudo apt-get -q update; \
    sudo apt-get install -y apt-transport-https && \
    sudo apt-get install -y dotnet-sdk-6.0 && \
    sudo apt-get install -y aspnetcore-runtime-6.0

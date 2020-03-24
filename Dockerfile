FROM docker.bluelight.limited:5000/feingkai/mkiii-pip-image


    
RUN echo "Downloading kubectl" && \
        ls -l && \
        curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
        ls -l && \
        chmod +x ./kubectl && \
        mv ./kubectl /usr/local/bin/kubectl && \
        ls -l && \
        ls -l /usr/local/bin/



# Create Image       : sudo docker build --rm -t amitool:latest . 
# Run Image for test : sudo docker run --rm -it amitool:latest /bin/sh [Replace after by ansible entrypoint commented here]
# Delete Image       : sudo docker rmi amitool:latest
FROM alpine:latest

RUN apk add gcc git libffi-dev musl-dev openssl-dev perl py-pip python python-dev sshpass mlocate

RUN apk update && updatedb

RUN pip install --upgrade pip

RUN pip install virtualenv

RUN mkdir /ansible

COPY ./playbooks/ /ansible/playbooks/

COPY ./roles/ /ansible/roles/

COPY ./inventories/ /ansible/inventories/

COPY ./group_vars/ /amsible/group_vars/

WORKDIR /ansible

RUN virtualenv tmpvirtv

RUN source ./tmpvirtv/bin/activate 

RUN pip install ansible

RUN pip install awscli

RUN pip install --upgrade awscli

WORKDIR /ansible/playbooks 

CMD echo "Delete this CMD after the tests"

#ENTRYPOINT ["ansible-playbook"]

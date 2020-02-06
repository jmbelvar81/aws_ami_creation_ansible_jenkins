# Create Image       : sudo docker build --rm -t amitool:latest . 
# Run Image for test : sudo docker run --rm -it amitool:latest /bin/sh [Replace after by ansible entrypoint commented here]
# Delete Image       : sudo docker rmi amitool:latest
FROM alpine:latest

RUN apk add gcc git libffi-dev musl-dev openssl-dev perl py-pip python python-dev sshpass mlocate openssh-client

RUN apk update && updatedb

RUN pip install --upgrade pip

RUN pip install virtualenv

RUN mkdir /ansible

COPY ./playbooks/ /ansible/playbooks/

RUN cp /ansible/playbooks/build_aws_ami_workflow.yaml /ansible/build_aws_ami_workflow.yaml

COPY ./roles/ /ansible/roles/

COPY ./inventories/ /ansible/inventories/

RUN chmod 400 /ansible/inventories/private_keys_ami_build/aw_ami_creator.pem

COPY ./group_vars/ /amsible/group_vars/

WORKDIR /ansible

RUN virtualenv tmpvirtv

RUN source ./tmpvirtv/bin/activate 

RUN pip install ansible

RUN pip install boto

RUN pip install botocore

RUN pip install awscli

# RUN pip install --upgrade awscli

RUN apk add python3 

RUN pip3 install boto3

WORKDIR /ansible/

CMD echo "Delete this CMD after the tests"

#ENTRYPOINT ["ansible-playbook"]

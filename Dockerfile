FROM centos:7
RUN yum update -y && yum install mysql -y
RUN for user in jojo; do useradd $user; echo"1234" | passwd $user --stdin; done


- hosts: localhost
  tasks:
  - name: install git
    yum: name=git state=latest
    become: yes
    become_method: sudo

  - name: clone spring-petclinic
    git: repo=https://github.com/YitzZu/spring-petclinic.git dest=/home/spring-petclinic
    become: yes
    become_method: sudo

  - name: clone course_exercises_devops
    git: repo=https://github.com/YitzZu/Course_exercises_devops.git dest=/home/course_exercises_devops update=no
    become: yes
    become_method: sudo 

  - name: download_maven
    get_url: url=
http://apache.spd.co.il/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz dest=/home/course_downloads/maven
    become: yes
    become_method: sudo

   

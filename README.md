> After installing maven, zookeper, and mesos follow the step below <

1. First run the below commands
   a) open .bashrc file and set the path
	sudo vim ~/.bashrc
	  	export M2_HOME=~/apache-maven-3.3.9
 		export PATH=$PATH:$M2_HOME/bin
   b) And run command below.
	vim /etc/profile.d/mavenenv.sh # edit file and add below lines
		export M3_HOME=/maven
		export PATH=${M3_HOME}/bin:${PATH}
		chmod +x /etc/profile.d/mavenenv.sh
		source /etc/profile.d/mavenenv.sh
		mvn --version
 	# if it shows an error mvn not found run below commands
	apt-get purge maven
	apt-get install maven

   c) follow step below to setup zookeper.
	cd zookeeper-3.4.9/conf/
	cp zoo_sample.cfg  zoo.cfg
	cd ..
	./bin/zkServer.sh start

   d) Setup the mesos.
	cd mesos-1.7.0/
	mkdir build
	cd build
	../configure
	make
	make install
	sudo -E ./bin/mesos-master.sh --ip=127.0.0.1 --work_dir=/var/lib/mesos

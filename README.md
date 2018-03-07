# Docker In Jenkins

This is Dockerfile which lets you create container which allows jenkins user inside docker to use docker daemon.

# First build
	docker build -t docker_in_jenkins .
	
# Create Container
	  docker run -d 
		-v /var/run/docker.sock:/var/run/docker.sock 
		-v $(which docker):/usr/bin/docker:ro 
		-v jenkins-data:/var/jenkins_home 
		-v /usr/lib/x86_64-linux-gnu/libltdl.so.7:/usr/lib/libltdl.so.7 
		-p 8080:8080 
		-p 50000:50000 
		--privileged=true  
		--name jenkins docker_in_jenkins



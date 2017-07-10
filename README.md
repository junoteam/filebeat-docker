### Docker image for Elastic Filebeat  

**Filebeat** - lightweight shipper for logs.  

[Filebeat](https://www.elastic.co/products/beats/filebeat) is part of the Elastic Stack, meaning it works seamlessly with Logstash,   
Elasticsearch, and Kibana, also known as [The Open Source Elastic Stack](https://www.elastic.co/products). 

Filebeat version is **5.4.3** that is most recent version in **Jul 2017**.   

This repo contain:   
- Dockerfile  
- Entrypoint script   
- filebeat.yml
- tini 
- docker-compose (TO DO)  

**Dockerfile** - config file to create Docker conatiner.   
**executor.sh** - entrypoint script for Docker conatiner.  
**filebeat.yml** - configuration file for Filebeat.  
**tini** - valid init for containers.  
**docker-compose.yml** - configuration file for Docker Compose. 

### Usage  

The image is available on Docker Hub and can be pulled with:  
```docker pull linuxspace/filebeat```   

The container can be executed with:  
```docker run -d linuxspace/filebeat```   

### Filebeat configuration

**filebeat.yml** - file is carefully adited.  
There's example of sending Nginx *access.log* and *error.log* to remote Redis host.  
In **filebeat.yml** you can find example of configuration to send logs to: Elasticsearch, Logstash, Redis.  
I don't add things like stdout or output to file, because it's production setup.  

**ec2-64-89-134-148.us-west-1.compute.amazonaws.com - isn't real host. It's only example!**    



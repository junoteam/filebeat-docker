### Docker image for Elastic Filebeat  

**Filebeat** - lightweight shipper for logs.  

Filebeat is part of the Elastic Stack, meaning it works seamlessly with Logstash,   
Elasticsearch, and Kibana.  

This repo contain:   
- Dockerfile  
- Entrypoint script   
- filebeat.yml
- docker-compose (TO DO)  

**Dockerfile** - config file to create Docker conatiner.   
**executor.sh** - entrypoint script for Docker conatiner.  
**filebeat.yml** - configuration file for Filebeat.  
**docker-compose.yml** - configuration file for Docker Compose. 

### Usage  

The image is available on Docker Hub and can be pulled with:  
```docker pull linuxspace/filebeat```   

The container can be executed with:  
```docker run -d linuxspace/filebeat```   

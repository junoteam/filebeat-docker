### Docker image for Elastic Filebeat  

**Filebeat** - lightweight shipper for logs.  
Filebeat is part of the Elastic Stack, meaning it works seamlessly with Logstash,   
Elasticsearch, and Kibana.  

This repo contain:   
- Dockerfile  
- Start script   
- filebeat.yml hand edited example  
- docker-compose (TO DO)  

### Usage  

The image is available on Docker Hub and can be pulled with:  
```docker pull linuxspace/filebeat```   

The container can be executed with:  
```docker run -d linuxspace/filebeat```   

# rabbitmq-multiple-node

## Description
This repo includes some configurations about running RabbitMQ with multiple nodes, uses HAProxy as proxy server.

## Installation
Since it is using docker, you can just do:

```bash
make build
```
After the whole process is done(appx 40secs), you can go to [Management Console](http://localhost:15672) to see queues and other stuff related to RabbitMQ. 

Also you can check the statistics by HAProxy, just go: [Statistics Panel](http://localhost:1936)

To stop:
```bash
make stop
```

## Screenshots

See the multiple nodes:
![multiple_nodes](https://user-images.githubusercontent.com/30533238/194776253-5c56d78b-d9d1-4ead-806b-238bb74caaaa.png)

HAProxy Statistics Panel
![haproxy_statistics](https://user-images.githubusercontent.com/30533238/194776537-fef2362a-0894-4717-b83e-84056d83358e.png)


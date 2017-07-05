#!/usr/bin/env python
import pika

#connection = pika.BlockingConnection(pika.ConnectionParameters(host='rabbitmq'))
credentials = pika.PlainCredentials('sensu', 'secret')
parameters = pika.ConnectionParameters('rabbitmq', 5672, '/sensu', credentials)
connection = pika.BlockingConnection(parameters)
channel = connection.channel()

channel.queue_declare(queue='hello')

channel.basic_publish(exchange='',
                      routing_key='hello',
                      body='Hello World!')
print(" [x] Sent 'Hello World!'")
connection.close()

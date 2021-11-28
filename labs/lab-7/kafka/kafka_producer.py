from kafka import KafkaProducer


def kafka_producer_sync(producer, msg, topic):
    producer.send(topic, bytes(msg, encoding="utf-8"))

    print("Sending " + msg)

    producer.flush(timeout=60)


def on_success(metadata):
    print(metadata.topic)


def on_error(exception):
    print(exception)


def kafka_producer_async(producer, msg, topic):
    producer.send(topic, bytes(msg, encoding="utf-8")).add_callback(
        on_success,
    ).add_errback(
        on_error,
    )

    producer.flush()


if __name__ == "__main__":
    producer = KafkaProducer(bootstrap_servers="VM_EXTERNAL_IP:9092")

    with open("../data/wordcount.txt", "r") as handle:
        lines = handle.readlines()

    for line in lines:
        kafka_producer_sync(producer, line, "word")

    handle.close()

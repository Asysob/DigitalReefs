# DigitalReefs
Using ZeroMQ to implement an easy to use infrastructure for information exchange in a group of tiny computers.

## Objectives
The basic idea is to implement a publish/subscriber infrastructure with ZeroMQ to exchange pieces of information between various computers. Some of these computers might be connected to Arduino-like programmable hardware and any information from and for these devices is put into the ZeroMQ stack. Brokers may be connected to allow for filtering using regular expressions. Subscribers can be used to display all or some information as well as to store relevant data on disk.

The project is in a very early stage.

*Digital Reefs* may serve as an infrastructure for the Internet of Things (IoT).

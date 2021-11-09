---
title: "Latency Numbers Every Programmer Should Know"
date: 2021-11-09T13:37:35-08:00
categories: ["Programming Interview"]
draft: false
---
As a software developer, you should know following numbers to help you understand how your software performs in big picture. For example, reading from memory is 100,000 times faster than reading from disk (10 ms disk seek in this case). So putting up a memory cache and having data in memory as much as possible is very important. Here is another example, with 1 Gpbs network, sending 1 MB data over network is roughly at same speed of reading them from disk. Because of this, the concept of data locality that Hadoop originally was built upon no longer holds as network technology advanced over the past ten years. Therefore, decoupled compute and storage architecture, like AWS EMR is getting more and more popular nowadays.

```
L1 cache reference ......................... 0.5 ns
Branch mispredict ............................ 5 ns
L2 cache reference ........................... 7 ns
Mutex lock/unlock ........................... 25 ns
Main memory reference ...................... 100 ns
Compress 1K bytes with Zippy ............. 3,000 ns  =   3 µs
Send 2K bytes over 1 Gbps network ....... 20,000 ns  =  20 µs
SSD random read ........................ 150,000 ns  = 150 µs
Read 1 MB sequentially from memory ..... 250,000 ns  = 250 µs
Round trip within same datacenter ...... 500,000 ns  = 0.5 ms
Read 1 MB sequentially from SSD* ..... 1,000,000 ns  =   1 ms
Disk seek ........................... 10,000,000 ns  =  10 ms
Read 1 MB sequentially from disk .... 20,000,000 ns  =  20 ms
Send packet CA->Netherlands->CA .... 150,000,000 ns  = 150 ms
```

Finally, here is the link to a visual representation of these numbers and how they change over the past 30 years. Enjoy!

[https://colin-scott.github.io/personal_website/research/interactive_latency.html](https://colin-scott.github.io/personal_website/research/interactive_latency.html)
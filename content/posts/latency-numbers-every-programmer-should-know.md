---
title: "Latency Numbers Every Programmer Should Know"
date: 2021-11-09T13:37:35-08:00
categories: ["Programming Interview"]
tags: ["Just Enough for Interview"]
draft: false
---

As a software developer, you should know following numbers to help you understand how your software performs in big picture. The point here is not to remember these numbers exactly, but to have a sense of relative magnitude. For example, reading from memory is 100,000 times faster than reading from disk (10 ms disk seek in this case). So you should always try to read from memory rather than disk and having a memory cache can really boost the performance.


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

On other hand, these numbers change over time too (heck out this link [https://colin-scott.github.io/personal_website/research/interactive_latency.html](https://colin-scott.github.io/personal_website/research/interactive_latency.html)). For example, the time of sending 2KB data over commodity network has reduced by ~25 times over the past ten years, and it is even faster than reading from disk now. Because of this, the concept of data locality that Hadoop originally was built upon no longer holds. Therefore, decoupled compute and storage architecture, like AWS EMR with S3 is getting more and more popular nowadays.

You should review these numbers from time to time, and you will be always on top of your software's performance.

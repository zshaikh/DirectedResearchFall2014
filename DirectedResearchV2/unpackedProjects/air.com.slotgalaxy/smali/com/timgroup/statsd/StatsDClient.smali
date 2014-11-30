.class public interface abstract Lcom/timgroup/statsd/StatsDClient;
.super Ljava/lang/Object;
.source "StatsDClient.java"


# virtual methods
.method public abstract count(Ljava/lang/String;I)V
.end method

.method public abstract decrement(Ljava/lang/String;)V
.end method

.method public abstract decrementCounter(Ljava/lang/String;)V
.end method

.method public abstract gauge(Ljava/lang/String;I)V
.end method

.method public abstract increment(Ljava/lang/String;)V
.end method

.method public abstract incrementCounter(Ljava/lang/String;)V
.end method

.method public abstract recordExecutionTime(Ljava/lang/String;I)V
.end method

.method public abstract recordGaugeValue(Ljava/lang/String;I)V
.end method

.method public abstract stop()V
.end method

.method public abstract time(Ljava/lang/String;I)V
.end method

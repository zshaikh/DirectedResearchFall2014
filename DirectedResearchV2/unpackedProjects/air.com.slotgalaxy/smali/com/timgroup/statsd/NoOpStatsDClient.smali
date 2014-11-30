.class public final Lcom/timgroup/statsd/NoOpStatsDClient;
.super Ljava/lang/Object;
.source "NoOpStatsDClient.java"

# interfaces
.implements Lcom/timgroup/statsd/StatsDClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "delta"    # I

    .prologue
    .line 12
    return-void
.end method

.method public decrement(Ljava/lang/String;)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 16
    return-void
.end method

.method public decrementCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public gauge(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 18
    return-void
.end method

.method public increment(Ljava/lang/String;)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 14
    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public recordExecutionTime(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "timeInMs"    # I

    .prologue
    .line 19
    return-void
.end method

.method public recordGaugeValue(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 17
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public time(Ljava/lang/String;I)V
    .locals 0
    .param p1, "aspect"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 20
    return-void
.end method

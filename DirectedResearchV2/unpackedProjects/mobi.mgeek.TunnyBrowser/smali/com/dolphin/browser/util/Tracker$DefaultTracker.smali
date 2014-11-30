.class public Lcom/dolphin/browser/util/Tracker$DefaultTracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# static fields
.field public static final IS_BETA:Z

.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/dolphin/browser/util/dd;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1477
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    return-void
.end method

.method public static final appendDuration(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1568
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    .line 1571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    sget-object v1, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1573
    if-nez v0, :cond_1

    .line 1577
    :goto_0
    return-void

    .line 1576
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final clearStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1599
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1602
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final getRecordedStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1549
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1550
    const-wide/16 v0, 0x0

    .line 1552
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final recordStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 1542
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    .line 1545
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    return-void
.end method

.method public static final startTrackTotalDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1556
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    .line 1559
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1560
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1561
    if-nez v0, :cond_1

    .line 1562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    sget-object v2, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_1
    return-void
.end method

.method public static final trackDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V
    .locals 8

    .prologue
    .line 1606
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1610
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1611
    if-eqz v0, :cond_0

    .line 1614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    long-to-int v4, v0

    .line 1615
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/dolphin/browser/util/dc;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/util/dc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1623
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1521
    const/4 v0, 0x1

    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1522
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1513
    sget-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1514
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V
    .locals 6

    .prologue
    .line 1500
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;Z)V

    .line 1501
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;Z)V
    .locals 8

    .prologue
    .line 1504
    invoke-static {}, Lcom/dolphin/browser/util/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    sget-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    if-ne v0, p4, :cond_0

    sget-object v4, Lcom/dolphin/browser/util/ah;->a:Lcom/dolphin/browser/util/ah;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 1506
    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;Z)V

    .line 1510
    :goto_1
    return-void

    .line 1505
    :cond_0
    sget-object v4, Lcom/dolphin/browser/util/ah;->b:Lcom/dolphin/browser/util/ah;

    goto :goto_0

    .line 1508
    :cond_1
    sget-object v7, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/dolphin/browser/util/dd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/util/dd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;Z)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V
    .locals 1

    .prologue
    .line 1517
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1518
    return-void
.end method

.method public static trackInstallByReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1535
    invoke-static {}, Lcom/dolphin/browser/util/ax;->b()Lcom/dolphin/browser/util/ax;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/dolphin/browser/util/ax;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    return-void
.end method

.method public static trackOnlyBeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1496
    sget-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackOnlyBeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1497
    return-void
.end method

.method public static trackOnlyBeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V
    .locals 0

    .prologue
    .line 1493
    return-void
.end method

.method public static trackPendingEvents()V
    .locals 1

    .prologue
    .line 1479
    invoke-static {}, Lcom/dolphin/browser/util/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    :goto_0
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/dd;

    .line 1482
    invoke-virtual {v0}, Lcom/dolphin/browser/util/dd;->a()V

    goto :goto_0

    .line 1485
    :cond_0
    return-void
.end method

.method public static final trackTotalDuration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 1580
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1584
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1585
    if-eqz v0, :cond_0

    .line 1589
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1590
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v0, v1, v7

    move-wide v1, v0

    goto :goto_1

    .line 1592
    :cond_2
    cmp-long v0, v1, v3

    if-eqz v0, :cond_3

    .line 1593
    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Tracker;->getTrackTimeMin(J)Ljava/lang/String;

    move-result-object v0

    long-to-int v1, v1

    invoke-static {p0, p1, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1595
    :cond_3
    sget-object v0, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static trackUrlEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1530
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackUrlEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1531
    return-void
.end method

.method public static trackUrlEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1525
    invoke-static {p2}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1526
    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {p0, p1, v0, p3, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1527
    return-void
.end method

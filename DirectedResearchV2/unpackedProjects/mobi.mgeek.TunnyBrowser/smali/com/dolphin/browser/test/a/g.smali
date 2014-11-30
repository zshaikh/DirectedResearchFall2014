.class public abstract Lcom/dolphin/browser/test/a/g;
.super Ljava/lang/Object;
.source "MetricsStore.java"


# static fields
.field private static b:Lcom/dolphin/browser/test/a/g;

.field private static final c:Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/Object;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/test/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/test/a/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/test/a/g;->a:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/test/a/g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a()Lcom/dolphin/browser/test/a/g;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lcom/dolphin/browser/test/a/g;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/test/a/g;->b:Lcom/dolphin/browser/test/a/g;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/dolphin/browser/test/a/i;

    invoke-direct {v0}, Lcom/dolphin/browser/test/a/i;-><init>()V

    sput-object v0, Lcom/dolphin/browser/test/a/g;->b:Lcom/dolphin/browser/test/a/g;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v0, Lcom/dolphin/browser/test/a/g;->b:Lcom/dolphin/browser/test/a/g;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/dolphin/browser/test/a/h;)V
.end method

.method public abstract a(Ljava/io/File;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpConnectionMetrics;J)V
    .locals 7

    .prologue
    .line 46
    new-instance v0, Lcom/dolphin/browser/test/a/h;

    invoke-direct {v0}, Lcom/dolphin/browser/test/a/h;-><init>()V

    .line 47
    invoke-interface {p4}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/test/a/h;->a(J)V

    .line 48
    invoke-interface {p4}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/test/a/h;->b(J)V

    .line 49
    invoke-virtual {v0}, Lcom/dolphin/browser/test/a/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/test/a/h;->c(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/test/a/h;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/test/a/h;->b(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p5, p6}, Lcom/dolphin/browser/test/a/h;->c(J)V

    .line 56
    const-string v1, "Metrics"

    const-string v2, "%s: <=>%s, Tx: %,d bytes, Rx: %,d bytes"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/test/a/h;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/test/a/h;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/dolphin/browser/test/a/h;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    invoke-virtual {p0}, Lcom/dolphin/browser/test/a/g;->b()Z

    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/test/a/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/test/a/g;->a(Lcom/dolphin/browser/test/a/h;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/test/a/g;->b(Lcom/dolphin/browser/test/a/h;)V

    goto :goto_0
.end method

.method protected b(Lcom/dolphin/browser/test/a/h;)V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/test/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/test/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

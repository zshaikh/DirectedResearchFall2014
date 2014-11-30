.class Ldolphin/webkit/ep;
.super Ldolphin/util/j;
.source "KeyStoreHandler.java"


# instance fields
.field private final a:Ldolphin/webkit/z;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 33
    new-instance v0, Ldolphin/webkit/z;

    invoke-direct {v0}, Ldolphin/webkit/z;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/ep;->a:Ldolphin/webkit/z;

    .line 38
    iput-object p1, p0, Ldolphin/webkit/ep;->b:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Ldolphin/webkit/ep;->b:Ljava/lang/String;

    invoke-static {v1}, Ldolphin/webkit/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v2, p0, Ldolphin/webkit/ep;->a:Ldolphin/webkit/z;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v3, p0, Ldolphin/webkit/ep;->a:Ldolphin/webkit/z;

    invoke-virtual {v3}, Ldolphin/webkit/z;->c()I

    move-result v3

    new-array v3, v3, [B

    .line 65
    :goto_1
    iget-object v4, p0, Ldolphin/webkit/ep;->a:Ldolphin/webkit/z;

    invoke-virtual {v4}, Ldolphin/webkit/z;->a()Ldolphin/webkit/aa;

    move-result-object v4

    .line 66
    if-nez v4, :cond_1

    .line 74
    invoke-static {p1, v1, v3}, Ldolphin/webkit/ax;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 75
    monitor-exit v2

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_1
    :try_start_1
    iget v5, v4, Ldolphin/webkit/aa;->b:I

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, v4, Ldolphin/webkit/aa;->a:[B

    const/4 v6, 0x0

    iget v7, v4, Ldolphin/webkit/aa;->b:I

    invoke-static {v5, v6, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v5, v4, Ldolphin/webkit/aa;->b:I

    add-int/2addr v0, v5

    .line 72
    :cond_2
    invoke-virtual {v4}, Ldolphin/webkit/aa;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a([BI)V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Ldolphin/webkit/ep;->a:Ldolphin/webkit/z;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ep;->a:Ldolphin/webkit/z;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Ldolphin/webkit/z;->a([BII)V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

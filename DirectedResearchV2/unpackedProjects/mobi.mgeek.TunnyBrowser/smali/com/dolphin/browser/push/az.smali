.class Lcom/dolphin/browser/push/az;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ay;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ay;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v0}, Lcom/dolphin/browser/push/ay;->b(Lcom/dolphin/browser/push/ay;)Lcom/dolphin/browser/push/ax;

    move-result-object v3

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v0}, Lcom/dolphin/browser/push/ay;->c(Lcom/dolphin/browser/push/ay;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v0}, Lcom/dolphin/browser/push/ay;->d(Lcom/dolphin/browser/push/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v0}, Lcom/dolphin/browser/push/ay;->c(Lcom/dolphin/browser/push/ay;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/dolphin/browser/push/ay;->a(Lcom/dolphin/browser/push/ay;Z)Z

    .line 144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 145
    return-void

    .line 110
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    if-eqz v3, :cond_1

    .line 112
    invoke-interface {v3}, Lcom/dolphin/browser/push/ax;->a()V

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 117
    :try_start_3
    iget-object v2, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v2}, Lcom/dolphin/browser/push/ay;->e(Lcom/dolphin/browser/push/ay;)Lcom/dolphin/browser/Network/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 124
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v2}, Lcom/dolphin/browser/push/ay;->c(Lcom/dolphin/browser/push/ay;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 125
    :try_start_4
    iget-object v4, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v4}, Lcom/dolphin/browser/push/ay;->d(Lcom/dolphin/browser/push/ay;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    monitor-exit v2

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 110
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 120
    if-eqz v3, :cond_2

    .line 121
    invoke-interface {v3, v2}, Lcom/dolphin/browser/push/ax;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 128
    :cond_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    if-eqz v3, :cond_4

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v1}, Lcom/dolphin/browser/push/ay;->e(Lcom/dolphin/browser/push/ay;)Lcom/dolphin/browser/Network/d;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Lcom/dolphin/browser/push/ax;->a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/Network/n;)Z

    move-result v0

    .line 136
    :goto_2
    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    iget-object v0, v0, Lcom/dolphin/browser/push/ay;->a:Lcom/dolphin/browser/push/aw;

    iget-object v1, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v1}, Lcom/dolphin/browser/push/ay;->e(Lcom/dolphin/browser/push/ay;)Lcom/dolphin/browser/Network/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/aw;->b(Lcom/dolphin/browser/Network/d;)V

    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/push/az;->a:Lcom/dolphin/browser/push/ay;

    invoke-static {v0}, Lcom/dolphin/browser/push/ay;->f(Lcom/dolphin/browser/push/ay;)V

    goto :goto_0

    .line 144
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.class final Lcom/dolphin/browser/util/dg;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/util/di;

.field final synthetic b:Lcom/dolphin/browser/util/dh;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/di;Lcom/dolphin/browser/util/dh;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/util/dg;->a:Lcom/dolphin/browser/util/di;

    iput-object p2, p0, Lcom/dolphin/browser/util/dg;->b:Lcom/dolphin/browser/util/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/util/dg;->a:Lcom/dolphin/browser/util/di;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/dg;->a:Lcom/dolphin/browser/util/di;

    iget-object v2, p0, Lcom/dolphin/browser/util/dg;->b:Lcom/dolphin/browser/util/dh;

    invoke-interface {v2}, Lcom/dolphin/browser/util/dh;->b()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/util/di;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/util/dg;->a:Lcom/dolphin/browser/util/di;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/dolphin/browser/util/di;->b:Z

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/util/dg;->a:Lcom/dolphin/browser/util/di;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

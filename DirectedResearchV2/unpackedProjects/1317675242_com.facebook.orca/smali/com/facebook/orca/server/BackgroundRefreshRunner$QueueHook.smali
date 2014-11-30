.class public Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceQueueHook;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Landroid/os/Handler;)Landroid/os/Handler;

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 256
    return-void
.end method

.method public a(Lcom/facebook/orca/server/Operation;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 261
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 267
    return-void
.end method

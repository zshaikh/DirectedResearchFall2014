.class Lcom/facebook/orca/threadlist/ThreadListActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "ThreadListActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$7;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$7;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(Lcom/facebook/orca/threadlist/ThreadListActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    const-string v0, "orca:ThreadListActivity"

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$7;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->d(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    goto :goto_0
.end method

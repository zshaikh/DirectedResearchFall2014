.class Lcom/facebook/orca/threadview/ThreadViewActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ThreadViewActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "orca:ThreadViewActivity"

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string v1, "threadid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/threadview/ThreadViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATES_FOR_UI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h()V

    goto :goto_0

    .line 341
    :cond_2
    const-string v1, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->finish()V

    goto :goto_0
.end method

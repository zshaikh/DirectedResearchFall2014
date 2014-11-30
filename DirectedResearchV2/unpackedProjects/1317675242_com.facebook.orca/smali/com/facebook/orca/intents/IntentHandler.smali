.class public Lcom/facebook/orca/intents/IntentHandler;
.super Landroid/app/Activity;
.source "IntentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 28
    const-string v2, "thread"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string v2, "thread_id"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->finish()V

    .line 41
    return-void

    .line 32
    :cond_1
    const-string v2, "threads"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 35
    :cond_2
    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v2, "user_id"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

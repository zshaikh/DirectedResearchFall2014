.class Lcom/appoxee/activities/InboxMessage$4;
.super Ljava/lang/Object;
.source "InboxMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/InboxMessage;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/InboxMessage;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/InboxMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage$4;->this$0:Lcom/appoxee/activities/InboxMessage;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$4;->this$0:Lcom/appoxee/activities/InboxMessage;

    iget-boolean v1, v1, Lcom/appoxee/activities/InboxMessage;->broadcastReceived:Z

    if-nez v1, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APPOXEE_INBOX_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "inboxUpdate":Landroid/content/Intent;
    const-string v1, "numberOfMessage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    .end local v0    # "inboxUpdate":Landroid/content/Intent;
    :cond_0
    return-void
.end method

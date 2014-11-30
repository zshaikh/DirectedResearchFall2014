.class Lcom/appoxee/activities/InboxMessage$1;
.super Landroid/content/BroadcastReceiver;
.source "InboxMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/InboxMessage;
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
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    .line 210
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 213
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/appoxee/activities/InboxMessage;->broadcastReceived:Z

    .line 214
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->hasMessage:Z
    invoke-static {v1}, Lcom/appoxee/activities/InboxMessage;->access$0(Lcom/appoxee/activities/InboxMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->messageId:J
    invoke-static {v1}, Lcom/appoxee/activities/InboxMessage;->access$1(Lcom/appoxee/activities/InboxMessage;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    # invokes: Lcom/appoxee/activities/InboxMessage;->openInboxMessage()Z
    invoke-static {v1}, Lcom/appoxee/activities/InboxMessage;->access$2(Lcom/appoxee/activities/InboxMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appoxee/activities/InboxMessage;->close(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    new-instance v1, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;

    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    invoke-direct {v1, v2, v5}, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;-><init>(Lcom/appoxee/activities/InboxMessage;Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    :goto_1
    return-void

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive: message not opened because id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->messageId:J
    invoke-static {v2}, Lcom/appoxee/activities/InboxMessage;->access$1(Lcom/appoxee/activities/InboxMessage;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->hasMessage:Z
    invoke-static {v2}, Lcom/appoxee/activities/InboxMessage;->access$0(Lcom/appoxee/activities/InboxMessage;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$1;->this$0:Lcom/appoxee/activities/InboxMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appoxee/activities/InboxMessage;->close(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 229
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 230
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

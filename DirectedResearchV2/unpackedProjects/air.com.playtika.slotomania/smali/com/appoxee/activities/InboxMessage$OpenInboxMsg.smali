.class Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;
.super Landroid/os/AsyncTask;
.source "InboxMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/InboxMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenInboxMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/InboxMessage;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appoxee/activities/InboxMessage;)V
    .locals 1

    .prologue
    .line 403
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appoxee/activities/InboxMessage;Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;-><init>(Lcom/appoxee/activities/InboxMessage;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-object v3, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->messageId:J
    invoke-static {v3}, Lcom/appoxee/activities/InboxMessage;->access$1(Lcom/appoxee/activities/InboxMessage;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;
    check-cast p0, Lcom/appoxee/inbox/Message;

    invoke-static {v1, p0}, Lcom/appoxee/activities/InboxMessage;->access$3(Lcom/appoxee/activities/InboxMessage;Lcom/appoxee/inbox/Message;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 415
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 416
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const-string v2, "openInboxMessage: message "

    .line 423
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;
    invoke-static {v0}, Lcom/appoxee/activities/InboxMessage;->access$4(Lcom/appoxee/activities/InboxMessage;)Lcom/appoxee/inbox/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;
    invoke-static {v0}, Lcom/appoxee/activities/InboxMessage;->access$4(Lcom/appoxee/activities/InboxMessage;)Lcom/appoxee/inbox/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appoxee/inbox/Message;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;
    invoke-static {v0}, Lcom/appoxee/activities/InboxMessage;->access$4(Lcom/appoxee/activities/InboxMessage;)Lcom/appoxee/inbox/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appoxee/inbox/Message;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->url:Ljava/lang/String;

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openInboxMessage: open url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # invokes: Lcom/appoxee/activities/InboxMessage;->markMessageAsReadWrap()V
    invoke-static {v0}, Lcom/appoxee/activities/InboxMessage;->access$5(Lcom/appoxee/activities/InboxMessage;)V

    .line 429
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    iget-object v0, v0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;
    invoke-static {v0}, Lcom/appoxee/activities/InboxMessage;->access$4(Lcom/appoxee/activities/InboxMessage;)Lcom/appoxee/inbox/Message;

    move-result-object v0

    if-nez v0, :cond_2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openInboxMessage: message "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->messageId:J
    invoke-static {v1}, Lcom/appoxee/activities/InboxMessage;->access$1(Lcom/appoxee/activities/InboxMessage;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not opened because it is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openInboxMessage: message "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;->this$0:Lcom/appoxee/activities/InboxMessage;

    # getter for: Lcom/appoxee/activities/InboxMessage;->messageId:J
    invoke-static {v1}, Lcom/appoxee/activities/InboxMessage;->access$1(Lcom/appoxee/activities/InboxMessage;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not opened because it is deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 409
    return-void
.end method

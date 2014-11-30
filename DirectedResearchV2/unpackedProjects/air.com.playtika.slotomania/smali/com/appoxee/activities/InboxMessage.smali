.class public Lcom/appoxee/activities/InboxMessage;
.super Landroid/app/Activity;
.source "InboxMessage.java"

# interfaces
.implements Lcom/appoxee/listeners/OnTaskCompleted;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/activities/InboxMessage$OpenInboxMsg;
    }
.end annotation


# static fields
.field protected static final MARKET_URL:Ljava/lang/String; = "market://"


# instance fields
.field protected broadcastReceived:Z

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field errorMessage:Landroid/widget/RelativeLayout;

.field private hasMessage:Z

.field private mOpenedFromNotification:Z

.field private message:Lcom/appoxee/inbox/Message;

.field private messageId:J

.field progressBar:Landroid/widget/ProgressBar;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/appoxee/activities/InboxMessage;->progressBar:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, p0, Lcom/appoxee/activities/InboxMessage;->errorMessage:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    .line 49
    iput-boolean v0, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    .line 52
    iput-boolean v0, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    .line 53
    iput-boolean v0, p0, Lcom/appoxee/activities/InboxMessage;->broadcastReceived:Z

    .line 210
    new-instance v0, Lcom/appoxee/activities/InboxMessage$1;

    invoke-direct {v0, p0}, Lcom/appoxee/activities/InboxMessage$1;-><init>(Lcom/appoxee/activities/InboxMessage;)V

    iput-object v0, p0, Lcom/appoxee/activities/InboxMessage;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/appoxee/activities/InboxMessage;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    return v0
.end method

.method static synthetic access$1(Lcom/appoxee/activities/InboxMessage;)J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/appoxee/activities/InboxMessage;)Z
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/appoxee/activities/InboxMessage;->openInboxMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/appoxee/activities/InboxMessage;Lcom/appoxee/inbox/Message;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    return-void
.end method

.method static synthetic access$4(Lcom/appoxee/activities/InboxMessage;)Lcom/appoxee/inbox/Message;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appoxee/activities/InboxMessage;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/appoxee/activities/InboxMessage;->markMessageAsReadWrap()V

    return-void
.end method

.method static synthetic access$6(Lcom/appoxee/activities/InboxMessage;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/appoxee/activities/InboxMessage;->showErrorMessage()V

    return-void
.end method

.method static synthetic access$7(Lcom/appoxee/activities/InboxMessage;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/appoxee/activities/InboxMessage;->markMessageAsRead()V

    return-void
.end method

.method private markMessageAsRead()V
    .locals 6

    .prologue
    .line 333
    iget-wide v2, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "markMessageAsRead: invalid messageID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-wide v3, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appoxee/inbox/Message;

    .line 340
    .local v1, "message":Lcom/appoxee/inbox/Message;
    invoke-virtual {v1}, Lcom/appoxee/inbox/Message;->isRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appoxee/inbox/Message;->setRead(Z)V

    .line 343
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 345
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v2

    invoke-virtual {v1}, Lcom/appoxee/inbox/Message;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appoxee/connection/AppoxeeClient;->reportDeviceMessageActionOpen(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v1    # "message":Lcom/appoxee/inbox/Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "markMessageAsRead: problem marking message as read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 349
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private markMessageAsReadWrap()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/appoxee/activities/InboxMessage$6;

    invoke-direct {v0, p0}, Lcom/appoxee/activities/InboxMessage$6;-><init>(Lcom/appoxee/activities/InboxMessage;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 329
    invoke-virtual {v0, v1}, Lcom/appoxee/activities/InboxMessage$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    return-void
.end method

.method private openInboxMessage()Z
    .locals 7

    .prologue
    const-string v4, "openInboxMessage: message "

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 240
    .local v2, "try_cnt":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InboxMessage: openning using message ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 243
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    iget-wide v5, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appoxee/inbox/Message;

    iput-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    .line 244
    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    if-eqz v4, :cond_1

    .line 247
    :goto_0
    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getMessageLoadTries()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 262
    :cond_0
    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 263
    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    invoke-virtual {v4}, Lcom/appoxee/inbox/Message;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openInboxMessage: open url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/appoxee/activities/InboxMessage;->markMessageAsReadWrap()V

    .line 266
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 267
    const/4 v1, 0x1

    .line 268
    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_1
    :goto_1
    return v1

    .line 250
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getMessageLoadWait()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 257
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openInboxMessage: retrieving message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    iget-wide v5, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appoxee/inbox/Message;

    iput-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 280
    .local v0, "e":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 251
    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "openInboxMessage error: failed to sleep while waiting to isReady()"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 253
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 273
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v4, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    if-nez v4, :cond_4

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openInboxMessage: message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not opened because it is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openInboxMessage: message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not opened because it is deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private reportDevicePushOpen(J)V
    .locals 2
    .param p1, "messageId"    # J

    .prologue
    .line 296
    new-instance v0, Lcom/appoxee/activities/InboxMessage$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/appoxee/activities/InboxMessage$5;-><init>(Lcom/appoxee/activities/InboxMessage;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 312
    invoke-virtual {v0, v1}, Lcom/appoxee/activities/InboxMessage$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    return-void
.end method

.method private showErrorMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 287
    const-string v0, "showErrorMessage: launched"

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/appoxee/activities/InboxMessage;->errorMessage:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x4000000

    const-string v6, "OPENED_FROM_NOTIFICATION"

    const-string v3, "InboxMessage: Setting openedFromNotification to  "

    .line 363
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppNoInbox()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    const-string v1, "InboxMessage: closing, NoInbox is true and default no inbox class exist"

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InboxMessage: openning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InboxMessage: Setting openedFromNotification to  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v0, "backIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v1, "OPENED_FROM_NOTIFICATION"

    iget-boolean v1, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/InboxMessage;->startActivity(Landroid/content/Intent;)V

    .line 400
    .end local v0    # "backIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/appoxee/activities/InboxMessage;->finish()V

    .line 401
    return-void

    .line 372
    :cond_1
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppNoInbox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v1, "InboxMessage: closing, NoInbox is true, but no default no inbox class, so closing"

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage;->message:Lcom/appoxee/inbox/Message;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 379
    const-string v1, "InboxMessage: closing, no message means push only, default activity defined, so openning it"

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InboxMessage: Openning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InboxMessage: Setting openedFromNotification to  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    .restart local v0    # "backIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v1, "OPENED_FROM_NOTIFICATION"

    iget-boolean v1, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/InboxMessage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    .end local v0    # "backIntent":Landroid/content/Intent;
    :cond_3
    const-string v1, "InboxMessage: closing, message exist, openning Inbox"

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InboxMessage: Setting openedFromNotification to  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 390
    new-instance v1, Lcom/appoxee/inbox/Update;

    invoke-direct {v1}, Lcom/appoxee/inbox/Update;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Regular"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appoxee/activities/Inbox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .restart local v0    # "backIntent":Landroid/content/Intent;
    const-string v1, "OPENED_FROM_NOTIFICATION"

    iget-boolean v1, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/InboxMessage;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 356
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/appoxee/activities/InboxMessage;->close(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v13}, Lcom/appoxee/activities/InboxMessage;->requestWindowFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lcom/appoxee/activities/InboxMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->setmContext(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lcom/appoxee/activities/InboxMessage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 65
    const-string v9, "OPENED_FROM_NOTIFICATION"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    .line 66
    const-string v9, "messageId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    .line 67
    const-string v9, "hasMessage"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    .line 68
    invoke-direct {p0}, Lcom/appoxee/activities/InboxMessage;->markMessageAsReadWrap()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/appoxee/activities/InboxMessage;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "appoxee_pref"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 74
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v9, "mSetAppSDKKey"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "mSetAppSDKKey":Ljava/lang/String;
    const-string v9, "mSetAppSecretKey"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "mSetAppSecretKey":Ljava/lang/String;
    const-string v9, "mSetAppDefaultActivityClass"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "mSetAppDefaultActivityClass":Ljava/lang/String;
    const-string v9, "mInboxEnabled"

    invoke-interface {v7, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 78
    .local v2, "mInboxEnabled":Ljava/lang/Boolean;
    const-string v9, "isAirVersion"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    .line 80
    sget-object v9, Lcom/appoxee/AppoxeeManager;->mConfiguration:Lcom/appoxee/Configuration;

    if-nez v9, :cond_4

    .line 81
    new-instance v9, Lcom/appoxee/asyncs/initAsync;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v9, v5, v6, v4, v10}, Lcom/appoxee/asyncs/initAsync;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v10, v11, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/appoxee/asyncs/initAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/appoxee/activities/InboxMessage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 87
    .local v3, "mInflater":Landroid/view/LayoutInflater;
    const-string v9, "inbox_message"

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 86
    invoke-virtual {v3, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 88
    .local v1, "inboxMessageLayout":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 89
    const-string v9, "inbox_message_webview"

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    .line 91
    :cond_1
    iget-object v9, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    if-eqz v9, :cond_3

    .line 93
    const-string v9, "inbox_message_progress_bar"

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 92
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/appoxee/activities/InboxMessage;->progressBar:Landroid/widget/ProgressBar;

    .line 95
    const-string v9, "inbox_message_error_message"

    invoke-static {v9}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 94
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/appoxee/activities/InboxMessage;->errorMessage:Landroid/widget/RelativeLayout;

    .line 97
    iget-object v9, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 98
    .local v8, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v8, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    iget-object v9, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    new-instance v10, Lcom/appoxee/activities/InboxMessage$2;

    invoke-direct {v10, p0}, Lcom/appoxee/activities/InboxMessage$2;-><init>(Lcom/appoxee/activities/InboxMessage;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 118
    iget-object v9, p0, Lcom/appoxee/activities/InboxMessage;->webView:Landroid/webkit/WebView;

    new-instance v10, Lcom/appoxee/activities/InboxMessage$3;

    invoke-direct {v10, p0}, Lcom/appoxee/activities/InboxMessage$3;-><init>(Lcom/appoxee/activities/InboxMessage;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    iget-boolean v9, p0, Lcom/appoxee/activities/InboxMessage;->mOpenedFromNotification:Z

    if-eqz v9, :cond_2

    .line 158
    const-string v9, "Launch message data load for push inbox messasge"

    invoke-static {v9}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-virtual {p0, v1}, Lcom/appoxee/activities/InboxMessage;->setContentView(Landroid/view/View;)V

    .line 163
    .end local v8    # "webSettings":Landroid/webkit/WebSettings;
    :cond_3
    return-void

    .line 83
    .end local v1    # "inboxMessageLayout":Landroid/widget/RelativeLayout;
    .end local v3    # "mInflater":Landroid/view/LayoutInflater;
    :cond_4
    new-instance v9, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;

    invoke-direct {v9}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;-><init>()V

    new-array v10, v11, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/appoxee/asyncs/ReportApplicationActiveAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    :try_start_0
    iget-boolean v1, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/appoxee/activities/InboxMessage;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/appoxee/activities/InboxMessage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    iget-boolean v2, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    if-eqz v2, :cond_0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "APPOXEE_INBOX_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/appoxee/activities/InboxMessage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 186
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/appoxee/activities/InboxMessage$4;

    invoke-direct {v2, p0}, Lcom/appoxee/activities/InboxMessage$4;-><init>(Lcom/appoxee/activities/InboxMessage;)V

    .line 194
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppInboxMessageTimeout()J

    move-result-wide v3

    .line 186
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume: message not opened id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/appoxee/activities/InboxMessage;->hasMessage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 201
    iget-wide v2, p0, Lcom/appoxee/activities/InboxMessage;->messageId:J

    invoke-direct {p0, v2, v3}, Lcom/appoxee/activities/InboxMessage;->reportDevicePushOpen(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-virtual {p0, v5}, Lcom/appoxee/activities/InboxMessage;->close(Landroid/view/View;)V

    goto :goto_0

    .line 202
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 203
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    invoke-virtual {p0, v5}, Lcom/appoxee/activities/InboxMessage;->close(Landroid/view/View;)V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 205
    invoke-virtual {p0, v5}, Lcom/appoxee/activities/InboxMessage;->close(Landroid/view/View;)V

    .line 206
    throw v2
.end method

.method public onTaskCompleted()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

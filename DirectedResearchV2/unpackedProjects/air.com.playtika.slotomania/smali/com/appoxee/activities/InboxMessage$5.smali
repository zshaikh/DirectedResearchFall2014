.class Lcom/appoxee/activities/InboxMessage$5;
.super Landroid/os/AsyncTask;
.source "InboxMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/InboxMessage;->reportDevicePushOpen(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

.field private final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/appoxee/activities/InboxMessage;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage$5;->this$0:Lcom/appoxee/activities/InboxMessage;

    iput-wide p2, p0, Lcom/appoxee/activities/InboxMessage$5;->val$messageId:J

    .line 296
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appoxee/activities/InboxMessage$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v4, "reportDevicePushOpen: error reporting message "

    .line 301
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v1

    iget-wide v2, p0, Lcom/appoxee/activities/InboxMessage$5;->val$messageId:J

    invoke-virtual {v1, v2, v3}, Lcom/appoxee/connection/AppoxeeClient;->reportDevicePushOpen(J)Z
    :try_end_0
    .catch Lcom/appoxee/AppoxeeClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 302
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 303
    .local v0, "e":Lcom/appoxee/AppoxeeClientException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportDevicePushOpen: error reporting message "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/appoxee/activities/InboxMessage$5;->val$messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 304
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 305
    .end local v0    # "e":Lcom/appoxee/AppoxeeClientException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportDevicePushOpen: error reporting message "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/appoxee/activities/InboxMessage$5;->val$messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.class Lcom/facebook/Session$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPublishAsyncTask"
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
.field private final mApplicationContext:Landroid/content/Context;

.field private final mApplicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1491
    iput-object p2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    .line 1492
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    .line 1493
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 1498
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/Settings;->publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1499
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Facebook-publish"

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    monitor-enter v0

    .line 1509
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/Session;->access$4(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)V

    .line 1508
    monitor-exit v0

    .line 1511
    return-void

    .line 1508
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

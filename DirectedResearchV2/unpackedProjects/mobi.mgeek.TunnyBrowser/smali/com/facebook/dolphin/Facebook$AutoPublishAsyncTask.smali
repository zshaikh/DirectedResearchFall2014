.class Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "Facebook.java"


# annotations
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

.field final synthetic this$0:Lcom/facebook/dolphin/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/dolphin/Facebook;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1077
    iput-object p2, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    .line 1078
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    .line 1079
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1072
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/dolphin/Facebook;

    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    # invokes: Lcom/facebook/dolphin/Facebook;->publishInstall(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/facebook/dolphin/Facebook;->access$200(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    const-string v1, "Facebook-publish"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1072
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/dolphin/Facebook;

    monitor-enter v1

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/dolphin/Facebook;

    const/4 v2, 0x0

    # setter for: Lcom/facebook/dolphin/Facebook;->mAutoPublishAsyncTask:Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;
    invoke-static {v0, v2}, Lcom/facebook/dolphin/Facebook;->access$302(Lcom/facebook/dolphin/Facebook;Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;)Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

    .line 1096
    monitor-exit v1

    .line 1097
    return-void

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

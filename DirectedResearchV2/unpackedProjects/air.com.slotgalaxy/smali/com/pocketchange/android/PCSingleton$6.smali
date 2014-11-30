.class Lcom/pocketchange/android/PCSingleton$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/util/OperationQueue$Enqueuer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer()Z
    .locals 7

    .prologue
    .line 1136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v2}, Lcom/pocketchange/android/PCSingleton;->l()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1148
    :goto_0
    return v0

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    const-string v0, "PocketChange"

    const-string v1, "Updating notification info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->GET:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v2}, Lcom/pocketchange/android/PCSingleton$Configuration;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/pocketchange/android/PCSingleton$c;

    iget-object v5, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {v4, v5}, Lcom/pocketchange/android/PCSingleton$c;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    iget-object v5, p0, Lcom/pocketchange/android/PCSingleton$6;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v5, v5, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v6, "UPDATE_NOTIFICATION"

    invoke-virtual {v5, v6}, Lcom/pocketchange/android/util/OperationQueue;->createRemoveOperationCallback(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    .line 1148
    const/4 v0, 0x1

    goto :goto_0
.end method

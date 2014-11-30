.class Lcom/pocketchange/android/PCSingleton$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/util/OperationQueue$Enqueuer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;Z)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    iput-boolean p2, p0, Lcom/pocketchange/android/PCSingleton$11;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "PocketChange"

    .line 1413
    iget-boolean v0, p0, Lcom/pocketchange/android/PCSingleton$11;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    iget-wide v2, v2, Lcom/pocketchange/android/PCSingleton;->e:J

    const-wide/32 v4, 0x1b7740

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1439
    :goto_0
    return v0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    const-string v0, "PocketChange"

    const-string v0, "Updating product transactions"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    iget-boolean v0, v0, Lcom/pocketchange/android/PCSingleton;->d:Z

    if-eqz v0, :cond_2

    .line 1428
    const/4 v0, 0x0

    .line 1429
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1, v7}, Lcom/pocketchange/android/PCSingleton;->b(Z)V

    move-object v3, v0

    .line 1434
    :goto_1
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->GET:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v2}, Lcom/pocketchange/android/PCSingleton$Configuration;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/pocketchange/android/PCSingleton$d;

    iget-object v5, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {v4, v5}, Lcom/pocketchange/android/PCSingleton$d;-><init>(Lcom/pocketchange/android/PCSingleton;)V

    iget-object v5, p0, Lcom/pocketchange/android/PCSingleton$11;->b:Lcom/pocketchange/android/PCSingleton;

    iget-object v5, v5, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v6, "UPDATE_PRODUCT_TRANSACTIONS"

    invoke-virtual {v5, v6}, Lcom/pocketchange/android/util/OperationQueue;->createRemoveOperationCallback(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    move v0, v7

    .line 1439
    goto :goto_0

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    const-string v1, "PocketChange"

    const-string v1, "Thread interrupted while awaiting persistent state initialization"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 1424
    goto :goto_0

    .line 1431
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1432
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "acknowledged"

    const-string v3, "all"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_1
.end method

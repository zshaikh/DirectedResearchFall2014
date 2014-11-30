.class Lcom/pocketchange/android/PCSingleton$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/util/OperationQueue$Enqueuer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->i()V
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
    .line 1020
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer()Z
    .locals 8

    .prologue
    const-string v7, "PocketChange"

    .line 1022
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v0

    .line 1023
    if-eqz v0, :cond_0

    .line 1024
    const-string v1, "PocketChange"

    const-string v1, "Processing pending rewards"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton;->j()Ljava/util/Map;

    move-result-object v2

    .line 1027
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    if-eqz v0, :cond_1

    .line 1029
    const-string v0, "PocketChange"

    const-string v0, "No pending rewards to process"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_1
    const/4 v0, 0x0

    .line 1068
    :goto_0
    return v0

    .line 1033
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1034
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1036
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1037
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1039
    sget-object v6, Lcom/pocketchange/android/PCSingleton;->a:Ljava/lang/String;

    if-ne v1, v6, :cond_3

    .line 1040
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "amount"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1042
    :cond_3
    :try_start_1
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1048
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1049
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "rewards"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v4, v4, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v4}, Lcom/pocketchange/android/PCSingleton$Configuration;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pocketchange/android/PCSingleton$5$1;

    invoke-direct {v5, p0, v2, v0}, Lcom/pocketchange/android/PCSingleton$5$1;-><init>(Lcom/pocketchange/android/PCSingleton$5;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v2, Lcom/pocketchange/android/PCSingleton$5$2;

    const-string v6, "PocketChange"

    invoke-direct {v2, p0, v7, v0}, Lcom/pocketchange/android/PCSingleton$5$2;-><init>(Lcom/pocketchange/android/PCSingleton$5;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v1, v4, v3, v5, v2}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    .line 1068
    const/4 v0, 0x1

    goto :goto_0
.end method

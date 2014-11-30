.class Lcom/pocketchange/android/PCSingleton$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/util/OperationQueue$Enqueuer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->f()V
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
    .line 750
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const-string v7, "PocketChange"

    .line 752
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v1

    .line 753
    if-eqz v1, :cond_0

    .line 754
    const-string v0, "PocketChange"

    const-string v0, "Processing pending app events"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 757
    array-length v2, v0

    if-nez v2, :cond_2

    .line 758
    if-eqz v1, :cond_1

    .line 759
    const-string v0, "PocketChange"

    const-string v0, "No pending app events to process"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v3

    .line 792
    :goto_0
    return v0

    .line 763
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 764
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "events"

    new-instance v4, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 766
    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v4, v4, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v4}, Lcom/pocketchange/android/PCSingleton$Configuration;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pocketchange/android/PCSingleton$19$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/pocketchange/android/PCSingleton$19$1;-><init>(Lcom/pocketchange/android/PCSingleton$19;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v0, Lcom/pocketchange/android/PCSingleton$19$2;

    const-string v6, "PocketChange"

    invoke-direct {v0, p0, v7, v2}, Lcom/pocketchange/android/PCSingleton$19$2;-><init>(Lcom/pocketchange/android/PCSingleton$19;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v3, v4, v1, v5, v0}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    .line 792
    const/4 v0, 0x1

    goto :goto_0
.end method

.class Lcom/pocketchange/android/PCSingleton$a;
.super Lcom/pocketchange/android/util/ExceptionLoggingTimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PCSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;)V
    .locals 1

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    .line 1525
    const-string v0, "PocketChange"

    invoke-direct {p0, v0}, Lcom/pocketchange/android/util/ExceptionLoggingTimerTask;-><init>(Ljava/lang/String;)V

    .line 1526
    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 7

    .prologue
    .line 1534
    new-instance v5, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1535
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1536
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1537
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "transaction_id"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1551
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->PUT:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v2}, Lcom/pocketchange/android/PCSingleton$Configuration;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/pocketchange/android/PCSingleton$a$1;

    invoke-direct {v4, p0, v5, v6}, Lcom/pocketchange/android/PCSingleton$a$1;-><init>(Lcom/pocketchange/android/PCSingleton$a;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v5, Lcom/pocketchange/android/PCSingleton$a$2;

    invoke-direct {v5, p0, v6}, Lcom/pocketchange/android/PCSingleton$a$2;-><init>(Lcom/pocketchange/android/PCSingleton$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v0 .. v5}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    .line 1570
    return-void
.end method

.class Lcom/pocketchange/android/PCSingleton$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/JSONResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$a;->runWithErrors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/pocketchange/android/PCSingleton$a;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$a;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$a$1;->c:Lcom/pocketchange/android/PCSingleton$a;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$a$1;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a$1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1555
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$a$1;->c:Lcom/pocketchange/android/PCSingleton$a;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton;->i:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$a$1;->c:Lcom/pocketchange/android/PCSingleton$a;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1559
    return-void
.end method

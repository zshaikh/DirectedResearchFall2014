.class Lcom/pocketchange/android/PCSingleton$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/JSONResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$19;->offer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/pocketchange/android/PCSingleton$19;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$19;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$19$1;->c:Lcom/pocketchange/android/PCSingleton$19;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$19$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$19$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$1;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 770
    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton$19$1;->c:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v4, v4, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v4, v4, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 773
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$1;->c:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$19$1;->c:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v1, v1, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->c(Landroid/content/SharedPreferences$Editor;)V

    .line 774
    return-void
.end method

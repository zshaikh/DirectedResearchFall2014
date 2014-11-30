.class Lcom/pocketchange/android/PCSingleton$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/JSONResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$5;->offer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/pocketchange/android/PCSingleton$5;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$5;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$5$1;->c:Lcom/pocketchange/android/PCSingleton$5;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$5$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$5$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5$1;->c:Lcom/pocketchange/android/PCSingleton$5;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$5$1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/pocketchange/android/PCSingleton;->a(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 1056
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1057
    return-void
.end method

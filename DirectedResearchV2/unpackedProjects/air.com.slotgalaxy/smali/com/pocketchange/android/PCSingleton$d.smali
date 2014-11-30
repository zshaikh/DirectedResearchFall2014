.class Lcom/pocketchange/android/PCSingleton$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/JSONResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PCSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

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
    const-string v4, "rewards"

    .line 1446
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pocketchange/android/PCSingleton;->e:J

    .line 1447
    const-string v0, "signed_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    const-string v1, "signature"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1450
    const-string v3, "rewards"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1453
    :cond_0
    const-string v3, "rewards"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1454
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1455
    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v3}, Lcom/pocketchange/android/PCSingleton;->m()V

    .line 1456
    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v3}, Lcom/pocketchange/android/PCSingleton;->k()V

    .line 1457
    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v3, v2}, Lcom/pocketchange/android/PCSingleton;->a(Lorg/json/JSONArray;)V

    .line 1458
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v2}, Lcom/pocketchange/android/PCSingleton;->d(Lcom/pocketchange/android/PCSingleton;)V

    .line 1460
    :try_start_0
    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v2, v0, v1}, Lcom/pocketchange/android/PCSingleton;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$d;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->p()V

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    const-string v1, "PocketChange"

    const-string v2, "Error broadcasting product transactions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

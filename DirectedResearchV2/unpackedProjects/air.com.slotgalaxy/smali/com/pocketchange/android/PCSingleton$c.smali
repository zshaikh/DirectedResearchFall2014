.class Lcom/pocketchange/android/PCSingleton$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$c;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    const-string v7, "closeDelay"

    const-string v6, "cancelDelay"

    const-string v3, "url"

    .line 1155
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$c;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/PCSingleton;->b(J)V

    .line 1156
    const-string v0, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$c;->a:Lcom/pocketchange/android/PCSingleton;

    const-string v1, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->b(Ljava/lang/String;)V

    .line 1159
    :cond_0
    const-string v0, "closeDelay"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$c;->a:Lcom/pocketchange/android/PCSingleton;

    const-string v1, "closeDelay"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/PCSingleton;->c(J)V

    .line 1162
    :cond_1
    const-string v0, "cancelDelay"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$c;->a:Lcom/pocketchange/android/PCSingleton;

    const-string v1, "cancelDelay"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/PCSingleton;->d(J)V

    .line 1165
    :cond_2
    return-void

    .line 1157
    :cond_3
    const-string v1, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

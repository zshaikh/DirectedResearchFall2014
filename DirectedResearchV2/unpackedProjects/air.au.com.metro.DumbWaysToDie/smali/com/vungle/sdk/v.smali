.class public final Lcom/vungle/sdk/v;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 31
    new-array v2, v1, [Ljava/lang/String;

    .line 32
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 33
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 36
    :cond_1
    return-object v0
.end method

.class public Lcom/voxel/util/JSONWrapper;
.super Ljava/lang/Object;
.source "JSONWrapper.java"


# instance fields
.field private mObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    .line 14
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 30
    :goto_0
    return-object v1

    .line 28
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v2

    .line 30
    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/voxel/util/JSONWrapper;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    .local v0, "val":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    move v1, p2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/voxel/util/JSONWrapper;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    move v1, p2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 60
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v2

    .line 60
    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/voxel/util/JSONWrapper;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 51
    .local v0, "val":Ljava/lang/Long;
    if-nez v0, :cond_0

    move-wide v1, p2

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 45
    :goto_0
    return-object v1

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v3

    .line 45
    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Lcom/voxel/util/JSONWrapper;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    .local v1, "obj":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    move-object v2, v3

    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Lorg/json/JSONException;
    move-object v2, v3

    .line 74
    goto :goto_0

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Lcom/voxel/util/JSONWrapper;

    invoke-direct {v2, v1}, Lcom/voxel/util/JSONWrapper;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 20
    :goto_0
    return-object v1

    .line 19
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 20
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/voxel/util/JSONWrapper;->mObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

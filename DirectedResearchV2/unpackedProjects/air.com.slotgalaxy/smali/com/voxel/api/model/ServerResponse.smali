.class public Lcom/voxel/api/model/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private data:Lcom/voxel/util/JSONWrapper;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/voxel/api/ApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/api/model/ServerResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/voxel/api/model/ServerResponse;->statusCode:I

    .line 24
    new-instance v0, Lcom/voxel/util/JSONWrapper;

    invoke-direct {v0, p2}, Lcom/voxel/util/JSONWrapper;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    const/16 v0, 0xc8

    invoke-direct {p0, v0, p1}, Lcom/voxel/api/model/ServerResponse;-><init>(ILorg/json/JSONObject;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getAllKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    if-nez v2, :cond_1

    .line 44
    :cond_0
    return-object v0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    invoke-virtual {v2}, Lcom/voxel/util/JSONWrapper;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getData()Lcom/voxel/util/JSONWrapper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    return-object v0
.end method

.method protected getIntFromArray(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "field2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v1, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    if-nez v1, :cond_0

    move v1, v2

    .line 68
    :goto_0
    return v1

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    invoke-virtual {v1, p1}, Lcom/voxel/util/JSONWrapper;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Lorg/json/JSONException;
    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/voxel/api/model/ServerResponse;->statusCode:I

    return v0
.end method

.method protected getStringFromArray(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "field2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v1, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 58
    :goto_0
    return-object v1

    .line 55
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/voxel/api/model/ServerResponse;->data:Lcom/voxel/util/JSONWrapper;

    invoke-virtual {v1, p1}, Lcom/voxel/util/JSONWrapper;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Lorg/json/JSONException;
    move-object v1, v2

    .line 58
    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/voxel/api/model/ServerResponse;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

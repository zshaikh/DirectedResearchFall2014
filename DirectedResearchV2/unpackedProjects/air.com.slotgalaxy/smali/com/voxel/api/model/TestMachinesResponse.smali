.class public Lcom/voxel/api/model/TestMachinesResponse;
.super Ljava/lang/Object;
.source "TestMachinesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private response:Lcom/voxel/api/model/ServerResponse;

.field private testMachines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/TestMachinesResponse$TestMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/voxel/api/model/TestMachinesResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/api/model/TestMachinesResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/voxel/api/model/ServerResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/voxel/api/model/ServerResponse;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/voxel/api/model/TestMachinesResponse;->response:Lcom/voxel/api/model/ServerResponse;

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/voxel/api/model/TestMachinesResponse;->testMachines:Ljava/util/List;

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/api/model/TestMachinesResponse;->getAllDatacenters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    .local v0, "dc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/voxel/api/model/ServerResponse;->getData()Lcom/voxel/util/JSONWrapper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/voxel/util/JSONWrapper;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 26
    .local v6, "machines":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 27
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 28
    .local v4, "m":Lorg/json/JSONObject;
    new-instance v5, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;

    invoke-direct {v5}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;-><init>()V

    .line 29
    .local v5, "machine":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    # setter for: Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->datacenter:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->access$002(Lcom/voxel/api/model/TestMachinesResponse$TestMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    const-string v7, "host"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->host:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->access$102(Lcom/voxel/api/model/TestMachinesResponse$TestMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    const-string v7, "port"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    # setter for: Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->port:I
    invoke-static {v5, v7}, Lcom/voxel/api/model/TestMachinesResponse$TestMachine;->access$202(Lcom/voxel/api/model/TestMachinesResponse$TestMachine;I)I

    .line 32
    iget-object v7, p0, Lcom/voxel/api/model/TestMachinesResponse;->testMachines:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "dc":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "m":Lorg/json/JSONObject;
    .end local v5    # "machine":Lcom/voxel/api/model/TestMachinesResponse$TestMachine;
    .end local v6    # "machines":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 36
    .local v1, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/voxel/api/model/TestMachinesResponse;->TAG:Ljava/lang/String;

    const-string v8, "Error parsing machines"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllDatacenters()Ljava/util/List;
    .locals 1
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
    .line 45
    iget-object v0, p0, Lcom/voxel/api/model/TestMachinesResponse;->response:Lcom/voxel/api/model/ServerResponse;

    invoke-virtual {v0}, Lcom/voxel/api/model/ServerResponse;->getAllKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTestMachines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/voxel/api/model/TestMachinesResponse$TestMachine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/voxel/api/model/TestMachinesResponse;->testMachines:Ljava/util/List;

    return-object v0
.end method

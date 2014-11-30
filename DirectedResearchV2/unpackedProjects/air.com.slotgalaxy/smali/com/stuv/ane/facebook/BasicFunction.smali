.class public Lcom/stuv/ane/facebook/BasicFunction;
.super Ljava/lang/Object;
.source "BasicFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private _argIndex:I

.field private _passedArgs:[Lcom/adobe/fre/FREObject;

.field private _result:Lcom/adobe/fre/FREObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 26
    iput-object p2, p0, Lcom/stuv/ane/facebook/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/BasicFunction;->processCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getBool()Z
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/facebook/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDouble()D
    .locals 4

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/facebook/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 130
    :goto_0
    return-wide v1

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method protected getInt()I
    .locals 4

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/facebook/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/stuv/ane/facebook/BasicFunction;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/facebook/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/facebook/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processCall()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected setResult(D)V
    .locals 1
    .param p1, "data"    # D

    .prologue
    .line 71
    :try_start_0
    invoke-static {p1, p2}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setResult(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setResult(Z)V
    .locals 1
    .param p1, "data"    # Z

    .prologue
    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/facebook/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

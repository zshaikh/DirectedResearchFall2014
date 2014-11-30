.class public Lcom/stuv/ane/applovin/BasicFunction;
.super Ljava/lang/Object;
.source "BasicFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field protected _argIndex:I

.field protected _passedArgs:[Lcom/adobe/fre/FREObject;


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
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v2, 0x0

    .line 24
    iput-object p2, p0, Lcom/stuv/ane/applovin/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/stuv/ane/applovin/BasicFunction;->processCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 36
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 34
    goto :goto_0
.end method

.method protected getBool()Z
    .locals 4

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/applovin/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDouble()D
    .locals 4

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/applovin/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 89
    :goto_0
    return-wide v1

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method protected getInt()I
    .locals 4

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/applovin/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/stuv/ane/applovin/BasicFunction;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/applovin/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/applovin/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processCall()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

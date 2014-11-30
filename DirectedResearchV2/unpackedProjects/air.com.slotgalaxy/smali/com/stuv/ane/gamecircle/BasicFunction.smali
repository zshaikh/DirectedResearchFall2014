.class public Lcom/stuv/ane/gamecircle/BasicFunction;
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 31
    iput-object p2, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/BasicFunction;->processCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getBool()Z
    .locals 4

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getBytes()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v4, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    aget-object v0, v3, v4

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    .line 172
    .local v0, "ba":Lcom/adobe/fre/FREByteArray;
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 173
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 174
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 180
    .end local v0    # "ba":Lcom/adobe/fre/FREByteArray;
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v3

    .line 178
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getDouble()D
    .locals 4

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 152
    :goto_0
    return-wide v1

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method protected getInt()I
    .locals 4

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/BasicFunction;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_passedArgs:[Lcom/adobe/fre/FREObject;

    iget v2, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_argIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processCall()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected setResult(D)V
    .locals 1
    .param p1, "data"    # D

    .prologue
    .line 76
    :try_start_0
    invoke-static {p1, p2}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setResult(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setResult(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/adobe/fre/FREByteArray;->newByteArray()Lcom/adobe/fre/FREByteArray;

    move-result-object v1

    iput-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    .line 95
    iget-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    const-string v2, "length"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 97
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/adobe/fre/FREObject;

    .line 98
    .local v0, "params":[Lcom/adobe/fre/FREObject;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    .line 105
    .end local v0    # "params":[Lcom/adobe/fre/FREObject;
    :goto_1
    return-void

    .line 100
    .restart local v0    # "params":[Lcom/adobe/fre/FREObject;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    iget-object v1, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;

    const-string v2, "writeByte"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/fre/FREObject;->callMethod(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "params":[Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected setResult(Z)V
    .locals 1
    .param p1, "data"    # Z

    .prologue
    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stuv/ane/gamecircle/BasicFunction;->_result:Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/loopj/android/http/BinaryHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>()V

    .line 76
    sput-object p1, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 133
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 148
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 151
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 141
    .local v1, "response":[Ljava/lang/Object;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v1, v4

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v3, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_0

    .line 144
    .end local v1    # "response":[Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 145
    .restart local v1    # "response":[Ljava/lang/Object;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Throwable;

    aget-object v3, v1, v4

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->onSuccess(I[B)V

    .line 129
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    .line 96
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 97
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .param p1, "binaryData"    # [B

    .prologue
    .line 88
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 19
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 155
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 156
    .local v14, "status":Lorg/apache/http/StatusLine;
    const-string v16, "Content-Type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 157
    .local v6, "contentTypeHeaders":[Lorg/apache/http/Header;
    const/4 v13, 0x0

    .line 158
    .local v13, "responseBody":[B
    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 160
    new-instance v16, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const-string v18, "None, or more than one, Content-Type Header found!"

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 191
    .end local p1    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 163
    .restart local p1    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    const/16 v16, 0x0

    aget-object v5, v6, v16

    .line 164
    .local v5, "contentTypeHeader":Lorg/apache/http/Header;
    const/4 v10, 0x0

    .line 165
    .local v10, "foundAllowedContentType":Z
    sget-object v4, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v3, v4, v11

    .line 166
    .local v3, "anAllowedContentType":Ljava/lang/String;
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 167
    const/4 v10, 0x1

    .line 165
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 170
    .end local v3    # "anAllowedContentType":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_3

    .line 172
    new-instance v16, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const-string v18, "Content-Type not allowed!"

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 176
    :cond_3
    const/4 v8, 0x0

    .line 177
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 178
    .local v15, "temp":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_4

    .line 179
    new-instance v9, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v9, v15}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    move-object v8, v9

    .line 181
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 186
    .end local v15    # "temp":Lorg/apache/http/HttpEntity;
    .end local p1    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const/16 v17, 0x12c

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 187
    new-instance v16, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 182
    .restart local p1    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 183
    .local v7, "e":Ljava/io/IOException;
    const/16 p1, 0x0

    check-cast p1, [B

    .end local p1    # "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 189
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto/16 :goto_0
.end method

.method protected sendSuccessMessage(I[B)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method

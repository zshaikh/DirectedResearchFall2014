.class public Lcom/loopj/android/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# static fields
.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/loopj/android/http/AsyncHttpResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 184
    .local v1, "response":[Ljava/lang/Object;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleSuccessMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v1    # "response":[Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 188
    .restart local v1    # "response":[Ljava/lang/Object;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Throwable;

    aget-object v3, v1, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v1    # "response":[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleSuccessMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 169
    return-void
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "responseMessage"    # I
    .param p2, "response"    # Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :cond_0
    new-instance v0, Landroid/os/Message;

    .end local v0    # "msg":Landroid/os/Message;
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 213
    .restart local v0    # "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 214
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 152
    return-void
.end method

.method protected sendFinishMessage()V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 221
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 222
    .local v4, "status":Lorg/apache/http/StatusLine;
    const/4 v3, 0x0

    .line 224
    .local v3, "responseBody":Ljava/lang/String;
    const/4 v1, 0x0

    .line 225
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 226
    .local v5, "temp":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 227
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 234
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "temp":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_1

    .line 235
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6, v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 239
    :goto_1
    return-void

    .line 230
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 231
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {p0, v6, v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendSuccessMessage(ILjava/lang/String;)V

    goto :goto_1

    .line 230
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "temp":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_2
.end method

.method protected sendStartMessage()V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 156
    return-void
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

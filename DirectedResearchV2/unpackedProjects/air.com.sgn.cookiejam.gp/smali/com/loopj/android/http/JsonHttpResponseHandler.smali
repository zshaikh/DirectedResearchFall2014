.class public Lcom/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field protected static final SUCCESS_JSON_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p2, :cond_2

    .line 149
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "jsonResponse":Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 151
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "jsonResponse":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 163
    :goto_0
    return-void

    .line 152
    .restart local v1    # "jsonResponse":Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 153
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "jsonResponse":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 161
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "ex":Lorg/json/JSONException;
    .restart local v1    # "jsonResponse":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v1    # "jsonResponse":Ljava/lang/Object;
    :cond_2
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 120
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 115
    .local v1, "response":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->handleSuccessJsonMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSuccessJsonMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "jsonResponse"    # Ljava/lang/Object;

    .prologue
    .line 123
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 124
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "jsonResponse":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 130
    :goto_0
    return-void

    .line 125
    .restart local p2    # "jsonResponse":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 126
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "jsonResponse":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    goto :goto_0

    .line 128
    .restart local p2    # "jsonResponse":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Lorg/json/JSONArray;

    .prologue
    .line 88
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 84
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 85
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 73
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 62
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 136
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 139
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    .line 140
    move-object v0, p1

    .local v0, "result":Ljava/lang/String;
    move-object v1, v0

    .line 142
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "jsonResponse":Ljava/lang/Object;
    const/16 v2, 0x64

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "jsonResponse":Ljava/lang/Object;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0, v0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

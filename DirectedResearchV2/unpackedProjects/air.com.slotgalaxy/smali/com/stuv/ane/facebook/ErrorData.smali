.class public Lcom/stuv/ane/facebook/ErrorData;
.super Ljava/lang/Object;
.source "ErrorData.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$FacebookRequestError$Category:[I


# instance fields
.field private _dataObject:Lorg/json/JSONObject;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$FacebookRequestError$Category()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/stuv/ane/facebook/ErrorData;->$SWITCH_TABLE$com$facebook$FacebookRequestError$Category:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/FacebookRequestError$Category;->values()[Lcom/facebook/FacebookRequestError$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/stuv/ane/facebook/ErrorData;->$SWITCH_TABLE$com$facebook$FacebookRequestError$Category:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    .line 27
    return-void
.end method

.method private static getErrorCategory(Lcom/facebook/FacebookRequestError$Category;)Ljava/lang/String;
    .locals 2
    .param p0, "category"    # Lcom/facebook/FacebookRequestError$Category;

    .prologue
    .line 33
    invoke-static {}, Lcom/stuv/ane/facebook/ErrorData;->$SWITCH_TABLE$com$facebook$FacebookRequestError$Category()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    const-string v0, "retry"

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "reopenSession"

    goto :goto_0

    .line 39
    :pswitch_2
    const-string v0, "permissions"

    goto :goto_0

    .line 41
    :pswitch_3
    const-string v0, "server"

    goto :goto_0

    .line 43
    :pswitch_4
    const-string v0, "throttling"

    goto :goto_0

    .line 45
    :pswitch_5
    const-string v0, "facebookOther"

    goto :goto_0

    .line 47
    :pswitch_6
    const-string v0, "badRequest"

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addConnectionInfo(Ljava/net/HttpURLConnection;)Lcom/stuv/ane/facebook/ErrorData;
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-object p0

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "connectionUsingProxy"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "connectionMessage"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "connectionCode"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public addException(Ljava/lang/Exception;)Lcom/stuv/ane/facebook/ErrorData;
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    const-string v1, "exceptionId"

    .line 78
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-object p0

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookServiceException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v2, "exceptionId"

    const-string v3, "service"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/facebook/FacebookServiceException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/stuv/ane/facebook/ErrorData;->addRequestError(Lcom/facebook/FacebookRequestError;)Lcom/stuv/ane/facebook/ErrorData;

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v2, "exceptionDebug"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookDialogException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v2, "exceptionId"

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-object v2, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v3, "httpCode"

    move-object v0, p1

    check-cast v0, Lcom/facebook/FacebookDialogException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookAuthorizationException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v2, "exceptionId"

    const-string v3, "authorisation"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookGraphObjectException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v2, "exceptionId"

    const-string v3, "graph"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v2, "exceptionId"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public addRequestError(Lcom/facebook/FacebookRequestError;)Lcom/stuv/ane/facebook/ErrorData;
    .locals 3
    .param p1, "requestError"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "fbCode"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "fbSubCode"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "fbMessage"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "fbCategory"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getCategory()Lcom/facebook/FacebookRequestError$Category;

    move-result-object v2

    invoke-static {v2}, Lcom/stuv/ane/facebook/ErrorData;->getErrorCategory(Lcom/facebook/FacebookRequestError$Category;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "fbShouldNotifyUser"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "httpCode"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v1, "requestJson"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object p0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSessionInfo(Lcom/facebook/Session;)Lcom/stuv/ane/facebook/ErrorData;
    .locals 5
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-object p0

    .line 148
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v1, "info":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 153
    .local v0, "hasSession":Z
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v3, "sessionAccessToken"

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    iget-object v2, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v3, "sessionIsOpened"

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 155
    iget-object v2, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v3, "sessionIsClosed"

    invoke-virtual {p1}, Lcom/facebook/Session;->isClosed()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 156
    iget-object v2, p0, Lcom/stuv/ane/facebook/ErrorData;->_dataObject:Lorg/json/JSONObject;

    const-string v3, "sessionState"

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    goto :goto_0

    .line 150
    .end local v0    # "hasSession":Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

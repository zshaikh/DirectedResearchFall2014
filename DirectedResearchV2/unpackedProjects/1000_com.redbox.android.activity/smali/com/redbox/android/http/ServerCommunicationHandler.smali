.class public Lcom/redbox/android/http/ServerCommunicationHandler;
.super Ljava/lang/Object;
.source "ServerCommunicationHandler.java"


# static fields
.field private static instance:Lcom/redbox/android/http/ServerCommunicationHandler;


# instance fields
.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/redbox/android/http/ServerCommunicationHandler;->instance:Lcom/redbox/android/http/ServerCommunicationHandler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/redbox/android/http/ServerCommunicationHandler;

    invoke-direct {v0}, Lcom/redbox/android/http/ServerCommunicationHandler;-><init>()V

    sput-object v0, Lcom/redbox/android/http/ServerCommunicationHandler;->instance:Lcom/redbox/android/http/ServerCommunicationHandler;

    .line 27
    :cond_0
    sget-object v0, Lcom/redbox/android/http/ServerCommunicationHandler;->instance:Lcom/redbox/android/http/ServerCommunicationHandler;

    return-object v0
.end method


# virtual methods
.method public addCreditCard(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "zip"    # Ljava/lang/String;
    .param p7, "expiryYear"    # Ljava/lang/String;
    .param p8, "expiryMonth"    # Ljava/lang/String;
    .param p9, "storePassword"    # Z
    .param p10, "isPrefered"    # Z

    .prologue
    .line 269
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 270
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 269
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 271
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v1, "jsonBuffer":Ljava/lang/StringBuffer;
    const-string v2, "{\"ID\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v2, ",\"CardNumber\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\"IsPreferred\":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"Name\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v2, "\"Alias\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v2, "\"Zip\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string v2, "\"ExpMonth\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const-string v2, "\"ExpYear\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v2, "\"StoreCard\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v2, "\"__K\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->SAVE_CARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Post data :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public cartAddItem(Lcom/redbox/android/http/ServerCommunicationListener;ILjava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "movieId"    # I
    .param p3, "kioskId"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v2, "cartAddItem"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 80
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 79
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 82
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->CART_ADD_ITEM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"buy\":false,\"kiosk\":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public cartRefresh(Lcom/redbox/android/http/ServerCommunicationListener;Z)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "applyCredit"    # Z

    .prologue
    .line 58
    const-string v2, "cartAddItem"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 60
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 59
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 62
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->CART_REFRESH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"applyCredit\":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    const-string v4, ",\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public changePassword(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 309
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 308
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 310
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->CHANGE_PASSWORD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "urlBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"password1\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public conditionalGetAllMovies(Lcom/redbox/android/http/ServerCommunicationListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;

    .prologue
    const/4 v6, 0x0

    .line 116
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    invoke-direct {v0, p1, v6}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 118
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data.svc/Title/js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    const-string v2, "Conditional Get all movies"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 123
    invoke-static {v6}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/redbox/android/adapter/LocalDataStore;->getLastModified()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 124
    invoke-static {v6}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/redbox/android/adapter/LocalDataStore;->getEtag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 122
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->conditionalGet(Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public createAccount(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "captchaCode"    # Ljava/lang/String;
    .param p5, "hc"    # Ljava/lang/String;
    .param p6, "hcd"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating account using url : https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->CREATE_ACCOUNT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 203
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 202
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 205
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->CREATE_ACCOUNT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"userName\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    const-string v4, "\",\"password\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"captcha\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 209
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"captchaHc\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    const-string v4, "\",\"captchaHcd\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"persistentAuth\":\"true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    const-string v4, "\",\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public getAllMovies(Lcom/redbox/android/http/ServerCommunicationListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;

    .prologue
    .line 106
    const-string v2, "Getting all movies"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 108
    const/4 v2, 0x0

    .line 107
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 109
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data.svc/Title/js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->get(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public getCaptcha(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "serverCommunicationListener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 320
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 319
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 321
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "urlBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->get(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public getCards(Lcom/redbox/android/http/ServerCommunicationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;

    .prologue
    .line 90
    const-string v2, "GetCards"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 92
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 91
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 94
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->GET_CARDS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"__K\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public getKioskInventory(Lcom/redbox/android/http/KioskInventoryCallHandler;[I)V
    .locals 7
    .param p1, "kioskInventoryCallHandler"    # Lcom/redbox/android/http/KioskInventoryCallHandler;
    .param p2, "kioskID"    # [I

    .prologue
    .line 249
    const-string v4, "Gettign Kiosk inventory"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 251
    iget-object v4, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 250
    invoke-direct {v0, p1, v4}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 252
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    const/4 v4, 0x0

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "kioskArray":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-lt v1, v4, :cond_0

    .line 256
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    sget-object v5, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/redbox/android/utils/Configuration$URLS;->KIOSKSTATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"KioskIDs\":[\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"],"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"__K\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 261
    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v0, v4, v5}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 254
    .end local v3    # "urlbuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\",\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMovieDetail(Lcom/redbox/android/http/ServerCommunicationListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "id"    # I

    .prologue
    .line 150
    const-string v2, "Getting movie detail"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 152
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 151
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 154
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->MOVIE_DETAIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"titleID\":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public getNearbyKiosks(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "latitude"    # Ljava/lang/String;
    .param p3, "longitude"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v2, "Getting Kiosks"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 218
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 217
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 220
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->KIOSKS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"latitude\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 228
    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"longitude\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    const-string v4, "\"radius\":\"10\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"maxKiosks\":\"20\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public getcaptcha(Lcom/redbox/android/http/ServerCommunicationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;

    .prologue
    .line 186
    const-string v2, "Getting captcha"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 188
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 187
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 190
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->CAPTCHA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"__K\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public lookup(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v2, "Looking up address"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 236
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 235
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 237
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "http://maps.googleapis.com/maps/api/geocode/json?address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    const/16 v2, 0x20

    const/16 v3, 0x2b

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Geocode request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string v3, "&sensor=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sensor=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->get(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public makeLoginRequest(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 166
    iget-object v3, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 165
    invoke-direct {v0, p1, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 167
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/Configuration$URLS;->ACCOUNT_LOGIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "urlBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v1, "postBuffer":Ljava/lang/StringBuffer;
    const-string v3, "{\"userName\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 172
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 173
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 174
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 175
    const-string v4, ",\"password\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 176
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 177
    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 179
    const-string v4, "\",\"createPersistentCookie\":\"true\",\"mobile\":\"true\",\"__K\":"

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 180
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Post data :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public mobileInitCall(Lcom/redbox/android/http/ServerCommunicationListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;

    .prologue
    .line 130
    const-string v2, "Getting Init Key"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 134
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 135
    const-string v3, "http.connection.timeout"

    .line 136
    new-instance v4, Ljava/lang/Integer;

    const v5, 0x1d4c0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 134
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 138
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 139
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 138
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 141
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->MOBILE_INIT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "urlbuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v3, "{\"rbkey\":\"tQ5I/4Bfe2trr3hgf6bAlCluHV+6JhT1WNzG6MvrkQ4=\",\"__K\":\"\"}"

    .line 144
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public reserveMovie(Lcom/redbox/android/http/ServerCommunicationListener;Lcom/redbox/android/model/Card;Lcom/redbox/android/model/Cart;)V
    .locals 6
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "card"    # Lcom/redbox/android/model/Card;
    .param p3, "cart"    # Lcom/redbox/android/model/Cart;

    .prologue
    .line 32
    const-string v4, "reserveMovie"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 34
    iget-object v4, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 33
    invoke-direct {v1, p1, v4}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 36
    .local v1, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object v5, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/redbox/android/utils/Configuration$URLS;->RESERVE_MOVIE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, "urlbuffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "Card"

    invoke-virtual {p2}, Lcom/redbox/android/model/Card;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v4, "Cart"

    invoke-virtual {p3}, Lcom/redbox/android/model/Cart;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v4, "__K"

    sget-object v5, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    const-string v4, "Error while creating json object, cant make reserveMovie request"

    .line 49
    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lcom/redbox/android/http/ServerCommunicationListener;->connectionError(I)V

    goto :goto_0
.end method

.method public resetPassword(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 290
    iget-object v2, p0, Lcom/redbox/android/http/ServerCommunicationHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 289
    invoke-direct {v0, p1, v2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;-><init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 291
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    sget-object v3, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/redbox/android/utils/Configuration$URLS;->RESET_PASSWORD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "urlBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"email\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"__K\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {v0, v2, v3}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

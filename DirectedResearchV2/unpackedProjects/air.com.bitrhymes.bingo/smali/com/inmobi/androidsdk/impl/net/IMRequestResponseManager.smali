.class public final Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;
.super Ljava/lang/Object;
.source "IMRequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/IMUserInfo;)Lcom/inmobi/androidsdk/impl/IMAdUnit;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/IMAdException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v0, "x-mkhoj-ph"

    const-string v0, "UTF-8"

    const-string v2, "InMobiAndroidSDK_3.6.2"

    .line 252
    .line 255
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Http Status Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 259
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 260
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 259
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    .line 273
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    .line 275
    const-string v3, "x-mkhoj-ph"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    const-string v3, "x-mkhoj-ph"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 279
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 308
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 309
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "UTF-8"

    .line 308
    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 307
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 311
    invoke-static {v3}, Lcom/inmobi/androidsdk/impl/IMXMLParser;->buildAdUnitFromResponseData(Ljava/io/Reader;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v2

    .line 312
    const-string v3, "InMobiAndroidSDK_3.6.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retrieved AdUnit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v2, p1, v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/IMAdUnit;Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 318
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 314
    return-object v2

    .line 265
    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 315
    :catchall_0
    move-exception v0

    .line 317
    :goto_2
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 318
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 319
    throw v0

    .line 325
    :cond_1
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 326
    const-string v0, "Invalid Request. This may be because of invalid appId or appId might not be in \'active\' state."

    .line 325
    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "Server did not return 200."

    .line 328
    const/16 v2, 0x12c

    .line 327
    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 315
    :catchall_1
    move-exception v0

    move-object v1, v5

    goto :goto_2

    :cond_2
    move-object v0, v5

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Lcom/inmobi/androidsdk/impl/IMUserInfo;)Lcom/inmobi/androidsdk/impl/IMAdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/IMAdException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/IMUserInfo;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    .line 149
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 154
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    .line 152
    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "action-name"

    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 345
    const/4 v0, 0x0

    .line 349
    :try_start_0
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP Response Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 358
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    :cond_2
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 362
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_3

    const-string v2, "action-name"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    const-string v2, "action-name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 365
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 366
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->setNewAdActionType(Ljava/lang/String;)V

    .line 369
    :cond_3
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Redirection URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v1

    .line 353
    :catch_0
    move-exception v1

    .line 354
    const-string v2, "InMobiAndroidSDK_3.6.2"

    .line 355
    const-string v2, "Exception getting response code for redirection URL"

    .line 354
    invoke-static {v4, v2, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    .line 188
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-static {v0, p2, p3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)V

    .line 189
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private a(ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz p3, :cond_0

    .line 63
    invoke-interface {p3, p1, p2}, Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/inmobi/androidsdk/impl/IMAdUnit;Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setSendDeviceInfo(Z)V

    .line 339
    invoke-virtual {p1, p3}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setDeviceInfoUploadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 4

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 211
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 200
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 201
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 200
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 206
    return-void

    .line 203
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 204
    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 205
    throw v0

    .line 203
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 222
    const v0, 0xea60

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 223
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 224
    const-string v0, "user-agent"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "x-mkhoj-testmode"

    .line 226
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "YES"

    .line 225
    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 232
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    if-ne p2, v0, :cond_2

    .line 233
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 242
    :goto_1
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "x-mkhoj-adactiontype"

    .line 245
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getTestModeAdActionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getTestModeAdActionType()Ljava/lang/String;

    move-result-object v1

    .line 243
    :goto_2
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void

    .line 226
    :cond_1
    const-string v1, "NO"

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 236
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 237
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 238
    const-string v0, "content-type"

    .line 239
    const-string v1, "application/x-www-form-urlencoded"

    .line 238
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_3
    const-string v1, "web"

    goto :goto_2
.end method


# virtual methods
.method public asyncRequestAd(Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V
    .locals 8

    .prologue
    .line 70
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;-><init>(Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/IMUserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/IMHttpRequestCallback;)V

    .line 142
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$1;->start()V

    .line 144
    return-void
.end method

.method public doCancel()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 56
    :cond_0
    return-void
.end method

.method public getNewAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public initiateClick(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Landroid/view/MotionEvent;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/impl/IMUserInfo;",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    .line 161
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/inmobi/androidsdk/impl/net/IMHttpRequestBuilder;->appendClickParams(Ljava/lang/String;Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> Enter initiateClick, clickURL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 164
    const/4 v0, 0x0

    .line 165
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v2, "x-mkhoj-adactiontype"

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    :cond_0
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;

    invoke-direct {p0, v1, p2, v2}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/IMUserInfo;Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 173
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->isTestMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    const-string v3, "x-mkhoj-adactionType"

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNewAdActionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/IMRequestResponseManager;->a:Ljava/lang/String;

    .line 379
    return-void
.end method

.class public Lcom/fusepowered/fuseapi/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"


# static fields
.field private static final CONNECTION_TIMEOUT_IN_MS:I = 0xea60

.field private static final READ_TIMEOUT_IN_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "NetworkService"


# instance fields
.field imgFromCall:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "login"
    .parameter "pass"

    .prologue
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, source:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 454
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 455
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 456
    .local v1, netInfo:Landroid/net/NetworkInfo;
    const-string v2, ""

    .line 457
    .local v2, retValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 463
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "Not Connected"

    goto :goto_0
.end method

.method public static isWifiConnection(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 468
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 469
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 470
    .local v1, netInfo:Landroid/net/NetworkInfo;
    const-string v2, ""

    .line 471
    .local v2, retValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 474
    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const-string v3, "1"

    .line 480
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method private openHttpConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter "urlString"

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection_HoneyCombMR2(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection_AllOthers(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method private openHttpConnection_AllOthers(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 19
    .parameter "urlString"

    .prologue
    .line 151
    const/16 v13, 0x3f

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 152
    .local v7, marker:I
    const/4 v13, -0x1

    if-le v7, v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 153
    .local v5, host:Ljava/lang/String;
    :goto_0
    const/4 v13, -0x1

    if-le v7, v13, :cond_3

    add-int/lit8 v13, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 155
    .local v10, queryStr:Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .line 156
    .local v6, httpConn:Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 157
    .local v8, osw:Ljava/io/OutputStreamWriter;
    const/4 v11, -0x1

    .line 161
    .local v11, responseCode:I
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    .local v12, url:Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7           #marker:I
    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 163
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 164
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 165
    const-string v13, "POST"

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 166
    const v13, 0xea60

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 167
    const v13, 0x1d4c0

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 168
    const-string v13, "Content-Length"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v13, "Content-Language"

    const-string v14, "en-US"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v13, "jimmyjimmyjango"

    const-string v14, "1Qdow7mFZMh7"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/fuseapi/NetworkService;->getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, encodedAuthorization:Ljava/lang/String;
    const-string v13, "Authorization"

    invoke-virtual {v6, v13, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 173
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 176
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v8           #osw:Ljava/io/OutputStreamWriter;
    .local v9, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 181
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v11

    .line 191
    if-eqz v9, :cond_0

    .line 193
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    :cond_0
    :goto_2
    if-eqz v6, :cond_7

    const/16 v13, 0xc8

    if-eq v11, v13, :cond_7

    .line 200
    const-string v13, "FuseAPI"

    const-string v14, "Unexpected response code %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    const/4 v6, 0x0

    move-object v8, v9

    .line 205
    .end local v4           #encodedAuthorization:Ljava/lang/String;
    .end local v9           #osw:Ljava/io/OutputStreamWriter;
    .end local v12           #url:Ljava/net/URL;
    .restart local v8       #osw:Ljava/io/OutputStreamWriter;
    :cond_1
    :goto_3
    return-object v6

    .end local v5           #host:Ljava/lang/String;
    .end local v6           #httpConn:Ljava/net/HttpURLConnection;
    .end local v8           #osw:Ljava/io/OutputStreamWriter;
    .end local v10           #queryStr:Ljava/lang/String;
    .end local v11           #responseCode:I
    .restart local v7       #marker:I
    :cond_2
    move-object/from16 v5, p1

    .line 152
    goto/16 :goto_0

    .line 153
    .restart local v5       #host:Ljava/lang/String;
    :cond_3
    const-string v13, ""

    move-object v10, v13

    goto/16 :goto_1

    .line 186
    .end local v7           #marker:I
    .restart local v6       #httpConn:Ljava/net/HttpURLConnection;
    .restart local v8       #osw:Ljava/io/OutputStreamWriter;
    .restart local v10       #queryStr:Ljava/lang/String;
    .restart local v11       #responseCode:I
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 187
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v13, "FuseAPI"

    const-string v14, "Unexpected network problem"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    if-eqz v8, :cond_4

    .line 193
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 199
    :cond_4
    :goto_5
    if-eqz v6, :cond_1

    const/16 v13, 0xc8

    if-eq v11, v13, :cond_1

    .line 200
    const-string v13, "FuseAPI"

    const-string v14, "Unexpected response code %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    const/4 v6, 0x0

    goto :goto_3

    .line 191
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v8, :cond_5

    .line 193
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 199
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    const/16 v14, 0xc8

    if-eq v11, v14, :cond_6

    .line 200
    const-string v14, "FuseAPI"

    const-string v15, "Unexpected response code %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    const/4 v6, 0x0

    :cond_6
    throw v13

    .line 195
    .end local v8           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #encodedAuthorization:Ljava/lang/String;
    .restart local v9       #osw:Ljava/io/OutputStreamWriter;
    .restart local v12       #url:Ljava/net/URL;
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .end local v4           #encodedAuthorization:Ljava/lang/String;
    .end local v9           #osw:Ljava/io/OutputStreamWriter;
    .end local v12           #url:Ljava/net/URL;
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v8       #osw:Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v13

    goto :goto_5

    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    goto :goto_7

    .line 191
    .end local v8           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #encodedAuthorization:Ljava/lang/String;
    .restart local v9       #osw:Ljava/io/OutputStreamWriter;
    .restart local v12       #url:Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9           #osw:Ljava/io/OutputStreamWriter;
    .restart local v8       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 186
    .end local v8           #osw:Ljava/io/OutputStreamWriter;
    .restart local v9       #osw:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v13

    move-object v3, v13

    move-object v8, v9

    .end local v9           #osw:Ljava/io/OutputStreamWriter;
    .restart local v8       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .end local v8           #osw:Ljava/io/OutputStreamWriter;
    .restart local v9       #osw:Ljava/io/OutputStreamWriter;
    :cond_7
    move-object v8, v9

    .end local v9           #osw:Ljava/io/OutputStreamWriter;
    .restart local v8       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private openHttpConnection_HoneyCombMR2(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 20
    .parameter "urlString"

    .prologue
    .line 210
    const/16 v14, 0x3f

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 211
    .local v7, marker:I
    const/4 v14, -0x1

    if-le v7, v14, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 212
    .local v5, host:Ljava/lang/String;
    :goto_0
    const/4 v14, -0x1

    if-le v7, v14, :cond_3

    add-int/lit8 v14, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 214
    .local v11, queryStr:Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .line 215
    .local v6, httpConn:Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 216
    .local v8, out:Ljava/io/BufferedOutputStream;
    const/4 v12, -0x1

    .line 220
    .local v12, responseCode:I
    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 221
    .local v13, url:Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7           #marker:I
    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 223
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 224
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 225
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 226
    const-string v14, "POST"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    const/16 v14, 0x2710

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 228
    const/16 v14, 0x2710

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 229
    const-string v14, "jimmyjimmyjango"

    const-string v15, "1Qdow7mFZMh7"

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/fuseapi/NetworkService;->getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, encodedAuthorization:Ljava/lang/String;
    const-string v14, "Authorization"

    invoke-virtual {v6, v14, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v14, "Content-Language"

    const-string v15, "en-US"

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 235
    .local v10, queryBytes:[B
    array-length v14, v10

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 238
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v8           #out:Ljava/io/BufferedOutputStream;
    .local v9, out:Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 240
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 243
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v12

    .line 253
    if-eqz v9, :cond_0

    .line 255
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    :cond_0
    :goto_2
    if-eqz v6, :cond_7

    const/16 v14, 0xc8

    if-eq v12, v14, :cond_7

    .line 262
    const-string v14, "FuseAPI"

    const-string v15, "Unexpected response code %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    const/4 v6, 0x0

    move-object v8, v9

    .line 267
    .end local v4           #encodedAuthorization:Ljava/lang/String;
    .end local v9           #out:Ljava/io/BufferedOutputStream;
    .end local v10           #queryBytes:[B
    .end local v13           #url:Ljava/net/URL;
    .restart local v8       #out:Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_3
    return-object v6

    .end local v5           #host:Ljava/lang/String;
    .end local v6           #httpConn:Ljava/net/HttpURLConnection;
    .end local v8           #out:Ljava/io/BufferedOutputStream;
    .end local v11           #queryStr:Ljava/lang/String;
    .end local v12           #responseCode:I
    .restart local v7       #marker:I
    :cond_2
    move-object/from16 v5, p1

    .line 211
    goto/16 :goto_0

    .line 212
    .restart local v5       #host:Ljava/lang/String;
    :cond_3
    const-string v14, ""

    move-object v11, v14

    goto/16 :goto_1

    .line 248
    .end local v7           #marker:I
    .restart local v6       #httpConn:Ljava/net/HttpURLConnection;
    .restart local v8       #out:Ljava/io/BufferedOutputStream;
    .restart local v11       #queryStr:Ljava/lang/String;
    .restart local v12       #responseCode:I
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 249
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v14, "FuseAPI"

    const-string v15, "Unexpected network problem"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-eqz v8, :cond_4

    .line 255
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 261
    :cond_4
    :goto_5
    if-eqz v6, :cond_1

    const/16 v14, 0xc8

    if-eq v12, v14, :cond_1

    .line 262
    const-string v14, "FuseAPI"

    const-string v15, "Unexpected response code %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    const/4 v6, 0x0

    goto :goto_3

    .line 253
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v8, :cond_5

    .line 255
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 261
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    const/16 v15, 0xc8

    if-eq v12, v15, :cond_6

    .line 262
    const-string v15, "FuseAPI"

    const-string v16, "Unexpected response code %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    const/4 v6, 0x0

    :cond_6
    throw v14

    .line 257
    .end local v8           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #encodedAuthorization:Ljava/lang/String;
    .restart local v9       #out:Ljava/io/BufferedOutputStream;
    .restart local v10       #queryBytes:[B
    .restart local v13       #url:Ljava/net/URL;
    :catch_1
    move-exception v14

    goto/16 :goto_2

    .end local v4           #encodedAuthorization:Ljava/lang/String;
    .end local v9           #out:Ljava/io/BufferedOutputStream;
    .end local v10           #queryBytes:[B
    .end local v13           #url:Ljava/net/URL;
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v8       #out:Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v14

    goto :goto_5

    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v15

    goto :goto_7

    .line 253
    .end local v8           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #encodedAuthorization:Ljava/lang/String;
    .restart local v9       #out:Ljava/io/BufferedOutputStream;
    .restart local v10       #queryBytes:[B
    .restart local v13       #url:Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9           #out:Ljava/io/BufferedOutputStream;
    .restart local v8       #out:Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 248
    .end local v8           #out:Ljava/io/BufferedOutputStream;
    .restart local v9       #out:Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v14

    move-object v3, v14

    move-object v8, v9

    .end local v9           #out:Ljava/io/BufferedOutputStream;
    .restart local v8       #out:Ljava/io/BufferedOutputStream;
    goto :goto_4

    .end local v8           #out:Ljava/io/BufferedOutputStream;
    .restart local v9       #out:Ljava/io/BufferedOutputStream;
    :cond_7
    move-object v8, v9

    .end local v9           #out:Ljava/io/BufferedOutputStream;
    .restart local v8       #out:Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public createImageButton(Ljava/lang/String;Landroid/widget/ImageButton;)V
    .locals 3
    .parameter "URL"
    .parameter "imgB"

    .prologue
    .line 397
    new-instance v0, Lcom/fusepowered/fuseapi/NetworkService$1;

    invoke-direct {v0, p0, p2}, Lcom/fusepowered/fuseapi/NetworkService$1;-><init>(Lcom/fusepowered/fuseapi/NetworkService;Landroid/widget/ImageButton;)V

    .line 449
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method public downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 110
    .local v1, conn:Ljava/net/HttpURLConnection;
    if-eqz v1, :cond_1

    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 114
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    if-eqz v3, :cond_0

    .line 122
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 130
    .end local v3           #is:Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v0

    .line 116
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 117
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "FuseAPI"

    const-string v5, "Error decoding bitmap"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v3, :cond_2

    .line 122
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 122
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 127
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    .line 124
    :catch_1
    move-exception v4

    goto :goto_0

    .restart local v2       #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method public downloadImage2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "url"

    .prologue
    const/4 v11, 0x0

    const-string v9, "Error downloading bitmap"

    const-string v9, "FuseAPI"

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 356
    .local v4, httpClient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 359
    .local v5, request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 370
    .local v6, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 371
    .local v8, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 372
    .local v7, statusCode:I
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_0

    .line 373
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 374
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 375
    .local v1, bytes:[B
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 389
    .end local v1           #bytes:[B
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .end local v5           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    .end local v8           #statusLine:Lorg/apache/http/StatusLine;
    :goto_1
    move-object v9, v0

    .line 392
    :goto_2
    return-object v9

    .line 361
    .restart local v5       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v2

    .line 362
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    const-string v9, "FuseAPI"

    const-string v10, "Error downloading bitmap"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 389
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v9, v11

    goto :goto_2

    .line 365
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 366
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    const-string v9, "FuseAPI"

    const-string v10, "Error downloading bitmap"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 389
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v9, v11

    goto :goto_2

    .line 378
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    .restart local v8       #statusLine:Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_5
    const-string v9, "FuseAPI"

    const-string v10, "Error downloading bitmap -- response code: %d reason: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 382
    .end local v5           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    .end local v8           #statusLine:Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 383
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_6
    const-string v9, "FuseAPI"

    const-string v10, "Error decoding bitmap"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 389
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v9
.end method

.method public sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 71
    const-string v7, ""

    .line 72
    .local v7, response:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService;->openHttpConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 73
    .local v3, conn:Ljava/net/HttpURLConnection;
    if-eqz v3, :cond_3

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, in:Ljava/io/Reader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v0, buf:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    .end local v5           #in:Ljava/io/Reader;
    .local v6, in:Ljava/io/Reader;
    const/4 v2, 0x0

    .line 79
    .local v2, charsRead:I
    const/16 v8, 0x3e8

    :try_start_1
    new-array v1, v8, [C

    .line 80
    .local v1, charBuf:[C
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {v6, v1, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v8, -0x1

    if-le v2, v8, :cond_1

    .line 81
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v1           #charBuf:[C
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v2           #charsRead:I
    .end local v6           #in:Ljava/io/Reader;
    .restart local v5       #in:Ljava/io/Reader;
    :goto_1
    if-eqz v5, :cond_0

    .line 87
    :try_start_2
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    .line 85
    .end local v5           #in:Ljava/io/Reader;
    .restart local v1       #charBuf:[C
    .restart local v2       #charsRead:I
    .restart local v6       #in:Ljava/io/Reader;
    :cond_1
    if-eqz v6, :cond_2

    .line 87
    :try_start_3
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, encodedText:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    .end local v7           #response:Ljava/lang/String;
    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 100
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #charBuf:[C
    .end local v2           #charsRead:I
    .end local v4           #encodedText:Ljava/lang/String;
    .end local v6           #in:Ljava/io/Reader;
    .restart local v7       #response:Ljava/lang/String;
    :cond_3
    return-object v7

    .line 89
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v1       #charBuf:[C
    .restart local v2       #charsRead:I
    .restart local v6       #in:Ljava/io/Reader;
    :catch_0
    move-exception v8

    goto :goto_3

    .end local v1           #charBuf:[C
    .end local v2           #charsRead:I
    .end local v6           #in:Ljava/io/Reader;
    .restart local v5       #in:Ljava/io/Reader;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 85
    :catchall_1
    move-exception v8

    goto :goto_1
.end method

.method public sendRequest(Ljava/lang/String;Lcom/fusepowered/util/ActionType;)Ljava/lang/String;
    .locals 19
    .parameter "json"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, encodedJson:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/fusepowered/util/ActionType;->getServerUrlForActionCode(Lcom/fusepowered/util/ActionType;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, hostUrl:Ljava/lang/String;
    const/16 v16, 0x3f

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 295
    .local v10, marker:I
    const/16 v16, -0x1

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    .line 297
    .local v8, host:Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 298
    .local v3, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    .line 299
    .local v12, params:Lorg/apache/http/params/HttpParams;
    const v16, 0xea60

    move-object v0, v12

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 300
    const v16, 0x1d4c0

    move-object v0, v12

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 302
    const-string v16, "jimmyjimmyjango"

    const-string v17, "1Qdow7mFZMh7"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/fuseapi/NetworkService;->getB64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, encodedAuthorization:Ljava/lang/String;
    :try_start_0
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v13, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 310
    .local v13, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v16, "Authorization"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v16, "Content-Language"

    const-string v17, "en-US"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v11, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "api_ver"

    const-string v18, "1.34.3"

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "d"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v16, "UTF-8"

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 321
    .local v14, reqEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 324
    new-instance v15, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v15}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 325
    .local v15, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-interface {v3, v13, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .local v7, encodedResponse:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 336
    new-instance v4, Ljava/lang/String;

    const/16 v16, 0x0

    move-object v0, v7

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 340
    .local v4, decodedResponse:Ljava/lang/String;
    return-object v4

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #decodedResponse:Ljava/lang/String;
    .end local v5           #encodedAuthorization:Ljava/lang/String;
    .end local v7           #encodedResponse:Ljava/lang/String;
    .end local v8           #host:Ljava/lang/String;
    .end local v11           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v12           #params:Lorg/apache/http/params/HttpParams;
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #reqEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v15           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :cond_0
    move-object v8, v9

    .line 295
    goto/16 :goto_0

    .line 334
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v5       #encodedAuthorization:Ljava/lang/String;
    .restart local v8       #host:Ljava/lang/String;
    .restart local v12       #params:Lorg/apache/http/params/HttpParams;
    :catchall_0
    move-exception v16

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v16
.end method

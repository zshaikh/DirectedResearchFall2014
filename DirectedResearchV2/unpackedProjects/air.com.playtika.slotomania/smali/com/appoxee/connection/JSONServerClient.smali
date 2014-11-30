.class public abstract Lcom/appoxee/connection/JSONServerClient;
.super Ljava/lang/Object;
.source "JSONServerClient.java"


# instance fields
.field protected mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appoxee/connection/JSONServerClient;->mClient:Lorg/apache/http/client/HttpClient;

    .line 45
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 46
    .local v0, "my_httpParams":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getConnectionTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 47
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getConnectionTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 49
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/appoxee/connection/JSONServerClient;->mClient:Lorg/apache/http/client/HttpClient;

    .line 51
    return-void
.end method

.method private getAuth()Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, "auth":Lorg/json/JSONObject;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 58
    .local v11, "timestamp":Ljava/lang/Long;
    invoke-static {}, Lcom/appoxee/utils/RandomString;->getString()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "random":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppSDKId()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "id":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getmAppSecret()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "secret":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "signatureString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 67
    .local v7, "signature":Ljava/lang/String;
    :try_start_0
    const-string v12, "UTF-8"

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 68
    .local v1, "bytesOfMessage":[B
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 69
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 70
    .local v10, "thedigest":[B
    new-instance v8, Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v7    # "signature":Ljava/lang/String;
    .local v8, "signature":Ljava/lang/String;
    :try_start_1
    const-string v12, "timestamp"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v12, "signature"

    invoke-virtual {v0, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v12, "AppSDKKey"

    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v12, "random"

    invoke-virtual {v0, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v7, v8

    .line 85
    .end local v1    # "bytesOfMessage":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v8    # "signature":Ljava/lang/String;
    .end local v10    # "thedigest":[B
    .restart local v7    # "signature":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 78
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 79
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v12

    move-object v2, v12

    .line 80
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 81
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v12

    move-object v2, v12

    .line 82
    .local v2, "e":Lorg/json/JSONException;
    :goto_3
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 81
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "signature":Ljava/lang/String;
    .restart local v1    # "bytesOfMessage":[B
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v8    # "signature":Ljava/lang/String;
    .restart local v10    # "thedigest":[B
    :catch_3
    move-exception v12

    move-object v2, v12

    move-object v7, v8

    .end local v8    # "signature":Ljava/lang/String;
    .restart local v7    # "signature":Ljava/lang/String;
    goto :goto_3

    .line 79
    .end local v7    # "signature":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/lang/String;
    :catch_4
    move-exception v12

    move-object v2, v12

    move-object v7, v8

    .end local v8    # "signature":Ljava/lang/String;
    .restart local v7    # "signature":Ljava/lang/String;
    goto :goto_2

    .line 77
    .end local v7    # "signature":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/lang/String;
    :catch_5
    move-exception v12

    move-object v2, v12

    move-object v7, v8

    .end local v8    # "signature":Ljava/lang/String;
    .restart local v7    # "signature":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized call(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x0

    .line 98
    monitor-enter p0

    const/4 v5, 0x0

    .line 101
    .local v5, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    const-string v8, "auth"

    invoke-direct {p0}, Lcom/appoxee/connection/JSONServerClient;->getAuth()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->GetUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 105
    .local v7, "server":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Calling Appoxee Server:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 106
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 108
    iget-object v8, p0, Lcom/appoxee/connection/JSONServerClient;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v8, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 110
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 111
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "result":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 115
    const-string v8, "JSONServerClient.call empty responce!"

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v11

    .line 161
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "server":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    monitor-exit p0

    return-object v8

    .line 118
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "server":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Responce: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v4, 0x0

    .line 124
    .local v4, "jso":Lorg/json/JSONObject;
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jso":Lorg/json/JSONObject;
    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .restart local v4    # "jso":Lorg/json/JSONObject;
    :goto_1
    const/4 v5, 0x0

    move-object v8, v4

    .line 132
    goto :goto_0

    .line 125
    .end local v4    # "jso":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 126
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "JSONException : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 127
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    const/4 v4, 0x0

    .restart local v4    # "jso":Lorg/json/JSONObject;
    goto :goto_1

    .line 134
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "jso":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "server":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 135
    .local v1, "e":Ljava/net/SocketException;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SocketException: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 136
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/net/SocketException;
    :goto_2
    move-object v8, v11

    .line 161
    goto :goto_0

    .line 137
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 138
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ClientProtocolException: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 139
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 98
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 140
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 141
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 142
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    move-object v1, v8

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_1

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "JSONServerClient.call error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :try_start_6
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/apache/http/ParseException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 150
    :catch_5
    move-exception v8

    move-object v2, v8

    .line 151
    .local v2, "e2":Lorg/apache/http/ParseException;
    :try_start_7
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 152
    .end local v2    # "e2":Lorg/apache/http/ParseException;
    :catch_6
    move-exception v8

    move-object v2, v8

    .line 153
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 156
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HttpPost error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

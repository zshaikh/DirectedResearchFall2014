.class public Lcom/fiksu/asotracking/FiksuConfigurationManager;
.super Ljava/lang/Object;
.source "FiksuConfigurationManager.java"


# static fields
.field private static final INSTANCE:Lcom/fiksu/asotracking/FiksuConfigurationManager;


# instance fields
.field private final mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

.field private final mIsUpdatingConfiguration:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/fiksu/asotracking/FiksuConfigurationManager;

    invoke-direct {v0}, Lcom/fiksu/asotracking/FiksuConfigurationManager;-><init>()V

    sput-object v0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->INSTANCE:Lcom/fiksu/asotracking/FiksuConfigurationManager;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/fiksu/asotracking/FiksuConfiguration;

    invoke-direct {v0}, Lcom/fiksu/asotracking/FiksuConfiguration;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mIsUpdatingConfiguration:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/fiksu/asotracking/FiksuConfigurationManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mIsUpdatingConfiguration:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiksu/asotracking/FiksuConfigurationManager;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfigurationFromServerBlocking(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 253
    .local v0, "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    const-string v1, "FiksuTracking"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught IllegalArgumentException while creating http client: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->INSTANCE:Lcom/fiksu/asotracking/FiksuConfigurationManager;

    return-object v0
.end method

.method private static final getSynchUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://sdk.fiksu.com/config/FiksuConfiguration_android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "50010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final readContentsFromServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const-string v13, "]: "

    const-string v12, "FiksuTracking"

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 185
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    if-nez v0, :cond_0

    move-object v8, v11

    .line 216
    .end local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v8

    .line 188
    .restart local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 190
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 191
    .local v6, "statusCode":I
    const-string v8, "FiksuTracking"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Status code for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    const/16 v8, 0x194

    if-ne v6, v8, :cond_1

    .line 196
    const-string v8, ""

    goto :goto_0

    .line 199
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 205
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 206
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 210
    .local v4, "line":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 213
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 219
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 220
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v9

    goto :goto_0

    .line 200
    .end local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "statusCode":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 201
    .local v3, "ioException":Ljava/io/IOException;
    const-string v8, "FiksuTracking"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Caught IOException reading from url ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 202
    goto/16 :goto_0

    .line 211
    .end local v3    # "ioException":Ljava/io/IOException;
    .restart local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "statusCode":I
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 214
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 215
    .restart local v3    # "ioException":Ljava/io/IOException;
    :try_start_5
    const-string v8, "FiksuTracking"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Caught IOException reading input stream from url ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 220
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    move-object v8, v11

    .line 216
    goto/16 :goto_0

    .line 217
    .end local v3    # "ioException":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 219
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 220
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 224
    :goto_3
    throw v8

    .line 221
    :catch_3
    move-exception v9

    goto :goto_3

    .restart local v3    # "ioException":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method private setSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 81
    const-string v0, "FiksuTracking"

    const-string v1, "Context is null so we cannot load configuration from SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "FiksuConfigurationSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method private final updateConfigurationFromServerBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 145
    invoke-static {p1, p2}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->readContentsFromServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "json":Ljava/lang/String;
    if-nez v0, :cond_0

    move v2, v5

    .line 167
    :goto_0
    return v2

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    invoke-virtual {v2}, Lcom/fiksu/asotracking/FiksuConfiguration;->updateLastUpdateTimestamp()V

    .line 153
    iget-object v2, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    iget-object v3, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Lcom/fiksu/asotracking/FiksuConfiguration;->writeToSharedPreferences(Landroid/content/SharedPreferences;)Z

    move v2, v4

    .line 154
    goto :goto_0

    .line 160
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/fiksu/asotracking/FiksuConfiguration;->readFromJSONObject(Lorg/json/JSONObject;)Z

    .line 162
    iget-object v2, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    iget-object v3, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Lcom/fiksu/asotracking/FiksuConfiguration;->writeToSharedPreferences(Landroid/content/SharedPreferences;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 166
    .local v1, "jsonException":Lorg/json/JSONException;
    const-string v2, "FiksuTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught JSONException parsing data from ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 167
    goto :goto_0
.end method


# virtual methods
.method public final getFiksuConfiguration()Lcom/fiksu/asotracking/FiksuConfiguration;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    return-object v0
.end method

.method protected final initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuConfiguration;->readFromSharedPreferences(Landroid/content/SharedPreferences;)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuConfiguration;->hasEverSynchedWithServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfiguration(Landroid/content/Context;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfiguration(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final setDebugModeEnabled(Z)V
    .locals 1
    .param p1, "debugModeEnabled"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    invoke-virtual {v0, p1}, Lcom/fiksu/asotracking/FiksuConfiguration;->setDebugModeEnabled(Z)V

    .line 270
    return-void
.end method

.method protected final updateConfiguration(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mFiksuConfiguration:Lcom/fiksu/asotracking/FiksuConfiguration;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuConfiguration;->isUpToDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 102
    invoke-static {p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getSynchUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfigurationFromServerInTheBackground(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final updateConfigurationFromServerInTheBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuConfigurationManager;->mIsUpdatingConfiguration:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/fiksu/asotracking/FiksuConfigurationManager$1;-><init>(Lcom/fiksu/asotracking/FiksuConfigurationManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    :cond_0
    return-void
.end method

.class Lcom/somo/apptimiser/SomoNetworkAgent;
.super Ljava/lang/Object;
.source "SomoNetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoNetworkAgent$1;,
        Lcom/somo/apptimiser/SomoNetworkAgent$JsonFields;
    }
.end annotation


# static fields
.field private static final ERROR_DELAY_PERIOD:I = 0x36ee80

.field private static final HTTP_CLIENT:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static final UNKOWN_HOST_DELAY_PERIOD:I = 0x1499700

.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private final DATE_FMT_2:Ljava/text/SimpleDateFormat;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final mApplicationId:I

.field private final mCipher:Lcom/somo/apptimiser/SomoEncryption;

.field private final uploadUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x3a98

    const/4 v6, 0x0

    .line 55
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v1

    sput-object v1, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 75
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-string v1, "http.conn-manager.max-total"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 76
    const-string v1, "http.conn-manager.max-per-route"

    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 78
    const-string v1, "http.protocol.expect-continue"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 79
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%1$s/%2$s (Linux; Android)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "2.0.0"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 83
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 84
    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 85
    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 86
    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 87
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    invoke-static {v0, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 90
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/somo/apptimiser/SomoNetworkAgent;->HTTP_CLIENT:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;ILcom/somo/apptimiser/SomoEncryption;)V
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "applicationId"    # I
    .param p3, "cipher"    # Lcom/somo/apptimiser/SomoEncryption;

    .prologue
    .line 94
    sget-object v2, Lcom/somo/apptimiser/SomoNetworkAgent;->HTTP_CLIENT:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v0, Lcom/somo/apptimiser/SomoNetworkAgent;->HTTP_CLIENT:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/somo/apptimiser/SomoNetworkAgent;-><init>(Landroid/net/Uri;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/CookieStore;ILcom/somo/apptimiser/SomoEncryption;)V

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/CookieStore;ILcom/somo/apptimiser/SomoEncryption;)V
    .locals 2
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p3, "cookieStore"    # Lorg/apache/http/client/CookieStore;
    .param p4, "applicationId"    # I
    .param p5, "cipher"    # Lcom/somo/apptimiser/SomoEncryption;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->DATE_FMT_2:Ljava/text/SimpleDateFormat;

    .line 99
    const-string v0, "bulk/v3"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->uploadUri:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 101
    iput-object p5, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->mCipher:Lcom/somo/apptimiser/SomoEncryption;

    .line 102
    iput p4, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->mApplicationId:I

    .line 103
    return-void
.end method

.method private finish(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 110
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 113
    :cond_0
    return-void
.end method

.method private getFormattedDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->DATE_FMT_2:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 145
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 143
    .restart local p1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Cannot format date value \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getParams(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 12
    .param p1, "event"    # Landroid/content/ContentValues;

    .prologue
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v5, "params":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/somo/apptimiser/SomoEvent$EventFields;->values()[Lcom/somo/apptimiser/SomoEvent$EventFields;

    move-result-object v0

    .local v0, "arr$":[Lcom/somo/apptimiser/SomoEvent$EventFields;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 162
    .local v1, "field":Lcom/somo/apptimiser/SomoEvent$EventFields;
    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 166
    sget-object v7, Lcom/somo/apptimiser/SomoNetworkAgent$1;->$SwitchMap$com$somo$apptimiser$SomoEvent$EventFields:[I

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 171
    :goto_1
    invoke-direct {p0, v6}, Lcom/somo/apptimiser/SomoNetworkAgent;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/somo/apptimiser/SomoNetworkAgent;->getFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 177
    .end local v1    # "field":Lcom/somo/apptimiser/SomoEvent$EventFields;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 178
    sget-object v7, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v8, "Params for event %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "_id"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private toJson(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 196
    .local v0, "array":Lorg/json/JSONArray;
    const-string v5, "application_id"

    iget v6, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->mApplicationId:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v5, "application_key"

    iget-object v6, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->mCipher:Lcom/somo/apptimiser/SomoEncryption;

    invoke-virtual {v6}, Lcom/somo/apptimiser/SomoEncryption;->getSessionKeyAsBase64()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/somo/apptimiser/SomoEvent;

    .line 200
    .local v1, "event":Lcom/somo/apptimiser/SomoEvent;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .local v4, "params":Lorg/json/JSONObject;
    const-string v5, "params"

    iget-object v6, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->mCipher:Lcom/somo/apptimiser/SomoEncryption;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/somo/apptimiser/SomoNetworkAgent;->getParams(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/somo/apptimiser/SomoEncryption;->getEncrypted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 204
    .end local v1    # "event":Lcom/somo/apptimiser/SomoEvent;
    .end local v4    # "params":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "events"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    sget-object v5, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v6, "JSON: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    return-object v3
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Broken VM: no UTF-8"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Broken VM: no UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public send(Ljava/util/List;Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;)Z
    .locals 15
    .param p2, "feedback"    # Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;",
            "Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "mSendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    const/4 v1, 0x0

    .line 227
    .local v1, "bSuccess":Z
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/somo/apptimiser/SomoNetworkAgent;->toJson(Ljava/util/List;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v8

    .line 229
    .local v8, "sendObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->uploadUri:Ljava/lang/String;

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 235
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Sending events to %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->uploadUri:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    iget-object v10, p0, Lcom/somo/apptimiser/SomoNetworkAgent;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v10, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 237
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 239
    .local v9, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v9, :cond_5

    .line 240
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Response %d %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    const/16 v10, 0xc8

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-ne v10, v11, :cond_1

    .line 243
    const/4 v1, 0x1

    .line 276
    :goto_0
    if-eqz v6, :cond_0

    .line 277
    :try_start_2
    invoke-direct {p0, v6}, Lcom/somo/apptimiser/SomoNetworkAgent;->finish(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 285
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "sendObject":Lorg/json/JSONObject;
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :goto_1
    return v1

    .line 244
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "sendObject":Lorg/json/JSONObject;
    .restart local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    const/16 v10, 0x1f7

    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 246
    const-string v10, "Retry-After"

    invoke-interface {v6, v10}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    .line 248
    .local v7, "retryAfterHeaders":[Lorg/apache/http/Header;
    if-eqz v7, :cond_2

    array-length v10, v7

    if-lez v10, :cond_2

    .line 251
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 254
    .local v2, "delay":J
    const-wide/16 v10, 0x3e8

    mul-long/2addr v2, v10

    .line 255
    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 268
    .end local v2    # "delay":J
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "retryAfterHeaders":[Lorg/apache/http/Header;
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e":Ljava/net/UnknownHostException;
    :try_start_4
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Cannot upload events: 638"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 270
    const-wide/32 v10, 0x1499700

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    if-eqz v6, :cond_0

    .line 277
    :try_start_5
    invoke-direct {p0, v6}, Lcom/somo/apptimiser/SomoNetworkAgent;->finish(Lorg/apache/http/HttpResponse;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_1
    move-exception v10

    goto :goto_1

    .line 257
    .end local v4    # "e":Ljava/net/UnknownHostException;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "retryAfterHeaders":[Lorg/apache/http/Header;
    .restart local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_6
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Cannot upload events: 635"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 258
    const-wide/32 v10, 0x36ee80

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 272
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "retryAfterHeaders":[Lorg/apache/http/Header;
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v4

    .line 273
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Cannot upload events: 639"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 274
    const-wide/32 v10, 0x36ee80

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    if-eqz v6, :cond_0

    .line 277
    :try_start_8
    invoke-direct {p0, v6}, Lcom/somo/apptimiser/SomoNetworkAgent;->finish(Lorg/apache/http/HttpResponse;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    :catch_3
    move-exception v10

    goto :goto_1

    .line 261
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_3
    :try_start_9
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Cannot upload events: 636"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 262
    const-wide/32 v10, 0x36ee80

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 276
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_4

    .line 277
    :try_start_a
    invoke-direct {p0, v6}, Lcom/somo/apptimiser/SomoNetworkAgent;->finish(Lorg/apache/http/HttpResponse;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    :cond_4
    :goto_2
    :try_start_b
    throw v10
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4

    .line 281
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "sendObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v4

    .line 282
    .local v4, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Cannot upload events: 640"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 283
    const-wide/32 v10, 0x36ee80

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V

    goto/16 :goto_1

    .line 265
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "sendObject":Lorg/json/JSONObject;
    .restart local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_5
    :try_start_c
    sget-object v10, Lcom/somo/apptimiser/SomoNetworkAgent;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Cannot upload events: 637"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 266
    const-wide/32 v10, 0x36ee80

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;->setDelayTime(J)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 277
    :catch_5
    move-exception v10

    goto/16 :goto_1

    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_6
    move-exception v11

    goto :goto_2
.end method

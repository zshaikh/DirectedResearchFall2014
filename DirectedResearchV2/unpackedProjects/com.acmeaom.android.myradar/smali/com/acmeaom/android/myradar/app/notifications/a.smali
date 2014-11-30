.class public Lcom/acmeaom/android/myradar/app/notifications/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method private static a(Landroid/location/Location;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-static {}, Lcom/acmeaom/android/myradar/app/notifications/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    if-nez p0, :cond_1

    .line 73
    const-string v2, "Lat"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v2, "Lon"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    :goto_1
    invoke-static {}, Lcom/acmeaom/android/myradar/app/notifications/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    const-string v0, "Aborting ACME notification registration"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    const-string v2, "Lat"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 77
    const-string v2, "Lon"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 86
    :cond_2
    const-string v3, "RegistrationId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-static {}, Lcom/acmeaom/android/a/a/b/ak;->a()Lcom/acmeaom/android/a/a/b/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/ak;->b()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v2

    iget-wide v2, v2, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide v4, 0x40ac200000000000L

    div-double/2addr v2, v4

    .line 88
    const-string v4, "UtcOffset"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 92
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "application/json;charset=utf-8"

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 94
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 96
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad response:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/IOException;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "good response:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/location/Location;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    const/16 v2, 0xfa

    move v3, v1

    move v4, v2

    .line 48
    :goto_1
    const/4 v2, 0x5

    if-gt v3, v2, :cond_0

    .line 50
    :try_start_0
    const-string v2, "https://s.mrsv.co/ws/mr.asmx/RegisterGCM2"

    invoke-static {p0, v2}, Lcom/acmeaom/android/myradar/app/notifications/a;->a(Landroid/location/Location;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GCM Device registration failed on attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :goto_2
    invoke-static {v4}, Lcom/acmeaom/android/myradar/b/a;->b(I)V

    .line 59
    mul-int/lit8 v4, v4, 0x2

    .line 48
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    .line 55
    invoke-static {v2}, Lcom/acmeaom/android/myradar/b/f;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method

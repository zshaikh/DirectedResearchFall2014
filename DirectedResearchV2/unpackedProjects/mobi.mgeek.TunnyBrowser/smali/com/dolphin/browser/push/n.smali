.class final Lcom/dolphin/browser/push/n;
.super Ljava/lang/Object;
.source "PushAuthenticator.java"

# interfaces
.implements Lcom/dolphin/browser/push/ax;


# instance fields
.field private a:Lcom/dolphin/browser/Network/d;

.field private b:Lcom/dolphin/browser/push/data/a;

.field private c:Lcom/dolphin/browser/push/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data/1/device/auth"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/push/data/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/a;->c()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 123
    const-string v0, "PushAuthenticate"

    const-string v1, "Invalid token or logout by other device"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    throw v0

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    goto :goto_0
.end method

.method private l()Lcom/dolphin/browser/Network/d;
    .locals 5

    .prologue
    const/16 v3, 0x7530

    const/4 v4, 0x0

    .line 74
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/push/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 77
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    .line 78
    const-string v2, "DolphinService/DeviceAuth"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 79
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    .line 80
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    .line 81
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "device_id"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "token"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "device_info"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->f()Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/DeviceInfo;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a([Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    .line 85
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v0

    .line 163
    const-string v1, "%s_%s_%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android"

    aput-object v4, v2, v3

    const-string v3, "en"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 256
    const-string v0, "DBS Push"

    const-string v1, "auth"

    const-string v2, "trigger"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public a(Lcom/dolphin/browser/push/o;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dolphin/browser/push/n;->c:Lcom/dolphin/browser/push/o;

    .line 65
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 193
    iget-object v1, p0, Lcom/dolphin/browser/push/n;->c:Lcom/dolphin/browser/push/o;

    .line 194
    instance-of v0, p1, Lcom/dolphin/browser/DolphinService/WebService/e;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 195
    check-cast v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 196
    const-string v2, "DBS Push"

    const-string v3, "auth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/push/o;->a(Lcom/dolphin/browser/DolphinService/WebService/e;)V

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    const-string v0, "DBS Push"

    const-string v2, "auth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 208
    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v1, p1}, Lcom/dolphin/browser/push/o;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/Network/n;)Z
    .locals 7

    .prologue
    .line 216
    iget-object v1, p0, Lcom/dolphin/browser/push/n;->c:Lcom/dolphin/browser/push/o;

    .line 218
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/n;->a(Lcom/dolphin/browser/Network/n;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_1

    .line 220
    const-string v2, "DBS Push"

    const-string v3, "auth"

    const-string v4, "succeed"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v1, v0}, Lcom/dolphin/browser/push/o;->a(Z)V

    .line 251
    :cond_0
    :goto_1
    return v0

    .line 224
    :cond_1
    const-string v2, "DBS Push"

    const-string v3, "auth"

    const-string v4, "fail_"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v2

    .line 235
    const-string v3, "DBS Push"

    const-string v4, "auth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v1, :cond_2

    .line 239
    invoke-interface {v1, v0}, Lcom/dolphin/browser/push/o;->a(Lcom/dolphin/browser/DolphinService/WebService/e;)V

    .line 241
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 251
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 242
    :catch_1
    move-exception v0

    .line 243
    const-string v2, "DBS Push"

    const-string v3, "auth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 247
    if-eqz v1, :cond_3

    .line 248
    invoke-interface {v1, v0}, Lcom/dolphin/browser/push/o;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public a(Lcom/dolphin/browser/Network/n;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 95
    const-string v0, "PushAuthenticate"

    const-string v1, "processHttpRequestResult failed, status: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    iget-object v1, p1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    instance-of v1, v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    if-eqz v1, :cond_3

    .line 110
    check-cast v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    .line 111
    throw v0

    .line 98
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    const-string v1, "PushAuthenticate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    throw v0

    .line 104
    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/dolphin/browser/push/data/a;->a(Lcom/dolphin/browser/DolphinService/WebService/f;)Lcom/dolphin/browser/push/data/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/n;->a(Lcom/dolphin/browser/push/data/a;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 113
    :cond_3
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/push/data/a;->c()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/dolphin/browser/push/data/a;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    .line 141
    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v0, ""

    .line 148
    invoke-virtual {p0}, Lcom/dolphin/browser/push/n;->c()Lcom/dolphin/browser/push/data/a;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v3}, Lcom/dolphin/browser/push/data/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    const-string v3, "ext"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "deviceid"

    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/push/t;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "token"

    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/push/t;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "version"

    invoke-direct {p0}, Lcom/dolphin/browser/push/n;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "ext"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-object v2
.end method

.method f()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "PushAuthenticate"

    const-string v1, "auth..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/push/n;->a:Lcom/dolphin/browser/Network/d;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/aw;->b(Lcom/dolphin/browser/Network/d;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/push/n;->l()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 177
    iput-object v0, p0, Lcom/dolphin/browser/push/n;->a:Lcom/dolphin/browser/Network/d;

    .line 178
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    invoke-virtual {v1, v0, p0, v2}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;Lcom/dolphin/browser/util/t;)V

    .line 179
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->c()V

    .line 180
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/push/n;->a:Lcom/dolphin/browser/Network/d;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/aw;->b(Lcom/dolphin/browser/Network/d;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/n;->a:Lcom/dolphin/browser/Network/d;

    .line 189
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/dolphin/browser/push/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/push/aw;->c()Lcom/dolphin/browser/push/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/n;->a:Lcom/dolphin/browser/Network/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/Network/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    .line 276
    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No auth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/dolphin/browser/push/n;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public k()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/push/n;->b:Lcom/dolphin/browser/push/data/a;

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No auth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/a;->e()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

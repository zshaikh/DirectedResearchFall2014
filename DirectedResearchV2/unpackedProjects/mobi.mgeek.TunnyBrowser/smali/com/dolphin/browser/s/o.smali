.class Lcom/dolphin/browser/s/o;
.super Lcom/dolphin/browser/util/f;
.source "SparkManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/s/b;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/dolphin/browser/s/n;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Lcom/dolphin/browser/s/n;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/dolphin/browser/s/o;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/dolphin/browser/s/o;->b:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lcom/dolphin/browser/s/o;->c:Lcom/dolphin/browser/s/n;

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Lcom/dolphin/browser/s/n;Lcom/dolphin/browser/s/c;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/s/o;-><init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Lcom/dolphin/browser/s/n;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/o;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 391
    const-string v1, "SparkManager"

    const-string v2, "LogReferrerTask doInBackground E"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/s/o;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v1}, Lcom/dolphin/browser/s/b;->b(Lcom/dolphin/browser/s/b;)Ljava/util/List;

    move-result-object v1

    .line 395
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "referrer"

    iget-object v4, p0, Lcom/dolphin/browser/s/o;->b:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "et"

    const-string v4, "installed"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "data"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v2, p0, Lcom/dolphin/browser/s/o;->a:Lcom/dolphin/browser/s/b;

    const-string v3, "http://seabedsven.dolphin.com/api/spark/log_referrer.json"

    invoke-static {v2, v1, v3}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 400
    if-eqz v2, :cond_0

    .line 401
    :try_start_1
    iget-object v1, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 402
    iget-object v1, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 403
    const-string v3, "SparkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogReferrerTask jsonObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v1, :cond_0

    .line 405
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_0

    .line 407
    const-string v3, "log_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 417
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 413
    :goto_1
    :try_start_2
    const-string v3, "SparkManager"

    const-string v4, "LogReferrerTask error"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    .line 414
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 415
    :goto_2
    :try_start_3
    const-string v3, "SparkManager"

    const-string v4, "LogReferrerTask error"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 414
    :catch_2
    move-exception v1

    goto :goto_2

    .line 412
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 380
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 424
    const-string v0, "SparkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogReferrerTask onPostExecute, log_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/dolphin/browser/s/o;->c:Lcom/dolphin/browser/s/n;

    if-eqz v0, :cond_0

    .line 426
    if-nez p1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/s/o;->c:Lcom/dolphin/browser/s/n;

    iget-object v1, p0, Lcom/dolphin/browser/s/o;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/s/n;->a(Lcom/dolphin/browser/s/b;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/s/o;->c:Lcom/dolphin/browser/s/n;

    iget-object v1, p0, Lcom/dolphin/browser/s/o;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/s/n;->a(Lcom/dolphin/browser/s/b;Ljava/lang/String;)V

    goto :goto_0
.end method

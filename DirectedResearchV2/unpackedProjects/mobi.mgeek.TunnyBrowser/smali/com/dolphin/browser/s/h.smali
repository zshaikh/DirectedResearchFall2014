.class Lcom/dolphin/browser/s/h;
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

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/dolphin/browser/s/g;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/g;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/dolphin/browser/s/h;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/dolphin/browser/s/h;->b:Ljava/lang/String;

    .line 320
    iput-object p3, p0, Lcom/dolphin/browser/s/h;->c:Ljava/lang/String;

    .line 321
    iput-object p4, p0, Lcom/dolphin/browser/s/h;->d:Ljava/lang/String;

    .line 322
    iput-object p5, p0, Lcom/dolphin/browser/s/h;->e:Ljava/lang/String;

    .line 323
    iput-object p6, p0, Lcom/dolphin/browser/s/h;->f:Ljava/lang/String;

    .line 324
    iput-object p7, p0, Lcom/dolphin/browser/s/h;->j:Ljava/lang/String;

    .line 325
    iput-object p8, p0, Lcom/dolphin/browser/s/h;->k:Lcom/dolphin/browser/s/g;

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/g;Lcom/dolphin/browser/s/c;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct/range {p0 .. p8}, Lcom/dolphin/browser/s/h;-><init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/g;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/h;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 330
    const-string v1, "SparkManager"

    const-string v2, "FetchShortUrlTask doInBackground E"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/s/h;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v1}, Lcom/dolphin/browser/s/b;->b(Lcom/dolphin/browser/s/b;)Ljava/util/List;

    move-result-object v2

    .line 334
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tid"

    iget-object v4, p0, Lcom/dolphin/browser/s/h;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "iid"

    iget-object v1, p0, Lcom/dolphin/browser/s/h;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "pid"

    iget-object v1, p0, Lcom/dolphin/browser/s/h;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "data"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "entry"

    iget-object v6, p0, Lcom/dolphin/browser/s/h;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "text"

    iget-object v6, p0, Lcom/dolphin/browser/s/h;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "network"

    iget-object v6, p0, Lcom/dolphin/browser/s/h;->j:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/dolphin/browser/s/h;->a:Lcom/dolphin/browser/s/b;

    const-string v3, "http://seabedsven.dolphin.com/api/spark/shorturl.json"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 345
    if-eqz v2, :cond_2

    .line 346
    :try_start_1
    iget-object v1, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 347
    iget-object v1, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 348
    const-string v3, "SparkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchShortUrlTask jsonObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-eqz v1, :cond_2

    .line 350
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_2

    .line 352
    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 362
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 364
    :goto_2
    return-object v0

    .line 335
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/dolphin/browser/s/h;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/s/h;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 362
    :cond_2
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_2

    .line 357
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 358
    :goto_3
    :try_start_3
    const-string v3, "SparkManager"

    const-string v4, "FetchShortUrlTask error"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 362
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_2

    .line 359
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 360
    :goto_4
    :try_start_4
    const-string v3, "SparkManager"

    const-string v4, "FetchShortUrlTask error"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 362
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 359
    :catch_2
    move-exception v1

    goto :goto_4

    .line 357
    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 369
    const-string v0, "SparkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchShortUrlTask onPostExecute, short url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/s/h;->k:Lcom/dolphin/browser/s/g;

    if-eqz v0, :cond_0

    .line 371
    if-nez p1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/s/h;->k:Lcom/dolphin/browser/s/g;

    iget-object v1, p0, Lcom/dolphin/browser/s/h;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/s/g;->a(Lcom/dolphin/browser/s/b;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/s/h;->k:Lcom/dolphin/browser/s/g;

    iget-object v1, p0, Lcom/dolphin/browser/s/h;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/s/g;->a(Lcom/dolphin/browser/s/b;Ljava/lang/String;)V

    goto :goto_0
.end method

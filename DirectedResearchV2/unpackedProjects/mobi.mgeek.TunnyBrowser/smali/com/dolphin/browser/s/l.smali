.class Lcom/dolphin/browser/s/l;
.super Lcom/dolphin/browser/util/f;
.source "SparkManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/s/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/s/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/dolphin/browser/s/k;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/k;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/dolphin/browser/s/l;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/dolphin/browser/s/l;->b:Ljava/lang/String;

    .line 441
    iput-object p3, p0, Lcom/dolphin/browser/s/l;->c:Ljava/lang/String;

    .line 442
    iput-object p4, p0, Lcom/dolphin/browser/s/l;->d:Lcom/dolphin/browser/s/k;

    .line 443
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/k;Lcom/dolphin/browser/s/c;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/s/l;-><init>(Lcom/dolphin/browser/s/b;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/s/k;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/dolphin/browser/s/q;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 447
    const-string v0, "SparkManager"

    const-string v2, "FetchSparkTaskTask doInBackground E"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/s/l;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0}, Lcom/dolphin/browser/s/b;->b(Lcom/dolphin/browser/s/b;)Ljava/util/List;

    move-result-object v0

    .line 451
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tid"

    iget-object v4, p0, Lcom/dolphin/browser/s/l;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "entry"

    iget-object v4, p0, Lcom/dolphin/browser/s/l;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v2, p0, Lcom/dolphin/browser/s/l;->a:Lcom/dolphin/browser/s/b;

    const-string v3, "http://seabedsven.dolphin.com/api/spark/task.json"

    invoke-static {v2, v0, v3}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 455
    if-eqz v2, :cond_0

    .line 456
    :try_start_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 457
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 458
    const-string v3, "SparkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchSparkTaskTask jsonObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v0, :cond_0

    .line 460
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 461
    if-eqz v3, :cond_0

    .line 462
    new-instance v0, Lcom/dolphin/browser/s/q;

    iget-object v4, p0, Lcom/dolphin/browser/s/l;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/s/l;->c:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v3}, Lcom/dolphin/browser/s/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 472
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 474
    :goto_0
    return-object v0

    .line 472
    :cond_0
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    :goto_1
    move-object v0, v1

    .line 474
    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 468
    :goto_2
    :try_start_2
    const-string v3, "SparkManager"

    const-string v4, "FetchSparkTaskTask error"

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 472
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    .line 469
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 470
    :goto_3
    :try_start_3
    const-string v3, "SparkManager"

    const-string v4, "FetchSparkTaskTask error"

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 469
    :catch_2
    move-exception v0

    goto :goto_3

    .line 467
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/l;->a([Ljava/lang/Void;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/s/q;)V
    .locals 3

    .prologue
    .line 479
    const-string v0, "SparkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchSparkTaskTask onPostExecute, sparkTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/s/l;->d:Lcom/dolphin/browser/s/k;

    if-eqz v0, :cond_0

    .line 481
    if-nez p1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/s/l;->d:Lcom/dolphin/browser/s/k;

    iget-object v1, p0, Lcom/dolphin/browser/s/l;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/s/k;->a(Lcom/dolphin/browser/s/b;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/s/l;->d:Lcom/dolphin/browser/s/k;

    iget-object v1, p0, Lcom/dolphin/browser/s/l;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/s/k;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/q;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 435
    check-cast p1, Lcom/dolphin/browser/s/q;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/l;->a(Lcom/dolphin/browser/s/q;)V

    return-void
.end method

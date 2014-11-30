.class Lcom/dolphin/browser/s/j;
.super Lcom/dolphin/browser/util/f;
.source "SparkManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/s/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/s/b;

.field private final b:Lcom/dolphin/browser/s/i;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/i;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/dolphin/browser/s/j;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 494
    iput-object p2, p0, Lcom/dolphin/browser/s/j;->b:Lcom/dolphin/browser/s/i;

    .line 495
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/i;Lcom/dolphin/browser/s/c;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/s/j;-><init>(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/i;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/dolphin/browser/s/p;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 499
    const-string v0, "SparkManager"

    const-string v2, "FetchSparkSettingsTask doInBackground E"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/s/j;->a:Lcom/dolphin/browser/s/b;

    iget-object v2, p0, Lcom/dolphin/browser/s/j;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v2}, Lcom/dolphin/browser/s/b;->c(Lcom/dolphin/browser/s/b;)Ljava/util/List;

    move-result-object v2

    const-string v3, "http://seabedsven.dolphin.com/api/settings.json"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Ljava/util/List;Ljava/lang/String;)Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 505
    if-eqz v2, :cond_0

    .line 506
    :try_start_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 507
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 508
    const-string v3, "SparkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchSparkSettingsTask jsonObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-eqz v0, :cond_0

    .line 510
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_0

    .line 512
    new-instance v0, Lcom/dolphin/browser/s/p;

    invoke-direct {v0, v3}, Lcom/dolphin/browser/s/p;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    :goto_0
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    move-object v1, v0

    .line 524
    :goto_1
    return-object v1

    .line 517
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 518
    :goto_2
    :try_start_2
    const-string v3, "SparkManager"

    const-string v4, "FetchSparkSettingsTask error"

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 522
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    .line 519
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 520
    :goto_3
    :try_start_3
    const-string v3, "SparkManager"

    const-string v4, "FetchSparkSettingsTask error"

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
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

    .line 519
    :catch_2
    move-exception v0

    goto :goto_3

    .line 517
    :catch_3
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 490
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/j;->a([Ljava/lang/Void;)Lcom/dolphin/browser/s/p;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/s/p;)V
    .locals 3

    .prologue
    .line 529
    const-string v0, "SparkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchSparkSettingsTask onPostExecute, SparkSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/s/j;->b:Lcom/dolphin/browser/s/i;

    if-eqz v0, :cond_0

    .line 531
    if-nez p1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/dolphin/browser/s/j;->b:Lcom/dolphin/browser/s/i;

    iget-object v1, p0, Lcom/dolphin/browser/s/j;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/s/i;->a(Lcom/dolphin/browser/s/b;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/s/j;->b:Lcom/dolphin/browser/s/i;

    iget-object v1, p0, Lcom/dolphin/browser/s/j;->a:Lcom/dolphin/browser/s/b;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/s/i;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/p;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 490
    check-cast p1, Lcom/dolphin/browser/s/p;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/s/j;->a(Lcom/dolphin/browser/s/p;)V

    return-void
.end method

.class Lcom/dolphin/browser/provider/x;
.super Lcom/dolphin/browser/util/f;
.source "MostVisitedManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/provider/w;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/provider/w;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/dolphin/browser/provider/x;->a:Lcom/dolphin/browser/provider/w;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 381
    iput-object p2, p0, Lcom/dolphin/browser/provider/x;->b:Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/provider/x;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/provider/x;->b:Ljava/lang/String;

    .line 389
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v3, p0, Lcom/dolphin/browser/provider/x;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/favicon.ico"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v3, "favicon"

    invoke-static {v1, v3}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 393
    :try_start_1
    iget-object v3, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 394
    iget-object v3, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->f(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    .line 395
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 396
    const-string v5, "favicon"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 397
    const-string v3, "url_key"

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/provider/x;->a:Lcom/dolphin/browser/provider/w;

    invoke-static {v0}, Lcom/dolphin/browser/provider/w;->a(Lcom/dolphin/browser/provider/w;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 404
    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 407
    :goto_0
    return-object v2

    .line 401
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 402
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 401
    :catch_1
    move-exception v0

    goto :goto_1
.end method

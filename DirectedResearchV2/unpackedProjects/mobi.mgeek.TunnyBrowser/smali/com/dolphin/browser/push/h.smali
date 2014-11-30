.class public Lcom/dolphin/browser/push/h;
.super Ljava/lang/Object;
.source "DevicesRequesterBuilder.java"


# direct methods
.method public static a()Lcom/dolphin/browser/Network/d;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/push/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 25
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    .line 26
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "token"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a([Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    .line 28
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data/1/device/get_devices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

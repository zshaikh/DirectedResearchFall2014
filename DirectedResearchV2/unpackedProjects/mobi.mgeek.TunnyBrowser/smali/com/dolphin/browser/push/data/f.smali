.class public Lcom/dolphin/browser/push/data/f;
.super Ljava/lang/Object;
.source "LogoutRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data/1/device/logout"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dolphin/browser/Network/d;
    .locals 5

    .prologue
    const/16 v3, 0x2710

    const/4 v4, 0x0

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    const-string v0, "1"

    .line 31
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/dolphin/browser/Network/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/push/t;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/push/data/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 34
    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    .line 35
    const-string v1, "TabPush"

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 36
    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    .line 37
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    .line 38
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "token"

    aput-object v3, v1, v4

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v3, 0x2

    const-string v4, "device_id"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object p2, v1, v3

    const/4 v3, 0x4

    const-string v4, "self_logout"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a([Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    .line 42
    invoke-virtual {v2}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.class public Lcom/dolphin/browser/push/data/g;
.super Ljava/lang/Object;
.source "PullMessageRequest.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/data/g;->a:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/push/data/g;->a:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/Network/d;
    .locals 5

    .prologue
    const/16 v3, 0x2710

    const/4 v4, 0x0

    .line 40
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/push/data/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 43
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    .line 44
    const-string v2, "TabPush"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    .line 45
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    .line 46
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    .line 47
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

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v3, "msg_id_list"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/dolphin/browser/push/data/g;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a([Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    .line 51
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data/1/get_msg"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

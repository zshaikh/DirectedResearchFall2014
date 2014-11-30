.class public Lcom/dolphin/browser/Network/h;
.super Ljava/lang/Object;
.source "HttpRequester.java"


# instance fields
.field private final a:Lcom/dolphin/browser/Network/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Lcom/dolphin/browser/Network/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/Network/i;-><init>(Lcom/dolphin/browser/Network/e;)V

    iput-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/Network/d;
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lcom/dolphin/browser/Network/d;

    iget-object v1, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/Network/d;-><init>(Lcom/dolphin/browser/Network/i;Lcom/dolphin/browser/Network/e;)V

    return-object v0
.end method

.method public a(I)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;I)I

    .line 455
    return-object p0
.end method

.method public a(Lcom/dolphin/browser/Network/k;)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;Lcom/dolphin/browser/Network/k;)Lcom/dolphin/browser/Network/k;

    .line 425
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->b(Lcom/dolphin/browser/Network/i;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;

    .line 415
    return-object p0
.end method

.method public a(Z)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;Z)Z

    .line 435
    return-object p0
.end method

.method public a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;[Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    .line 420
    return-object p0
.end method

.method public b(I)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->b(Lcom/dolphin/browser/Network/i;I)I

    .line 460
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dolphin/browser/Network/h;->a:Lcom/dolphin/browser/Network/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/Network/i;->c(Lcom/dolphin/browser/Network/i;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    return-object p0
.end method

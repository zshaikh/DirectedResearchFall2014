.class public final Lcom/a/a/a/e;
.super Ljava/lang/Object;
.source "HttpRequester.java"


# instance fields
.field private final a:Lcom/a/a/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v0, Lcom/a/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(B)V

    iput-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    .line 297
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    invoke-static {v0, p1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/a;
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a;-><init>(Lcom/a/a/a/b;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/a/a/a/e;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    invoke-static {v0, p1}, Lcom/a/a/a/b;->b(Lcom/a/a/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public final a(Lorg/apache/http/HttpEntity;)Lcom/a/a/a/e;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    invoke-static {v0, p1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;

    .line 303
    return-object p0
.end method

.method public final a(Z)Lcom/a/a/a/e;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;Z)Z

    .line 323
    return-object p0
.end method

.method public final a([Lorg/apache/http/Header;)Lcom/a/a/a/e;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/b;

    invoke-static {v0, p1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;[Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    .line 308
    return-object p0
.end method

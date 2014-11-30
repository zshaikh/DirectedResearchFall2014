.class Ldolphin/net/c/g;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ldolphin/net/c/b;


# instance fields
.field private a:Ldolphin/net/c/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method


# virtual methods
.method public a()Ldolphin/net/c/a;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Ldolphin/net/c/g;->a:Ldolphin/net/c/a;

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Ldolphin/net/c/g;->a:Ldolphin/net/c/a;

    .line 316
    return-object v0
.end method

.method public a(Lorg/apache/http/HttpHost;)Ldolphin/net/c/a;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Ldolphin/net/c/g;->a()Ldolphin/net/c/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldolphin/net/c/a;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Ldolphin/net/c/g;->a:Ldolphin/net/c/a;

    .line 329
    return-void
.end method

.method public b(Lorg/apache/http/HttpHost;)Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Ldolphin/net/c/g;->a:Ldolphin/net/c/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

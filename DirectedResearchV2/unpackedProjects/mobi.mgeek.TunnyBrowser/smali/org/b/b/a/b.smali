.class public abstract Lorg/b/b/a/b;
.super Lorg/b/b/a/a;
.source "HttpClientTransport.java"


# instance fields
.field private volatile b:Ljava/lang/String;

.field private volatile c:Lorg/b/b/a/d;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/b/b/a/a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Lorg/b/b/a/c;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/b/b/a/b;->c:Lorg/b/b/a/d;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lorg/b/b/a/d;->a(Lorg/b/b/a/c;)V

    .line 68
    :cond_0
    return-void
.end method

.method public a(Lorg/b/b/a/d;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/b/b/a/b;->c:Lorg/b/b/a/d;

    .line 53
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/b/b/a/b;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/b/b/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Lorg/b/b/a/d;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/b/b/a/b;->c:Lorg/b/b/a/d;

    return-object v0
.end method

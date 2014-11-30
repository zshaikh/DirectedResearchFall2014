.class Lorg/c/a/c/b/s;
.super Ljava/lang/Object;
.source "SslConnection.java"


# instance fields
.field final a:Lorg/c/a/c/b/e;

.field final b:Lorg/c/a/c/b/e;

.field final c:Lorg/c/a/c/b/e;


# direct methods
.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/c/a/c/b/d;

    invoke-direct {v0, p1}, Lorg/c/a/c/b/d;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/c/b/s;->a:Lorg/c/a/c/b/e;

    .line 83
    new-instance v0, Lorg/c/a/c/b/d;

    invoke-direct {v0, p1}, Lorg/c/a/c/b/d;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/c/b/s;->b:Lorg/c/a/c/b/e;

    .line 84
    new-instance v0, Lorg/c/a/c/b/d;

    invoke-direct {v0, p2}, Lorg/c/a/c/b/d;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/c/b/s;->c:Lorg/c/a/c/b/e;

    .line 85
    return-void
.end method

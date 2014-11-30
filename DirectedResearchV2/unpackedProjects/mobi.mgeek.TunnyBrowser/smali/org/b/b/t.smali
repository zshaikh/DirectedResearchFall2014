.class Lorg/b/b/t;
.super Lorg/b/b/aa;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;)V
    .locals 1

    .prologue
    .line 1239
    iput-object p1, p0, Lorg/b/b/t;->a:Lorg/b/b/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/aa;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1239
    invoke-direct {p0, p1}, Lorg/b/b/t;-><init>(Lorg/b/b/a;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Lorg/b/b/t;->a:Lorg/b/b/a;

    new-instance v1, Lorg/b/b/u;

    invoke-direct {v1, p0}, Lorg/b/b/u;-><init>(Lorg/b/b/t;)V

    invoke-static {v0, v1}, Lorg/b/b/a;->a(Lorg/b/b/a;Lorg/b/b/o;)V

    .line 1251
    invoke-super {p0, p1, p2}, Lorg/b/b/aa;->a(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 1252
    return-void
.end method

.method protected a(Lorg/b/a/e;)V
    .locals 2

    .prologue
    .line 1257
    const-string v0, "/meta/disconnect"

    invoke-interface {p1}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lorg/b/b/t;->a:Lorg/b/b/a;

    invoke-virtual {v0, p1}, Lorg/b/b/a;->c(Lorg/b/a/e;)V

    .line 1261
    :goto_0
    return-void

    .line 1260
    :cond_0
    invoke-super {p0, p1}, Lorg/b/b/aa;->a(Lorg/b/a/e;)V

    goto :goto_0
.end method

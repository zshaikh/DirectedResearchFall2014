.class public Ldolphin/webkit/a/a/ad;
.super Ldolphin/webkit/a/a/bf;
.source "BEROutputStream.java"


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ad;->a()V

    .line 35
    :goto_0
    return-void

    .line 23
    :cond_0
    instance-of v0, p1, Ldolphin/webkit/a/a/bb;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Ldolphin/webkit/a/a/bb;

    invoke-virtual {p1, p0}, Ldolphin/webkit/a/a/bb;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_0

    .line 27
    :cond_1
    instance-of v0, p1, Ldolphin/webkit/a/a/ap;

    if-eqz v0, :cond_2

    .line 29
    check-cast p1, Ldolphin/webkit/a/a/ap;

    invoke-interface {p1}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/webkit/a/a/bb;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not BEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

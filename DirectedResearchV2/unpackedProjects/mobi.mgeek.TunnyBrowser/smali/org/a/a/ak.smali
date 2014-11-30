.class public Lorg/a/a/ak;
.super Lorg/a/a/bp;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(ZILorg/a/a/ar;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    .line 36
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    instance-of v0, p1, Lorg/a/a/p;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/a/a/af;

    if-eqz v0, :cond_7

    .line 54
    :cond_0
    const/16 v0, 0xa0

    iget v1, p0, Lorg/a/a/ak;->a:I

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(II)V

    .line 55
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/a/a/bh;->write(I)V

    .line 57
    iget-boolean v0, p0, Lorg/a/a/ak;->b:Z

    if-nez v0, :cond_6

    .line 59
    iget-boolean v0, p0, Lorg/a/a/ak;->c:Z

    if-nez v0, :cond_5

    .line 62
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    instance-of v0, v0, Lorg/a/a/n;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    instance-of v0, v0, Lorg/a/a/ac;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    check-cast v0, Lorg/a/a/ac;

    invoke-virtual {v0}, Lorg/a/a/ac;->h()Ljava/util/Enumeration;

    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/a/a/bh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    check-cast v0, Lorg/a/a/n;

    .line 71
    new-instance v1, Lorg/a/a/ac;

    invoke-virtual {v0}, Lorg/a/a/n;->f()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/a/a/ac;-><init>([B)V

    .line 72
    invoke-virtual {v1}, Lorg/a/a/ac;->h()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    instance-of v0, v0, Lorg/a/a/r;

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    check-cast v0, Lorg/a/a/r;

    invoke-virtual {v0}, Lorg/a/a/r;->e()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    instance-of v0, v0, Lorg/a/a/t;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    check-cast v0, Lorg/a/a/t;

    invoke-virtual {v0}, Lorg/a/a/t;->e()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5
    iget-object v0, p0, Lorg/a/a/ak;->d:Lorg/a/a/ar;

    invoke-virtual {p1, v0}, Lorg/a/a/bh;->a(Ljava/lang/Object;)V

    .line 99
    :cond_6
    invoke-virtual {p1, v2}, Lorg/a/a/bh;->write(I)V

    .line 100
    invoke-virtual {p1, v2}, Lorg/a/a/bh;->write(I)V

    .line 106
    :goto_1
    return-void

    .line 104
    :cond_7
    invoke-super {p0, p1}, Lorg/a/a/bp;->a(Lorg/a/a/bh;)V

    goto :goto_1
.end method

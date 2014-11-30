.class public abstract Lorg/a/a/r;
.super Lorg/a/a/l;
.source "ASN1Sequence.java"


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/r;->a:Ljava/util/Vector;

    return-void
.end method

.method private a(Ljava/util/Enumeration;)Lorg/a/a/ar;
    .locals 1

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/ar;

    .line 226
    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lorg/a/a/bb;->a:Lorg/a/a/bb;

    .line 231
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/r;
    .locals 4

    .prologue
    .line 21
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/r;

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    check-cast p0, Lorg/a/a/r;

    .line 29
    :goto_0
    return-object p0

    .line 25
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 29
    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/a/a/l;->a([B)Lorg/a/a/l;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/r;->a(Ljava/lang/Object;)Lorg/a/a/r;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct sequence from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/a/a/x;Z)Lorg/a/a/r;
    .locals 3

    .prologue
    .line 60
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lorg/a/a/x;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    check-cast v0, Lorg/a/a/r;

    .line 91
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lorg/a/a/x;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    instance-of v0, p0, Lorg/a/a/ak;

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Lorg/a/a/ag;

    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/ag;-><init>(Lorg/a/a/ar;)V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Lorg/a/a/bj;

    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/bj;-><init>(Lorg/a/a/ar;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    instance-of v0, v0, Lorg/a/a/r;

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    check-cast v0, Lorg/a/a/r;

    goto :goto_0

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)Lorg/a/a/ar;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/a/a/r;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/ar;

    return-object v0
.end method

.method protected a(Lorg/a/a/ar;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/a/a/r;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method abstract a(Lorg/a/a/bh;)V
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 187
    instance-of v1, p1, Lorg/a/a/r;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    check-cast p1, Lorg/a/a/r;

    .line 194
    invoke-virtual {p0}, Lorg/a/a/r;->f()I

    move-result v1

    invoke-virtual {p1}, Lorg/a/a/r;->f()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/a/a/r;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lorg/a/a/r;->e()Ljava/util/Enumeration;

    move-result-object v2

    .line 202
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    invoke-direct {p0, v1}, Lorg/a/a/r;->a(Ljava/util/Enumeration;)Lorg/a/a/ar;

    move-result-object v3

    .line 205
    invoke-direct {p0, v2}, Lorg/a/a/r;->a(Ljava/util/Enumeration;)Lorg/a/a/ar;

    move-result-object v4

    .line 207
    invoke-interface {v3}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v3

    .line 208
    invoke-interface {v4}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v4

    .line 210
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lorg/a/a/bd;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 218
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/a/a/r;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/a/a/r;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/a/a/r;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lorg/a/a/r;->f()I

    move-result v0

    .line 173
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0, v1}, Lorg/a/a/r;->a(Ljava/util/Enumeration;)Lorg/a/a/ar;

    move-result-object v2

    .line 176
    mul-int/lit8 v0, v0, 0x11

    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/a/a/r;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

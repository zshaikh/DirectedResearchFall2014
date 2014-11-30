.class public abstract Lorg/a/a/n;
.super Lorg/a/a/l;
.source "ASN1OctetString.java"

# interfaces
.implements Lorg/a/a/o;


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lorg/a/a/n;->a:[B

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/n;
    .locals 3

    .prologue
    .line 50
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/n;

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    check-cast p0, Lorg/a/a/n;

    .line 58
    :goto_0
    return-object p0

    .line 56
    :cond_1
    instance-of v0, p0, Lorg/a/a/x;

    if-eqz v0, :cond_2

    .line 58
    check-cast p0, Lorg/a/a/x;

    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/n;->a(Ljava/lang/Object;)Lorg/a/a/n;

    move-result-object p0

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

.method public static a(Lorg/a/a/x;Z)Lorg/a/a/n;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    .line 31
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/a/a/n;

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    invoke-static {v0}, Lorg/a/a/n;->a(Ljava/lang/Object;)Lorg/a/a/n;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/a/a/r;->a(Ljava/lang/Object;)Lorg/a/a/r;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/ac;->a(Lorg/a/a/r;)Lorg/a/a/ac;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Lorg/a/a/bh;)V
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 2

    .prologue
    .line 113
    instance-of v0, p1, Lorg/a/a/n;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 118
    :cond_0
    check-cast p1, Lorg/a/a/n;

    .line 120
    iget-object v0, p0, Lorg/a/a/n;->a:[B

    iget-object v1, p1, Lorg/a/a/n;->a:[B

    invoke-static {v0, v1}, Lorg/a/b/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/a/a/n;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/a/a/n;->a:[B

    return-object v0
.end method

.method public g()Lorg/a/a/bd;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/a/a/n;->c()Lorg/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/a/a/n;->f()[B

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/a;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/a/a/n;->a:[B

    invoke-static {v2}, Lorg/a/b/a/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

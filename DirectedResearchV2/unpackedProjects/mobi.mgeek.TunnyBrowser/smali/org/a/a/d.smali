.class public abstract Lorg/a/a/d;
.super Ljava/lang/Object;
.source "ASN1Encodable.java"

# interfaces
.implements Lorg/a/a/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    new-instance v1, Lorg/a/a/p;

    invoke-direct {v1, v0}, Lorg/a/a/p;-><init>(Ljava/io/OutputStream;)V

    .line 27
    invoke-virtual {v1, p0}, Lorg/a/a/p;->a(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 43
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    new-instance v1, Lorg/a/a/bh;

    invoke-direct {v1, v0}, Lorg/a/a/bh;-><init>(Ljava/io/OutputStream;)V

    .line 48
    invoke-virtual {v1, p0}, Lorg/a/a/bh;->a(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/d;->a()[B

    move-result-object v0

    goto :goto_0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 65
    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/a/a/d;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lorg/a/a/bd;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/a/a/d;->d()Lorg/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lorg/a/a/bd;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 86
    :cond_0
    instance-of v0, p1, Lorg/a/a/ar;

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    check-cast p1, Lorg/a/a/ar;

    .line 93
    invoke-virtual {p0}, Lorg/a/a/d;->d()Lorg/a/a/bd;

    move-result-object v0

    invoke-interface {p1}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/a/a/d;->d()Lorg/a/a/bd;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/bd;->hashCode()I

    move-result v0

    return v0
.end method

.class public Lorg/a/a/bs;
.super Lorg/a/a/l;
.source "DERUniversalString.java"

# interfaces
.implements Lorg/a/a/bn;


# static fields
.field private static final a:[C


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/a/a/bs;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/a/a/bs;->b:[B

    .line 64
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 106
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lorg/a/a/bs;->e()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 107
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 2

    .prologue
    .line 112
    instance-of v0, p1, Lorg/a/a/bs;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/bs;->s_()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/a/a/bs;

    invoke-virtual {p1}, Lorg/a/a/bs;->s_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/a/a/bs;->b:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/a/a/bs;->s_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public s_()Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    new-instance v2, Lorg/a/a/p;

    invoke-direct {v2, v0}, Lorg/a/a/p;-><init>(Ljava/io/OutputStream;)V

    .line 74
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/a/a/p;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 83
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    .line 85
    sget-object v3, Lorg/a/a/bs;->a:[C

    aget-byte v4, v2, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    sget-object v3, Lorg/a/a/bs;->a:[C

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/a/a/bs;->s_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

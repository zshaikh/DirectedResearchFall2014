.class public Lorg/a/a/an;
.super Lorg/a/a/l;
.source "DERApplicationSpecific.java"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>(ILorg/a/a/e;)V
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 69
    iput p1, p0, Lorg/a/a/an;->b:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/an;->a:Z

    .line 71
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/a/a/e;->a()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/a/a/e;->a(I)Lorg/a/a/ar;

    move-result-object v0

    check-cast v0, Lorg/a/a/d;

    invoke-virtual {v0}, Lorg/a/a/d;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lorg/a/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/an;->c:[B

    .line 85
    return-void
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/a/a/an;->a:Z

    .line 24
    iput p2, p0, Lorg/a/a/an;->b:I

    .line 25
    iput-object p3, p0, Lorg/a/a/an;->c:[B

    .line 26
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 3

    .prologue
    .line 157
    const/16 v0, 0x40

    .line 158
    iget-boolean v1, p0, Lorg/a/a/an;->a:Z

    if-eqz v1, :cond_0

    .line 160
    const/16 v0, 0x60

    .line 163
    :cond_0
    iget v1, p0, Lorg/a/a/an;->b:I

    iget-object v2, p0, Lorg/a/a/an;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/a/a/bh;->a(II[B)V

    .line 164
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    instance-of v1, p1, Lorg/a/a/an;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    check-cast p1, Lorg/a/a/an;

    .line 176
    iget-boolean v1, p0, Lorg/a/a/an;->a:Z

    iget-boolean v2, p1, Lorg/a/a/an;->a:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/a/a/an;->b:I

    iget v2, p1, Lorg/a/a/an;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/a/a/an;->c:[B

    iget-object v2, p1, Lorg/a/a/an;->c:[B

    invoke-static {v1, v2}, Lorg/a/b/a;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/a/a/an;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/a/a/an;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/a/a/an;->c:[B

    invoke-static {v1}, Lorg/a/b/a;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

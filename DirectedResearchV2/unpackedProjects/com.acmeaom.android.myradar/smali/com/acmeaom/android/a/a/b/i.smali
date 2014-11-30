.class public Lcom/acmeaom/android/a/a/b/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/nio/Buffer;


# direct methods
.method public constructor <init>(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    .line 23
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    .line 19
    return-void
.end method

.method public constructor <init>([S)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    .line 15
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    instance-of v0, v0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    instance-of v0, v0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public c()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 42
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/i;->a:Ljava/nio/Buffer;

    return-object v0
.end method

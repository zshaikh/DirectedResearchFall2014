.class Ldolphin/webkit/a/a/bs;
.super Ldolphin/webkit/a/a/bx;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final b:[B


# instance fields
.field private final c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ldolphin/webkit/a/a/bs;->b:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/a/a/bx;-><init>(Ljava/io/InputStream;I)V

    .line 23
    if-gez p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative lengths not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput p2, p0, Ldolphin/webkit/a/a/bs;->c:I

    .line 29
    iput p2, p0, Ldolphin/webkit/a/a/bs;->d:I

    .line 31
    if-nez p2, :cond_1

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bs;->b(Z)V

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ldolphin/webkit/a/a/bs;->d:I

    return v0
.end method

.method b()[B
    .locals 3

    .prologue
    .line 92
    iget v0, p0, Ldolphin/webkit/a/a/bs;->d:I

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Ldolphin/webkit/a/a/bs;->b:[B

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget v0, p0, Ldolphin/webkit/a/a/bs;->d:I

    new-array v0, v0, [B

    .line 98
    iget v1, p0, Ldolphin/webkit/a/a/bs;->d:I

    iget-object v2, p0, Ldolphin/webkit/a/a/bs;->a:Ljava/io/InputStream;

    invoke-static {v2, v0}, Ldolphin/webkit/a/c/b/a;->a(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/a/a/bs;->d:I

    if-eqz v1, :cond_1

    .line 100
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/a/a/bs;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/a/a/bs;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bs;->b(Z)V

    goto :goto_0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 45
    iget v0, p0, Ldolphin/webkit/a/a/bs;->d:I

    if-nez v0, :cond_1

    .line 47
    const/4 v0, -0x1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/a/a/bs;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 52
    if-gez v0, :cond_2

    .line 54
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/a/a/bs;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/a/a/bs;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iget v1, p0, Ldolphin/webkit/a/a/bs;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldolphin/webkit/a/a/bs;->d:I

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bs;->b(Z)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 68
    iget v0, p0, Ldolphin/webkit/a/a/bs;->d:I

    if-nez v0, :cond_1

    .line 70
    const/4 v0, -0x1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget v0, p0, Ldolphin/webkit/a/a/bs;->d:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 74
    iget-object v1, p0, Ldolphin/webkit/a/a/bs;->a:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 76
    if-gez v0, :cond_2

    .line 78
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/a/a/bs;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/a/a/bs;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    iget v1, p0, Ldolphin/webkit/a/a/bs;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Ldolphin/webkit/a/a/bs;->d:I

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bs;->b(Z)V

    goto :goto_0
.end method

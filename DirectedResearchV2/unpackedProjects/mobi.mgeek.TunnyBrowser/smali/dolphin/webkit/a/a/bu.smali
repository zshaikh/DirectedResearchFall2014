.class Ldolphin/webkit/a/a/bu;
.super Ldolphin/webkit/a/a/bx;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/a/a/bx;-><init>(Ljava/io/InputStream;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/a/a/bu;->d:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/a/a/bu;->e:Z

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/a/a/bu;->b:I

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/a/a/bu;->c:I

    .line 25
    iget v0, p0, Ldolphin/webkit/a/a/bu;->c:I

    if-gez v0, :cond_0

    .line 28
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 31
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/a/a/bu;->b()Z

    .line 32
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-boolean v0, p0, Ldolphin/webkit/a/a/bu;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/a/a/bu;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldolphin/webkit/a/a/bu;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Ldolphin/webkit/a/a/bu;->c:I

    if-nez v0, :cond_0

    .line 45
    iput-boolean v1, p0, Ldolphin/webkit/a/a/bu;->d:Z

    .line 46
    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bu;->b(Z)V

    .line 48
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/a/a/bu;->d:Z

    return v0
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Ldolphin/webkit/a/a/bu;->e:Z

    .line 38
    invoke-direct {p0}, Ldolphin/webkit/a/a/bu;->b()Z

    .line 39
    return-void
.end method

.method public read()I
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ldolphin/webkit/a/a/bu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, -0x1

    .line 109
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/a/a/bu;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 98
    if-gez v1, :cond_1

    .line 101
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 104
    :cond_1
    iget v0, p0, Ldolphin/webkit/a/a/bu;->b:I

    .line 106
    iget v2, p0, Ldolphin/webkit/a/a/bu;->c:I

    iput v2, p0, Ldolphin/webkit/a/a/bu;->b:I

    .line 107
    iput v1, p0, Ldolphin/webkit/a/a/bu;->c:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 55
    iget-boolean v0, p0, Ldolphin/webkit/a/a/bu;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/a/a/bx;->read([BII)I

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/a/a/bu;->d:Z

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, -0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/a/a/bu;->a:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 67
    if-gez v0, :cond_3

    .line 70
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 73
    :cond_3
    iget v1, p0, Ldolphin/webkit/a/a/bu;->b:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 74
    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Ldolphin/webkit/a/a/bu;->c:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 76
    iget-object v1, p0, Ldolphin/webkit/a/a/bu;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Ldolphin/webkit/a/a/bu;->b:I

    .line 77
    iget-object v1, p0, Ldolphin/webkit/a/a/bu;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Ldolphin/webkit/a/a/bu;->c:I

    .line 79
    iget v1, p0, Ldolphin/webkit/a/a/bu;->c:I

    if-gez v1, :cond_4

    .line 82
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 85
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

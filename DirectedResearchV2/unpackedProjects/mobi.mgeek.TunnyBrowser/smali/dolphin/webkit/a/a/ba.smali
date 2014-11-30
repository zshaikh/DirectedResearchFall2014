.class public Ldolphin/webkit/a/a/ba;
.super Ldolphin/webkit/a/a/k;
.source "DERNumericString.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 61
    array-length v0, p1

    new-array v1, v0, [C

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 65
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Ldolphin/webkit/a/a/ba;->a:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 127
    const/16 v0, 0x12

    invoke-virtual {p0}, Ldolphin/webkit/a/a/ba;->f()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 128
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 138
    instance-of v0, p1, Ldolphin/webkit/a/a/ba;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    check-cast p1, Ldolphin/webkit/a/a/ba;

    .line 145
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ba;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/a/a/ba;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ldolphin/webkit/a/a/ba;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Ldolphin/webkit/a/a/ba;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 113
    array-length v0, v1

    new-array v2, v0, [B

    .line 115
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 117
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ba;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ldolphin/webkit/a/a/ba;->a:Ljava/lang/String;

    return-object v0
.end method

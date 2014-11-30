.class public Ldolphin/webkit/a/a/bg;
.super Ldolphin/webkit/a/a/k;
.source "DERPrintableString.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 63
    array-length v0, p1

    new-array v1, v0, [C

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 67
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/a/a/bg;->a:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 128
    const/16 v0, 0x13

    invoke-virtual {p0}, Ldolphin/webkit/a/a/bg;->f()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 129
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 139
    instance-of v0, p1, Ldolphin/webkit/a/a/bg;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 144
    :cond_0
    check-cast p1, Ldolphin/webkit/a/a/bg;

    .line 146
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/a/a/bg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ldolphin/webkit/a/a/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Ldolphin/webkit/a/a/bg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 114
    array-length v0, v1

    new-array v2, v0, [B

    .line 116
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 118
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ldolphin/webkit/a/a/bg;->a:Ljava/lang/String;

    return-object v0
.end method

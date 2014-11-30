.class public Ldolphin/webkit/a/a/ax;
.super Ldolphin/webkit/a/a/k;
.source "DERIA5String.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/a/a/ax;-><init>(Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Ldolphin/webkit/a/a/ax;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput-object p1, p0, Ldolphin/webkit/a/a/ax;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

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

    iput-object v0, p0, Ldolphin/webkit/a/a/ax;->a:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 165
    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 171
    :goto_1
    return v0

    .line 161
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 131
    const/16 v0, 0x16

    invoke-virtual {p0}, Ldolphin/webkit/a/a/ax;->f()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 132
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 142
    instance-of v0, p1, Ldolphin/webkit/a/a/ax;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    check-cast p1, Ldolphin/webkit/a/a/ax;

    .line 149
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ax;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/a/a/ax;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/webkit/a/a/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Ldolphin/webkit/a/a/ax;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 117
    array-length v0, v1

    new-array v2, v0, [B

    .line 119
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 121
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ax;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ldolphin/webkit/a/a/ax;->a:Ljava/lang/String;

    return-object v0
.end method

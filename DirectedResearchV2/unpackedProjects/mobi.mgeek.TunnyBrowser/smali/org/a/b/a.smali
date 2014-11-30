.class public final Lorg/a/b/a;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method public static a([B)I
    .locals 3

    .prologue
    .line 202
    if-nez p0, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 216
    :cond_0
    return v0

    .line 207
    :cond_1
    array-length v1, p0

    .line 208
    add-int/lit8 v0, v1, 0x1

    .line 210
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 212
    mul-int/lit16 v0, v0, 0x101

    .line 213
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static a([B[B)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 87
    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 92
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    .line 94
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 100
    goto :goto_0
.end method

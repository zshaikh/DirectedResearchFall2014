.class public Lcom/kochava/android/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static map1:[C

.field private static map2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    .line 6
    new-array v3, v6, [C

    sput-object v3, Lcom/kochava/android/util/Base64Coder;->map1:[C

    .line 8
    const/4 v1, 0x0

    .line 9
    .local v1, i:I
    const/16 v0, 0x41

    .local v0, c:C
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 10
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 11
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    .line 12
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const/16 v4, 0x2b

    aput-char v4, v3, v2

    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map1:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    .line 15
    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/kochava/android/util/Base64Coder;->map2:[B

    .line 17
    const/4 v1, 0x0

    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_3
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map2:[B

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 18
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v6, :cond_4

    .line 3
    return-void

    .line 9
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_0
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 10
    :cond_1
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 11
    :cond_2
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 17
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_3
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 18
    :cond_4
    sget-object v3, Lcom/kochava/android/util/Base64Coder;->map2:[B

    sget-object v4, Lcom/kochava/android/util/Base64Coder;->map1:[C

    aget-char v4, v4, v1

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/util/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 11
    .parameter "in"

    .prologue
    .line 92
    array-length v0, p0

    .line 93
    .local v0, iLen:I
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v0, "Length of Base64 encoded input string is not a multiple of 4."

    .end local v0           #iLen:I
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    .local v4, iLen:I
    .restart local p0
    :cond_0
    add-int/lit8 v0, v4, -0x1

    .end local v4           #iLen:I
    .restart local v0       #iLen:I
    move v4, v0

    .end local v0           #iLen:I
    .restart local v4       #iLen:I
    :goto_0
    if-lez v4, :cond_1

    const/4 v0, 0x1

    sub-int v0, v4, v0

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 95
    :cond_1
    mul-int/lit8 v0, v4, 0x3

    div-int/lit8 v6, v0, 0x4

    .line 96
    .local v6, oLen:I
    new-array v8, v6, [B

    .line 97
    .local v8, out:[B
    const/4 v0, 0x0

    .line 98
    .local v0, ip:I
    const/4 v1, 0x0

    .local v1, op:I
    move v7, v1

    .line 99
    .end local v1           #op:I
    .local v7, op:I
    :goto_1
    if-lt v0, v4, :cond_2

    .line 118
    return-object v8

    .line 100
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0           #ip:I
    .local v1, ip:I
    aget-char v0, p0, v0

    .line 101
    .local v0, i0:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #ip:I
    .local v2, ip:I
    aget-char v1, p0, v1

    .line 102
    .local v1, i1:I
    if-ge v2, v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    .end local v2           #ip:I
    .local v3, ip:I
    aget-char v2, p0, v2

    move v5, v3

    .line 103
    .end local v3           #ip:I
    .local v2, i2:I
    .local v5, ip:I
    :goto_2
    if-ge v5, v4, :cond_5

    add-int/lit8 v3, v5, 0x1

    .end local v5           #ip:I
    .restart local v3       #ip:I
    aget-char v5, p0, v5

    move v10, v5

    move v5, v3

    .end local v3           #ip:I
    .restart local v5       #ip:I
    move v3, v10

    .line 104
    .local v3, i3:I
    :goto_3
    const/16 v9, 0x7f

    if-gt v0, v9, :cond_3

    const/16 v9, 0x7f

    if-gt v1, v9, :cond_3

    const/16 v9, 0x7f

    if-gt v2, v9, :cond_3

    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 105
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v0, "Illegal character in Base64 encoded data."

    .end local v0           #i0:I
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    .end local v3           #i3:I
    .end local v5           #ip:I
    .restart local v0       #i0:I
    .local v2, ip:I
    .restart local p0
    :cond_4
    const/16 v3, 0x41

    move v5, v2

    .end local v2           #ip:I
    .restart local v5       #ip:I
    move v2, v3

    goto :goto_2

    .line 103
    .local v2, i2:I
    :cond_5
    const/16 v3, 0x41

    goto :goto_3

    .line 106
    .restart local v3       #i3:I
    :cond_6
    sget-object v9, Lcom/kochava/android/util/Base64Coder;->map2:[B

    aget-byte v0, v9, v0

    .line 107
    .local v0, b0:I
    sget-object v9, Lcom/kochava/android/util/Base64Coder;->map2:[B

    aget-byte v1, v9, v1

    .line 108
    .local v1, b1:I
    sget-object v9, Lcom/kochava/android/util/Base64Coder;->map2:[B

    aget-byte v2, v9, v2

    .line 109
    .local v2, b2:I
    sget-object v9, Lcom/kochava/android/util/Base64Coder;->map2:[B

    aget-byte v3, v9, v3

    .line 110
    .local v3, b3:I
    if-ltz v0, :cond_7

    if-ltz v1, :cond_7

    if-ltz v2, :cond_7

    if-gez v3, :cond_8

    .line 111
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v0, "Illegal character in Base64 encoded data."

    .end local v0           #b0:I
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    .restart local v0       #b0:I
    .restart local p0
    :cond_8
    shl-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v9, v1, 0x4

    or-int/2addr v0, v9

    .line 113
    .local v0, o0:I
    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v9, v2, 0x2

    or-int/2addr v1, v9

    .line 114
    .local v1, o1:I
    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v3

    .line 115
    .local v2, o2:I
    add-int/lit8 v3, v7, 0x1

    .end local v7           #op:I
    .local v3, op:I
    int-to-byte v0, v0

    aput-byte v0, v8, v7

    .line 116
    .end local v0           #o0:I
    if-ge v3, v6, :cond_a

    add-int/lit8 v0, v3, 0x1

    .end local v3           #op:I
    .local v0, op:I
    int-to-byte v1, v1

    aput-byte v1, v8, v3

    .end local v1           #o1:I
    move v1, v0

    .line 117
    .end local v0           #op:I
    .local v1, op:I
    :goto_4
    if-ge v1, v6, :cond_9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #op:I
    .restart local v0       #op:I
    int-to-byte v2, v2

    aput-byte v2, v8, v1

    .end local v2           #o2:I
    move v7, v0

    .end local v0           #op:I
    .restart local v7       #op:I
    move v0, v5

    .end local v5           #ip:I
    .local v0, ip:I
    goto/16 :goto_1

    .end local v0           #ip:I
    .end local v7           #op:I
    .restart local v1       #op:I
    .restart local v2       #o2:I
    .restart local v5       #ip:I
    :cond_9
    move v7, v1

    .end local v1           #op:I
    .restart local v7       #op:I
    move v0, v5

    .end local v5           #ip:I
    .restart local v0       #ip:I
    goto/16 :goto_1

    .end local v0           #ip:I
    .end local v7           #op:I
    .local v1, o1:I
    .restart local v3       #op:I
    .restart local v5       #ip:I
    :cond_a
    move v1, v3

    .end local v3           #op:I
    .local v1, op:I
    goto :goto_4

    .end local v1           #op:I
    .end local v2           #o2:I
    .end local v4           #iLen:I
    .end local v5           #ip:I
    .end local v6           #oLen:I
    .end local v8           #out:[B
    .local v0, iLen:I
    :cond_b
    move v4, v0

    .end local v0           #iLen:I
    .restart local v4       #iLen:I
    goto/16 :goto_0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kochava/android/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 1
    .parameter "in"

    .prologue
    .line 37
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/kochava/android/util/Base64Coder;->encode([BI)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 11
    .parameter "in"
    .parameter "iLen"

    .prologue
    .line 47
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v5, v0, 0x3

    .line 48
    .local v5, oDataLen:I
    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 49
    .local v0, oLen:I
    new-array v8, v0, [C

    .line 50
    .local v8, out:[C
    const/4 v0, 0x0

    .line 51
    .local v0, ip:I
    const/4 v1, 0x0

    .local v1, op:I
    move v7, v1

    .line 52
    .end local v1           #op:I
    .local v7, op:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 64
    return-object v8

    .line 53
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #ip:I
    .local v1, ip:I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 54
    .local v0, i0:I
    if-ge v1, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1           #ip:I
    .local v2, ip:I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    move v3, v2

    .line 55
    .end local v2           #ip:I
    .local v1, i1:I
    .local v3, ip:I
    :goto_1
    if-ge v3, p1, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #ip:I
    .restart local v2       #ip:I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    move v10, v3

    move v3, v2

    .end local v2           #ip:I
    .restart local v3       #ip:I
    move v2, v10

    .line 56
    .local v2, i2:I
    :goto_2
    ushr-int/lit8 v4, v0, 0x2

    .line 57
    .local v4, o0:I
    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v6, v1, 0x4

    or-int/2addr v0, v6

    .line 58
    .local v0, o1:I
    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v6, v2, 0x6

    or-int/2addr v1, v6

    .line 59
    .local v1, o2:I
    and-int/lit8 v2, v2, 0x3f

    .line 60
    .local v2, o3:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #op:I
    .local v6, op:I
    sget-object v9, Lcom/kochava/android/util/Base64Coder;->map1:[C

    aget-char v4, v9, v4

    .end local v4           #o0:I
    aput-char v4, v8, v7

    .line 61
    add-int/lit8 v4, v6, 0x1

    .end local v6           #op:I
    .local v4, op:I
    sget-object v7, Lcom/kochava/android/util/Base64Coder;->map1:[C

    aget-char v0, v7, v0

    .end local v0           #o1:I
    aput-char v0, v8, v6

    .line 62
    if-ge v4, v5, :cond_3

    sget-object v0, Lcom/kochava/android/util/Base64Coder;->map1:[C

    aget-char v0, v0, v1

    :goto_3
    aput-char v0, v8, v4

    add-int/lit8 v0, v4, 0x1

    .line 63
    .end local v4           #op:I
    .local v0, op:I
    if-ge v0, v5, :cond_4

    sget-object v1, Lcom/kochava/android/util/Base64Coder;->map1:[C

    .end local v1           #o2:I
    aget-char v1, v1, v2

    :goto_4
    aput-char v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    .end local v0           #op:I
    .restart local v7       #op:I
    move v0, v3

    .end local v3           #ip:I
    .local v0, ip:I
    goto :goto_0

    .line 54
    .end local v2           #o3:I
    .local v0, i0:I
    .local v1, ip:I
    :cond_1
    const/4 v2, 0x0

    move v3, v1

    .end local v1           #ip:I
    .restart local v3       #ip:I
    move v1, v2

    goto :goto_1

    .line 55
    .local v1, i1:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 62
    .end local v0           #i0:I
    .end local v7           #op:I
    .local v1, o2:I
    .restart local v2       #o3:I
    .restart local v4       #op:I
    :cond_3
    const/16 v0, 0x3d

    goto :goto_3

    .line 63
    .end local v4           #op:I
    .local v0, op:I
    :cond_4
    const/16 v1, 0x3d

    goto :goto_4
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 27
    return-object p0
.end method

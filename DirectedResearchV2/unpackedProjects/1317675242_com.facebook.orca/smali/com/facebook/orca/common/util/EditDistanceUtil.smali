.class public Lcom/facebook/orca/common/util/EditDistanceUtil;
.super Ljava/lang/Object;
.source "EditDistanceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 12
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 36
    if-nez v0, :cond_3

    move v0, v1

    .line 76
    :cond_2
    :goto_0
    return v0

    .line 38
    :cond_3
    if-eqz v1, :cond_2

    .line 42
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 43
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    move v4, v11

    .line 54
    :goto_1
    if-gt v4, v0, :cond_4

    .line 55
    aput v4, v2, v4

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v4, v2

    move v2, v10

    .line 58
    :goto_2
    if-gt v2, v1, :cond_7

    .line 59
    sub-int v5, v2, v10

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 60
    aput v2, v3, v11

    move v6, v10

    .line 62
    :goto_3
    if-gt v6, v0, :cond_6

    .line 63
    sub-int v7, v6, v10

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_5

    move v7, v11

    .line 65
    :goto_4
    sub-int v8, v6, v10

    aget v8, v3, v8

    add-int/lit8 v8, v8, 0x1

    aget v9, v4, v6

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v9, v6, v10

    aget v9, v4, v9

    add-int/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v3, v6

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v7, v10

    .line 63
    goto :goto_4

    .line 58
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    goto :goto_2

    .line 76
    :cond_7
    aget v0, v4, v0

    goto :goto_0
.end method

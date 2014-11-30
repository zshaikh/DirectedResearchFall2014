.class public final Lcom/flurry/android/monolithic/sdk/impl/pt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pt;->a:Ljava/lang/String;

    .line 17
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pt;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 278
    if-nez p0, :cond_0

    move-wide v0, p1

    .line 289
    :goto_0
    return-wide v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 283
    if-nez v1, :cond_1

    move-wide v0, p1

    .line 284
    goto :goto_0

    .line 287
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->c(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    move-wide v0, p1

    .line 289
    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    .line 70
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_2

    move v2, v4

    .line 76
    :goto_0
    if-eqz v2, :cond_5

    .line 77
    if-eq v1, v4, :cond_0

    const/16 v0, 0xa

    if-le v1, v0, :cond_3

    .line 78
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v3

    .line 72
    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 86
    :goto_2
    if-gt v3, v6, :cond_4

    if-ge v3, v5, :cond_6

    .line 87
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 82
    :cond_5
    const/16 v3, 0x9

    if-le v1, v3, :cond_10

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 89
    :cond_6
    sub-int/2addr v3, v5

    .line 90
    if-ge v0, v1, :cond_f

    .line 91
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    if-gt v0, v6, :cond_7

    if-ge v0, v5, :cond_8

    .line 93
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 95
    :cond_8
    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v0, v5

    add-int/2addr v0, v3

    .line 96
    if-ge v4, v1, :cond_d

    .line 97
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 98
    if-gt v4, v6, :cond_9

    if-ge v4, v5, :cond_a

    .line 99
    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 101
    :cond_a
    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 103
    if-ge v3, v1, :cond_d

    .line 105
    :goto_3
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 106
    if-gt v3, v6, :cond_b

    if-ge v3, v5, :cond_c

    .line 107
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 109
    :cond_c
    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 110
    if-lt v4, v1, :cond_e

    .line 114
    :cond_d
    :goto_4
    if-eqz v2, :cond_1

    neg-int v0, v0

    goto :goto_1

    :cond_e
    move v3, v4

    goto :goto_3

    :cond_f
    move v0, v3

    goto :goto_4

    :cond_10
    move v3, v0

    move v0, v4

    goto :goto_2
.end method

.method public static final a([CII)I
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 28
    aget-char v0, p0, p1

    sub-int/2addr v0, v4

    .line 29
    add-int v1, p2, p1

    .line 31
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_0

    .line 32
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 33
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 34
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 36
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 37
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 38
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 40
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 42
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 43
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 44
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 45
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    .line 46
    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 55
    :cond_0
    return v0
.end method

.method public static final a(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pt;->a:Ljava/lang/String;

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 178
    if-ge v2, v1, :cond_1

    move v0, v6

    .line 188
    :goto_1
    return v0

    .line 175
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pt;->b:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_1
    if-le v2, v1, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v2, v5

    .line 182
    :goto_2
    if-ge v2, v1, :cond_5

    .line 183
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    .line 184
    if-eqz v3, :cond_4

    .line 185
    if-gez v3, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1

    .line 182
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v6

    .line 188
    goto :goto_1
.end method

.method public static final a([CIIZ)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    if-eqz p3, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pt;->a:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 152
    if-ge p2, v1, :cond_1

    move v0, v6

    .line 161
    :goto_1
    return v0

    .line 150
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pt;->b:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    if-le p2, v1, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v2, v5

    .line 155
    :goto_2
    if-ge v2, v1, :cond_5

    .line 156
    add-int v3, p1, v2

    aget-char v3, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    .line 157
    if-eqz v3, :cond_4

    .line 158
    if-gez v3, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1

    .line 155
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v6

    .line 161
    goto :goto_1
.end method

.method public static final b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 131
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 132
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 135
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final b([CII)J
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 120
    sub-int v0, p2, v5

    .line 121
    invoke-static {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    .line 122
    add-int/2addr v0, p1

    invoke-static {p0, v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method

.method public static final c(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-wide/high16 v0, 0x10000000000000L

    .line 301
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

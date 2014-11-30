.class public final Lcom/flurry/org/codehaus/jackson/io/NumberInput;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final L_BILLION:J = 0x3b9aca00L

.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

.field public static final NASTY_SMALL_DOUBLE:Ljava/lang/String; = "2.2250738585072012e-308"


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

    sput-object v0, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 17
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final inLongRange(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "numberStr"    # Ljava/lang/String;
    .param p1, "negative"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    if-eqz p1, :cond_0

    sget-object v5, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    move-object v2, v5

    .line 176
    .local v2, "cmpStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    .local v1, "cmpLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    .local v0, "actualLen":I
    if-ge v0, v1, :cond_1

    move v5, v7

    .line 188
    :goto_1
    return v5

    .line 175
    .end local v0    # "actualLen":I
    .end local v1    # "cmpLen":I
    .end local v2    # "cmpStr":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    move-object v2, v5

    goto :goto_0

    .line 179
    .restart local v0    # "actualLen":I
    .restart local v1    # "cmpLen":I
    .restart local v2    # "cmpStr":Ljava/lang/String;
    :cond_1
    if-le v0, v1, :cond_2

    move v5, v8

    goto :goto_1

    .line 182
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_5

    .line 183
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int v3, v5, v6

    .line 184
    .local v3, "diff":I
    if-eqz v3, :cond_4

    .line 185
    if-gez v3, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v8

    goto :goto_1

    .line 182
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v3    # "diff":I
    :cond_5
    move v5, v7

    .line 188
    goto :goto_1
.end method

.method public static final inLongRange([CIIZ)Z
    .locals 8
    .param p0, "digitChars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "negative"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 150
    if-eqz p3, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    move-object v1, v4

    .line 151
    .local v1, "cmpStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "cmpLen":I
    if-ge p2, v0, :cond_1

    move v4, v6

    .line 161
    :goto_1
    return v4

    .line 150
    .end local v0    # "cmpLen":I
    .end local v1    # "cmpStr":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    move-object v1, v4

    goto :goto_0

    .line 153
    .restart local v0    # "cmpLen":I
    .restart local v1    # "cmpStr":Ljava/lang/String;
    :cond_1
    if-le p2, v0, :cond_2

    move v4, v7

    goto :goto_1

    .line 155
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 156
    add-int v4, p1, v3

    aget-char v4, p0, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int v2, v4, v5

    .line 157
    .local v2, "diff":I
    if-eqz v2, :cond_4

    .line 158
    if-gez v2, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_1

    .line 155
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "diff":I
    :cond_5
    move v4, v6

    .line 161
    goto :goto_1
.end method

.method public static parseAsDouble(Ljava/lang/String;D)D
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 278
    if-nez p0, :cond_0

    move-wide v1, p1

    .line 289
    :goto_0
    return-wide v1

    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    .local v0, "len":I
    if-nez v0, :cond_1

    move-wide v1, p1

    .line 284
    goto :goto_0

    .line 287
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    move-wide v1, p1

    .line 289
    goto :goto_0
.end method

.method public static parseAsInt(Ljava/lang/String;I)I
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 196
    if-nez p0, :cond_0

    move v4, p1

    .line 229
    :goto_0
    return v4

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 201
    .local v3, "len":I
    if-nez v3, :cond_1

    move v4, p1

    .line 202
    goto :goto_0

    .line 205
    :cond_1
    const/4 v2, 0x0

    .line 206
    .local v2, "i":I
    if-ge v2, v3, :cond_2

    .line 207
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    .local v0, "c":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_4

    .line 209
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    .end local v0    # "c":C
    :cond_2
    :goto_1
    if-ge v2, v3, :cond_6

    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    .restart local v0    # "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    const/16 v4, 0x30

    if-ge v0, v4, :cond_5

    .line 220
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_0

    .line 211
    :cond_4
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v4, p1

    .line 222
    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "c":C
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 228
    :catch_1
    move-exception v4

    move v4, p1

    .line 229
    goto :goto_0
.end method

.method public static parseAsLong(Ljava/lang/String;J)J
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 237
    if-nez p0, :cond_0

    move-wide v4, p1

    .line 270
    :goto_0
    return-wide v4

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 242
    .local v3, "len":I
    if-nez v3, :cond_1

    move-wide v4, p1

    .line 243
    goto :goto_0

    .line 246
    :cond_1
    const/4 v2, 0x0

    .line 247
    .local v2, "i":I
    if-ge v2, v3, :cond_2

    .line 248
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 249
    .local v0, "c":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_4

    .line 250
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 256
    .end local v0    # "c":C
    :cond_2
    :goto_1
    if-ge v2, v3, :cond_6

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    .restart local v0    # "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    const/16 v4, 0x30

    if-ge v0, v4, :cond_5

    .line 261
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-long v4, v4

    goto :goto_0

    .line 252
    :cond_4
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move-wide v4, p1

    .line 263
    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    .end local v0    # "c":C
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    goto :goto_0

    .line 269
    :catch_1
    move-exception v4

    move-wide v4, p1

    .line 270
    goto :goto_0
.end method

.method public static final parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "numStr"    # Ljava/lang/String;
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

.method public static final parseInt(Ljava/lang/String;)I
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 70
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 71
    .local v0, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    .local v1, "length":I
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_1

    move v2, v10

    .line 73
    .local v2, "negative":Z
    :goto_0
    const/4 v4, 0x1

    .line 76
    .local v4, "offset":I
    if-eqz v2, :cond_4

    .line 77
    if-eq v1, v10, :cond_0

    const/16 v6, 0xa

    if-le v1, v6, :cond_2

    .line 78
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 114
    :goto_1
    return v6

    .end local v2    # "negative":Z
    .end local v4    # "offset":I
    :cond_1
    move v2, v7

    .line 72
    goto :goto_0

    .line 80
    .restart local v2    # "negative":Z
    .restart local v4    # "offset":I
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    :goto_2
    if-gt v0, v9, :cond_3

    if-ge v0, v8, :cond_5

    .line 87
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .line 82
    :cond_4
    const/16 v6, 0x9

    if-le v1, v6, :cond_10

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 89
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_5
    sub-int v3, v0, v8

    .line 90
    .local v3, "num":I
    if-ge v5, v1, :cond_d

    .line 91
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    if-gt v0, v9, :cond_6

    if-ge v0, v8, :cond_7

    .line 93
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 95
    :cond_7
    mul-int/lit8 v6, v3, 0xa

    sub-int v7, v0, v8

    add-int v3, v6, v7

    .line 96
    if-ge v4, v1, :cond_e

    .line 97
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 98
    if-gt v0, v9, :cond_8

    if-ge v0, v8, :cond_9

    .line 99
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .line 101
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_9
    mul-int/lit8 v6, v3, 0xa

    sub-int v7, v0, v8

    add-int v3, v6, v7

    .line 103
    if-ge v5, v1, :cond_d

    :cond_a
    move v4, v5

    .line 105
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 106
    if-gt v0, v9, :cond_b

    if-ge v0, v8, :cond_c

    .line 107
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .line 109
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_c
    mul-int/lit8 v6, v3, 0xa

    sub-int v7, v0, v8

    add-int v3, v6, v7

    .line 110
    if-lt v5, v1, :cond_a

    :cond_d
    move v4, v5

    .line 114
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_e
    if-eqz v2, :cond_f

    neg-int v6, v3

    goto :goto_1

    :cond_f
    move v6, v3

    goto :goto_1

    .end local v3    # "num":I
    :cond_10
    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_2
.end method

.method public static final parseInt([CII)I
    .locals 4
    .param p0, "digitChars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x30

    .line 28
    aget-char v1, p0, p1

    sub-int v0, v1, v3

    .line 29
    .local v0, "num":I
    add-int/2addr p2, p1

    .line 31
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 32
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 33
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 34
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 35
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 36
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 37
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 38
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 39
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 40
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 41
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 42
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 43
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 44
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 45
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 46
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 55
    :cond_0
    return v0
.end method

.method public static final parseLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 131
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 132
    invoke-static {p0}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 135
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static final parseLong([CII)J
    .locals 8
    .param p0, "digitChars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v7, 0x9

    .line 120
    sub-int v0, p2, v7

    .line 121
    .local v0, "len1":I
    invoke-static {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x3b9aca00

    mul-long v1, v3, v5

    .line 122
    .local v1, "val":J
    add-int v3, p1, v0

    invoke-static {p0, v3, v7}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    return-wide v3
.end method

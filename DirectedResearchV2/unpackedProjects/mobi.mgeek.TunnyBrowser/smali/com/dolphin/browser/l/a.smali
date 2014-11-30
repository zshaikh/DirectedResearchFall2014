.class public Lcom/dolphin/browser/l/a;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/dolphin/browser/l/a;->a:[I

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x3

    const/4 v2, -0x6

    const/4 v4, 0x0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 98
    invoke-static {v5, v6}, Lcom/dolphin/browser/util/ai;->a(J)[B

    move-result-object v6

    .line 99
    const-string v0, "mysalt"

    invoke-static {v0}, Lcom/dolphin/browser/util/cn;->k(Ljava/lang/String;)[B

    move-result-object v7

    .line 100
    const-string v0, "mysalt"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v4

    .line 102
    :goto_0
    if-ge v5, v8, :cond_0

    .line 104
    aget-byte v0, v7, v5

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 118
    :goto_1
    aget-byte v9, v7, v5

    add-int/2addr v0, v9

    int-to-byte v0, v0

    aput-byte v0, v7, v5

    .line 102
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 107
    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 110
    goto :goto_1

    :pswitch_2
    move v0, v3

    .line 113
    goto :goto_1

    :cond_0
    move v0, v4

    .line 121
    :goto_2
    if-ge v0, v8, :cond_1

    .line 122
    aget-byte v5, v7, v0

    aget-byte v9, v6, v0

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v7, v0

    .line 123
    aget-byte v5, v6, v0

    aget-byte v9, v7, v0

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    .line 124
    aget-byte v5, v7, v0

    aget-byte v9, v6, v0

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v7, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v5, v4

    .line 127
    :goto_3
    if-ge v5, v8, :cond_2

    .line 129
    aget-byte v0, v6, v5

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_1

    move v0, v4

    .line 143
    :goto_4
    aget-byte v9, v6, v5

    sub-int v0, v9, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v5

    .line 127
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :pswitch_3
    move v0, v1

    .line 132
    goto :goto_4

    :pswitch_4
    move v0, v2

    .line 135
    goto :goto_4

    :pswitch_5
    move v0, v3

    .line 138
    goto :goto_4

    .line 146
    :cond_2
    :goto_5
    if-ge v4, v8, :cond_3

    .line 147
    aget-byte v0, v7, v4

    aget-byte v1, v6, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v4

    .line 148
    aget-byte v0, v6, v4

    aget-byte v1, v7, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v4

    .line 149
    aget-byte v0, v7, v4

    aget-byte v1, v6, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v4

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 151
    :cond_3
    invoke-static {v7}, Lcom/dolphin/browser/util/cn;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_1
    const-string v0, "v02"

    invoke-static {v0}, Lcom/dolphin/browser/l/a;->c(Ljava/lang/String;)Lcom/dolphin/browser/l/b;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/l/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v02"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    const-string v0, ""

    .line 230
    :goto_0
    return-object v0

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 227
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 228
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/dolphin/browser/l/a;->a(Ljava/lang/StringBuffer;B)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 3

    .prologue
    .line 235
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 214
    new-array v2, v1, [B

    .line 215
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 216
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 166
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 169
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/dolphin/browser/l/a;->c(Ljava/lang/String;)Lcom/dolphin/browser/l/b;

    move-result-object v0

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/l/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/dolphin/browser/l/a;->d(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lcom/dolphin/browser/l/b;
    .locals 2

    .prologue
    .line 184
    const-string v0, "v01"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/dolphin/browser/l/c;

    invoke-direct {v0}, Lcom/dolphin/browser/l/c;-><init>()V

    .line 187
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const-string v0, "v02"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Lcom/dolphin/browser/l/d;

    invoke-direct {v0}, Lcom/dolphin/browser/l/d;-><init>()V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 176
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 193
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/l/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cn;->k(Ljava/lang/String;)[B

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 196
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 197
    new-array v2, v4, [B

    .line 198
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 199
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v2
.end method

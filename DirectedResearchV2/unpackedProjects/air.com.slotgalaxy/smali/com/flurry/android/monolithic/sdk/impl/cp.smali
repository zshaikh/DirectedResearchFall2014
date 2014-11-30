.class public final Lcom/flurry/android/monolithic/sdk/impl/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/cp;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 60
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->c(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 44
    if-nez v0, :cond_1

    move-object v0, p0

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v1, v0, v2, v3, v3}, Lcom/flurry/android/monolithic/sdk/impl/cp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 55
    if-nez v0, :cond_3

    move-object v0, p0

    .line 56
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "/"

    .line 104
    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 228
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->c(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 111
    if-nez v0, :cond_2

    move-object v0, p0

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 117
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/cp;->c(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 118
    if-nez v1, :cond_3

    move-object v0, p0

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object v0, p0

    .line 125
    goto :goto_0

    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 130
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    move-object v0, p0

    .line 131
    goto :goto_0

    .line 134
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v0, p0

    .line 135
    goto :goto_0

    .line 138
    :cond_7
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 140
    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    move-object v0, p0

    .line 141
    goto :goto_0

    .line 144
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v0, p0

    .line 145
    goto :goto_0

    .line 148
    :cond_9
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 151
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/cp;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 152
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/cp;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v3

    .line 154
    array-length v4, v2

    .line 155
    array-length v5, v3

    .line 157
    const/4 v6, 0x0

    .line 158
    :goto_1
    if-ge v6, v5, :cond_a

    if-ge v6, v4, :cond_a

    .line 159
    aget-object v7, v2, v6

    .line 160
    aget-object v8, v3, v6

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 166
    :cond_a
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    if-ne v6, v5, :cond_e

    if-ne v6, v4, :cond_e

    .line 175
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 179
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 181
    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    move-object v0, v10

    move-object v1, v10

    .line 221
    :cond_b
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v10, v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 223
    if-nez v0, :cond_12

    move-object v0, p0

    .line 224
    goto/16 :goto_0

    .line 158
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 185
    :cond_d
    if-eqz v5, :cond_14

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object v1, v10

    .line 191
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 192
    sub-int v1, v4, v9

    aget-object v1, v2, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v3

    .line 194
    goto :goto_2

    .line 198
    :cond_e
    sub-int v1, v4, v9

    .line 199
    sub-int/2addr v5, v9

    move v8, v6

    .line 201
    :goto_4
    if-ge v8, v5, :cond_13

    .line 202
    const-string v9, ".."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v9, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 206
    :goto_5
    if-ge v5, v1, :cond_f

    .line 207
    aget-object v6, v2, v5

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v6, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 211
    :cond_f
    if-ge v5, v4, :cond_10

    .line 212
    aget-object v1, v2, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 216
    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    move-object v1, v3

    goto :goto_2

    .line 227
    :cond_12
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    move v5, v6

    goto :goto_5

    :cond_14
    move-object v1, v3

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    .prologue
    .line 242
    const/4 v6, 0x0

    .line 244
    :try_start_0
    new-instance v0, Ljava/net/URI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 93
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->c(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    move-object v0, p0

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "./"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    move-object v0, p0

    .line 89
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 237
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0
.end method

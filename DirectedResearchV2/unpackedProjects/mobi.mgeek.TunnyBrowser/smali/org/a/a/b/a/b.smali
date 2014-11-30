.class public Lorg/a/a/b/a/b;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_0

    .line 245
    invoke-static {v1}, Lorg/a/a/b/a/b;->c(Ljava/lang/String;)Lorg/a/a/l;

    move-result-object v0

    .line 247
    instance-of v2, v0, Lorg/a/a/w;

    if-eqz v2, :cond_0

    .line 249
    check-cast v0, Lorg/a/a/w;

    invoke-interface {v0}, Lorg/a/a/w;->s_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    invoke-static {v0}, Lorg/a/a/b/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/a/a/d;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x23

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    instance-of v2, p0, Lorg/a/a/w;

    if-eqz v2, :cond_3

    instance-of v2, p0, Lorg/a/a/bs;

    if-nez v2, :cond_3

    .line 181
    check-cast p0, Lorg/a/a/w;

    invoke-interface {p0}, Lorg/a/a/w;->s_()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v0, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5

    move v1, v2

    .line 204
    :goto_1
    if-eq v0, v1, :cond_4

    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x3c

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_1

    .line 215
    :cond_0
    const-string v2, "\\"

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 193
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/a/a/d;->c()Lorg/a/a/bd;

    move-result-object v4

    invoke-virtual {v4}, Lorg/a/a/bd;->b()[B

    move-result-object v4

    invoke-static {v4}, Lorg/a/b/a/b;->a([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/a/a/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 223
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    array-length v0, p0

    new-array v1, v0, [C

    .line 231
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 233
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/StringBuffer;Lorg/a/a/b/a;Ljava/util/Hashtable;)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p1}, Lorg/a/a/b/a;->e()Lorg/a/a/m;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :goto_0
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {p1}, Lorg/a/a/b/a;->f()Lorg/a/a/d;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lorg/a/a/b/a;->e()Lorg/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 273
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 284
    if-ne v1, v4, :cond_0

    if-eq v2, v4, :cond_1

    .line 286
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lorg/a/a/l;
    .locals 4

    .prologue
    .line 262
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/a/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/l;->a([B)Lorg/a/a/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

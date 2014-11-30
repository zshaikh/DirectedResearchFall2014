.class public Lorg/c/a/d/r;
.super Ljava/lang/Object;
.source "URIUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "org.eclipse.jetty.util.URI.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/r;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object p0

    .line 67
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/c/a/d/r;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    .line 80
    if-nez p0, :cond_1

    move v0, v1

    .line 83
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 86
    sparse-switch v3, :sswitch_data_0

    .line 100
    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 104
    :try_start_0
    sget-object v0, Lorg/c/a/d/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    :goto_1
    if-nez p0, :cond_2

    .line 211
    :goto_2
    return-object v2

    .line 97
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    .line 98
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 120
    :cond_2
    monitor-enter p0

    .line 122
    if-eqz v0, :cond_4

    .line 124
    :goto_3
    :try_start_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 126
    aget-byte v2, v0, v1

    .line 127
    sparse-switch v2, :sswitch_data_1

    .line 157
    if-gez v2, :cond_3

    .line 159
    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {v2, p0}, Lorg/c/a/d/q;->a(BLjava/lang/Appendable;)V

    .line 124
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 130
    :sswitch_1
    const-string v2, "%25"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :sswitch_2
    :try_start_2
    const-string v2, "%3F"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 136
    :sswitch_3
    const-string v2, "%3B"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 139
    :sswitch_4
    const-string v2, "%23"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 142
    :sswitch_5
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 145
    :sswitch_6
    const-string v2, "%27"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 148
    :sswitch_7
    const-string v2, "%3C"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 151
    :sswitch_8
    const-string v2, "%3E"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 154
    :sswitch_9
    const-string v2, "%20"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 163
    :cond_3
    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 177
    :sswitch_a
    const-string v0, "%25"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_5
    add-int/lit8 v1, v1, 0x1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 174
    sparse-switch v0, :sswitch_data_2

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 180
    :sswitch_b
    const-string v0, "%3F"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 183
    :sswitch_c
    const-string v0, "%3B"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 186
    :sswitch_d
    const-string v0, "%23"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 189
    :sswitch_e
    const-string v0, "%22"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 192
    :sswitch_f
    const-string v0, "%27"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 195
    :sswitch_10
    const-string v0, "%3C"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 198
    :sswitch_11
    const-string v0, "%3E"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 201
    :sswitch_12
    const-string v0, "%20"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 209
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p0

    .line 211
    goto/16 :goto_2

    :cond_6
    move-object v0, v2

    goto/16 :goto_1

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 127
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x25 -> :sswitch_1
        0x27 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_7
        0x3e -> :sswitch_8
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 174
    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_12
        0x22 -> :sswitch_e
        0x23 -> :sswitch_d
        0x25 -> :sswitch_a
        0x27 -> :sswitch_f
        0x3b -> :sswitch_c
        0x3c -> :sswitch_10
        0x3e -> :sswitch_11
        0x3f -> :sswitch_b
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 266
    if-nez p0, :cond_1

    move-object p0, v0

    .line 350
    :cond_0
    :goto_0
    return-object p0

    .line 275
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v6

    move v4, v6

    move v5, v6

    move-object v1, v0

    .line 277
    :goto_1
    if-ge v2, v7, :cond_8

    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 281
    const/16 v3, 0x25

    if-ne v8, v3, :cond_3

    add-int/lit8 v3, v2, 0x2

    if-ge v3, v7, :cond_3

    .line 283
    if-nez v1, :cond_2

    .line 285
    new-array v1, v7, [C

    .line 286
    new-array v0, v7, [B

    .line 287
    invoke-virtual {p0, v6, v2, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 289
    :cond_2
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x10

    invoke-static {p0, v8, v9, v10}, Lorg/c/a/d/q;->a(Ljava/lang/String;III)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 290
    add-int/lit8 v2, v2, 0x2

    move-object v4, v1

    move v1, v3

    move v3, v5

    move-object v11, v0

    move v0, v2

    move-object v2, v11

    .line 277
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v11, v1

    move-object v1, v4

    move v4, v11

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto :goto_1

    .line 293
    :cond_3
    const/16 v3, 0x3b

    if-ne v8, v3, :cond_4

    .line 295
    if-nez v1, :cond_8

    .line 297
    new-array v1, v7, [C

    .line 298
    invoke-virtual {p0, v6, v2, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    move-object v3, v1

    .line 330
    :goto_3
    if-eqz v3, :cond_0

    .line 334
    if-lez v4, :cond_6

    .line 340
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v7, Lorg/c/a/d/r;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v5, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 346
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 350
    :goto_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v6, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 303
    :cond_4
    if-nez v0, :cond_5

    .line 305
    add-int/lit8 v3, v5, 0x1

    move v11, v2

    move-object v2, v0

    move v0, v11

    move v12, v4

    move-object v4, v1

    move v1, v12

    .line 306
    goto :goto_2

    .line 310
    :cond_5
    if-lez v4, :cond_7

    .line 316
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lorg/c/a/d/r;->a:Ljava/lang/String;

    invoke-direct {v3, v0, v9, v4, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    .line 327
    :goto_7
    add-int/lit8 v4, v5, 0x1

    aput-char v8, v1, v5

    move v11, v2

    move-object v2, v0

    move v0, v11

    move v12, v3

    move v3, v4

    move-object v4, v1

    move v1, v12

    goto :goto_2

    .line 318
    :catch_0
    move-exception v3

    .line 320
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_6

    .line 342
    :catch_1
    move-exception v1

    .line 344
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_7

    :cond_8
    move v2, v5

    move-object v3, v1

    goto :goto_3
.end method

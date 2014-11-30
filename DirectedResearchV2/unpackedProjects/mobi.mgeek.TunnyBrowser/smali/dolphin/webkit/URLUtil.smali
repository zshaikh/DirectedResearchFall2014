.class public final Ldolphin/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final CONTENT_BASE:Ljava/lang/String; = "content:"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 91
    if-gez v1, :cond_0

    .line 109
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :try_start_0
    const-string v3, "utf-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 113
    array-length v0, p0

    if-nez v0, :cond_0

    .line 114
    new-array v0, v1, [B

    .line 136
    :goto_0
    return-object v0

    .line 118
    :cond_0
    array-length v0, p0

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    .line 121
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 122
    aget-byte v3, p0, v0

    .line 123
    const/16 v4, 0x25

    if-ne v3, v4, :cond_3

    .line 124
    array-length v3, p0

    sub-int/2addr v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 125
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Ldolphin/webkit/URLUtil;->parseHex(B)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    invoke-static {v4}, Ldolphin/webkit/URLUtil;->parseHex(B)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    .line 127
    add-int/lit8 v0, v0, 0x2

    move v4, v0

    move v0, v3

    .line 132
    :goto_2
    add-int/lit8 v3, v2, 0x1

    aput-byte v0, v5, v2

    .line 121
    add-int/lit8 v0, v4, 0x1

    move v2, v3

    goto :goto_1

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    new-array v0, v2, [B

    .line 135
    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move v4, v0

    move v0, v3

    goto :goto_2
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x2f

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 306
    .line 310
    if-nez v1, :cond_b

    if-eqz p1, :cond_b

    .line 311
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 314
    if-lez v0, :cond_0

    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    :cond_0
    :goto_0
    if-nez v2, :cond_a

    .line 322
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_a

    .line 324
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 326
    if-lez v3, :cond_1

    .line 327
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 330
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 331
    if-lez v3, :cond_a

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_1
    if-nez v0, :cond_2

    .line 340
    const-string v0, "downloadfile"

    .line 345
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 346
    if-gez v2, :cond_7

    .line 347
    if-eqz p2, :cond_3

    .line 348
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ldolphin/webkit/MimeTypeMap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_3

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    :cond_3
    if-nez v1, :cond_4

    .line 354
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 355
    const-string v1, "text/html"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    const-string v1, ".html"

    .line 384
    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_5
    const-string v1, ".txt"

    goto :goto_2

    .line 361
    :cond_6
    const-string v1, ".bin"

    goto :goto_2

    .line 365
    :cond_7
    if-eqz p2, :cond_8

    .line 368
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 369
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ldolphin/webkit/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    if-eqz v3, :cond_8

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 372
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ldolphin/webkit/MimeTypeMap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_8

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_8
    if-nez v1, :cond_9

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    :cond_9
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object p0

    .line 57
    :cond_1
    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1
    :try_start_0
    new-instance v1, Ldolphin/net/e;

    invoke-direct {v1, v0}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-virtual {v1}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldolphin/net/e;->a(Ljava/lang/String;)V

    .line 85
    :cond_2
    invoke-virtual {v1}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 211
    if-eqz p0, :cond_0

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 177
    if-eqz p0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 260
    if-eqz p0, :cond_0

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    if-eqz p0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 218
    if-eqz p0, :cond_0

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 202
    if-eqz p0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 225
    if-eqz p0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    if-eqz p0, :cond_0

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ldolphin/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    :try_start_0
    sget-object v0, Ldolphin/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseHex(B)I
    .locals 3

    .prologue
    .line 166
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 168
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 286
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 287
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 289
    :cond_0
    return-object p0
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x25

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 144
    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 149
    :goto_1
    if-ltz v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 150
    add-int/lit8 v3, v2, -0x2

    if-ge v1, v3, :cond_0

    .line 152
    add-int/lit8 v1, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ldolphin/webkit/URLUtil;->parseHex(B)I

    .line 153
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ldolphin/webkit/URLUtil;->parseHex(B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    .line 162
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

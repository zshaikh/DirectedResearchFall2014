.class public Lcom/dolphin/browser/util/br;
.super Ljava/lang/Object;
.source "MimeTypeUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 44
    invoke-static {p0}, Lcom/dolphin/browser/util/br;->b(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/dolphin/browser/download/a;
    .locals 4

    .prologue
    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    .line 89
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 56
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 57
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 58
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 61
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "application"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    const-string v1, "vnd.android.package-archive"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    sget-object v0, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "x-mpegurl"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    sget-object v0, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "pdf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "rtf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "msword"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "vnd.ms-excel"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "vnd.ms-powerpoint"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "opendocument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "openxmlformats-officedocument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    :cond_4
    sget-object v0, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 78
    :cond_5
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 80
    :cond_6
    const-string v0, "text"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    sget-object v0, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    goto/16 :goto_0

    .line 82
    :cond_7
    const-string v0, "image"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 83
    sget-object v0, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    goto/16 :goto_0

    .line 84
    :cond_8
    const-string v0, "audio"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    sget-object v0, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    goto/16 :goto_0

    .line 86
    :cond_9
    const-string v0, "video"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    sget-object v0, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    goto/16 :goto_0

    .line 89
    :cond_a
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    goto/16 :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/dolphin/browser/download/a;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "dwp"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v0, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "rar"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zip"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "7z"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gzip"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "z"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tar"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cab"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jar"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "iso"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    :cond_2
    sget-object v0, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {v0}, Lcom/dolphin/browser/util/br;->b(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    goto :goto_0
.end method

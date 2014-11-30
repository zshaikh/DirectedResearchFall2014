.class public final Lcom/b/a/e/c;
.super Ljava/lang/Object;
.source "BoxUtils.java"


# direct methods
.method public static a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 106
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 109
    :goto_0
    return p1

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/b/a/e/c;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 49
    :goto_0
    return p1

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 79
    :goto_0
    return-wide p1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/b/a/e/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/b/a/e/c;->a(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v0, "kb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-wide/16 v0, 0x400

    .line 146
    :goto_0
    const-string v3, "kb"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mb"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gb"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bytes"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/e/c;->c(Ljava/lang/String;)F

    move-result v2

    long-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-long v0, v0

    :goto_1
    return-wide v0

    .line 137
    :cond_0
    const-string v0, "mb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-wide/32 v0, 0x100000

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "gb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const-wide/32 v0, 0x40000000

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p0}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1
.end method

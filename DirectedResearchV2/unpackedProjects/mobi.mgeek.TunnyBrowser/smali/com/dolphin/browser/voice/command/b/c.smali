.class public Lcom/dolphin/browser/voice/command/b/c;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/voice/command/b/c;->a([CII)V

    .line 34
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 35
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 36
    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/voice/command/b/c;->a([CII)V

    .line 37
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static a([CII)V
    .locals 2

    .prologue
    .line 13
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 18
    aget-char v0, p0, p1

    .line 19
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 20
    aput-char v0, p0, p2

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.class public Lcom/dolphin/browser/bookmark/q;
.super Ljava/lang/Object;
.source "BookmarkDirectory.java"


# direct methods
.method public static a(J)Z
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x4

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x5

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x6

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x7

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(J)Z
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, -0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(J)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/dolphin/browser/bookmark/q;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/dolphin/browser/bookmark/q;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

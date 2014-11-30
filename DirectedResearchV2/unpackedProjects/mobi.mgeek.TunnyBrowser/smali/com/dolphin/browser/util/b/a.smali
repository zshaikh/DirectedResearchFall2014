.class public Lcom/dolphin/browser/util/b/a;
.super Ljava/lang/Object;
.source "FullScreenTrackUtil.java"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "fullscreen"

    const-string v1, "click"

    const-string v2, "hardkey_menu"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    .line 24
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 28
    if-le p2, v2, :cond_0

    move v2, v0

    .line 29
    :goto_0
    if-le p1, v3, :cond_1

    .line 30
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 31
    const-string v0, "fullscreen"

    const-string v1, "drag"

    const-string v2, "top-left"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 28
    goto :goto_0

    :cond_1
    move v0, v1

    .line 29
    goto :goto_1

    .line 33
    :cond_2
    if-eqz v2, :cond_3

    .line 34
    const-string v0, "fullscreen"

    const-string v1, "drag"

    const-string v2, "top-right"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_3
    if-eqz v0, :cond_4

    .line 37
    const-string v0, "fullscreen"

    const-string v1, "drag"

    const-string v2, "bottom-left"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :cond_4
    const-string v0, "fullscreen"

    const-string v1, "drag"

    const-string v2, "bottom-right"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "fullscreen"

    const-string v1, "click"

    const-string v2, "fullscreen_button"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

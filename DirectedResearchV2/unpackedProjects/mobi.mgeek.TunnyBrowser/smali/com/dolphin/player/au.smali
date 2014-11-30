.class public Lcom/dolphin/player/au;
.super Ljava/lang/Object;
.source "VideoPlayerFactory.java"


# direct methods
.method public static a(ILandroid/content/Context;)Lcom/dolphin/player/j;
    .locals 1

    .prologue
    .line 10
    if-nez p0, :cond_1

    .line 11
    new-instance v0, Lcom/dolphin/player/af;

    invoke-direct {v0}, Lcom/dolphin/player/af;-><init>()V

    .line 22
    :cond_0
    :goto_0
    return-object v0

    .line 13
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/dolphin/player/a;->a(Landroid/content/Context;)Lcom/dolphin/player/a;

    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 22
    :cond_2
    new-instance v0, Lcom/dolphin/player/c;

    invoke-direct {v0}, Lcom/dolphin/player/c;-><init>()V

    goto :goto_0
.end method

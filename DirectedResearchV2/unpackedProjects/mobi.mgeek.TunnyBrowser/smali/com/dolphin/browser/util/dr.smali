.class public Lcom/dolphin/browser/util/dr;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 4

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;Z)V

    .line 98
    return-void
.end method

.method public static a(Landroid/view/Window;Z)V
    .locals 4

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    .line 104
    :goto_0
    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 108
    :goto_1
    if-eqz v2, :cond_1

    .line 109
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 110
    return-void

    :cond_0
    move v3, v0

    .line 103
    goto :goto_0

    :cond_1
    move v0, v1

    .line 108
    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 80
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 46
    :cond_1
    :goto_0
    return v0

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 36
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 37
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 38
    aget v5, v4, v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 40
    aget v4, v4, v0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 43
    if-lt v2, v5, :cond_3

    if-gt v2, v6, :cond_3

    if-lt v3, v4, :cond_3

    if-le v3, v7, :cond_1

    :cond_3
    move v0, v1

    .line 44
    goto :goto_0
.end method

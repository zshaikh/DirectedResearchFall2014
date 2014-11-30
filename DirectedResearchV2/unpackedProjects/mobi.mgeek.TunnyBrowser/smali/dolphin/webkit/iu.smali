.class Ldolphin/webkit/iu;
.super Ldolphin/webkit/ho;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldolphin/webkit/ho",
        "<",
        "Ldolphin/webkit/it;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldolphin/webkit/in;


# direct methods
.method public constructor <init>(Ldolphin/webkit/in;)V
    .locals 3

    .prologue
    .line 9474
    iput-object p1, p0, Ldolphin/webkit/iu;->a:Ldolphin/webkit/in;

    .line 9475
    iget-object v0, p1, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ldolphin/webkit/in;->a(Ldolphin/webkit/in;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ldolphin/webkit/R$layout;->dw_webview_select_multichoice:I

    :goto_0
    invoke-static {p1}, Ldolphin/webkit/in;->b(Ldolphin/webkit/in;)[Ldolphin/webkit/it;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Ldolphin/webkit/ho;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 9479
    return-void

    .line 9475
    :cond_0
    sget v0, Ldolphin/webkit/R$layout;->dw_webview_select_singlechoice:I

    goto :goto_0
.end method

.method private a(I)Ldolphin/webkit/it;
    .locals 1

    .prologue
    .line 9545
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldolphin/webkit/iu;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 9546
    :cond_0
    const/4 v0, 0x0

    .line 9548
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ldolphin/webkit/iu;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/it;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 9562
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 9553
    invoke-direct {p0, p1}, Ldolphin/webkit/iu;->a(I)Ldolphin/webkit/it;

    move-result-object v0

    .line 9554
    if-nez v0, :cond_0

    .line 9555
    const-wide/16 v0, -0x1

    .line 9557
    :goto_0
    return-wide v0

    :cond_0
    iget v0, v0, Ldolphin/webkit/it;->c:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x1080012

    const/4 v4, 0x1

    const/16 v2, 0x61

    .line 9489
    invoke-super {p0, p1, v6, p3}, Ldolphin/webkit/ho;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9491
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/iu;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getBrowserModeInNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9493
    sget v0, Ldolphin/webkit/R$drawable;->night_mode_option:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 9495
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9498
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/iu;->a(I)Ldolphin/webkit/it;

    move-result-object v0

    .line 9499
    if-eqz v0, :cond_4

    iget v2, v0, Ldolphin/webkit/it;->b:I

    if-eq v4, v2, :cond_4

    .line 9502
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Ldolphin/webkit/iu;->a:Ldolphin/webkit/in;

    iget-object v3, v3, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 9503
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9504
    if-lez p1, :cond_1

    .line 9505
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Ldolphin/webkit/iu;->a:Ldolphin/webkit/in;

    iget-object v4, v4, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v4}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9506
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9508
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9511
    :cond_1
    const/4 v3, -0x1

    iget v0, v0, Ldolphin/webkit/it;->b:I

    if-ne v3, v0, :cond_5

    .line 9514
    iget-object v0, p0, Ldolphin/webkit/iu;->a:Ldolphin/webkit/in;

    invoke-static {v0}, Ldolphin/webkit/in;->a(Ldolphin/webkit/in;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9515
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v0, v1

    .line 9516
    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9524
    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9525
    invoke-virtual {p0}, Ldolphin/webkit/iu;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 9526
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Ldolphin/webkit/iu;->a:Ldolphin/webkit/in;

    iget-object v1, v1, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9527
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9529
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    move-object v1, v2

    .line 9533
    :cond_4
    return-object v1

    .line 9521
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 9541
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9567
    invoke-direct {p0, p1}, Ldolphin/webkit/iu;->a(I)Ldolphin/webkit/it;

    move-result-object v2

    .line 9568
    if-nez v2, :cond_0

    .line 9571
    :goto_0
    return v1

    :cond_0
    iget v2, v2, Ldolphin/webkit/it;->b:I

    if-ne v0, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

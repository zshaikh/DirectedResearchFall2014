.class Ldolphin/webkit/ja;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewClassic;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 756
    iput-object p1, p0, Ldolphin/webkit/ja;->a:Ldolphin/webkit/WebViewClassic;

    .line 757
    invoke-static {p1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10102c8

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 759
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldolphin/webkit/ja;->setClippingEnabled(Z)V

    .line 760
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 761
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 762
    iput-object v0, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    .line 763
    iget-object v0, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    sget v1, Ldolphin/webkit/R$drawable;->text_edit_paste_window:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 769
    invoke-static {p1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    sget v2, Ldolphin/webkit/R$layout;->dw_text_edit_action_popup_text:I

    invoke-static {v0, v2, v3}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldolphin/webkit/ja;->c:Landroid/widget/TextView;

    .line 771
    iget-object v0, p0, Ldolphin/webkit/ja;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    iget-object v0, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Ldolphin/webkit/ja;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 773
    const v0, 0x104000b

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 775
    iget-object v1, p0, Ldolphin/webkit/ja;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Ldolphin/webkit/ja;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object v0, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ldolphin/webkit/ja;->setContentView(Landroid/view/View;)V

    .line 778
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 805
    invoke-virtual {p0}, Ldolphin/webkit/ja;->dismiss()V

    .line 806
    return-void
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 5

    .prologue
    .line 782
    invoke-virtual {p0}, Ldolphin/webkit/ja;->b()V

    .line 784
    iget-object v0, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 785
    iget-object v0, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 786
    iget v0, p2, Landroid/graphics/Point;->y:I

    sub-int v1, v0, v3

    .line 787
    iget v0, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    .line 788
    if-ge v1, p4, :cond_0

    .line 791
    iget-object v0, p0, Ldolphin/webkit/ja;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->j(Ldolphin/webkit/WebViewClassic;)V

    .line 792
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Ldolphin/webkit/ja;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->k(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 793
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    .line 795
    :cond_0
    if-ge v0, p3, :cond_2

    .line 798
    :goto_0
    invoke-virtual {p0}, Ldolphin/webkit/ja;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Ldolphin/webkit/ja;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, p3, v1}, Ldolphin/webkit/ja;->showAtLocation(Landroid/view/View;III)V

    .line 801
    :cond_1
    invoke-virtual {p0, p3, v1, v2, v3}, Ldolphin/webkit/ja;->update(IIII)V

    .line 802
    return-void

    :cond_2
    move p3, v0

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 815
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 816
    iget-object v1, p0, Ldolphin/webkit/ja;->b:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 821
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Ldolphin/webkit/ja;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->O()V

    .line 811
    iget-object v0, p0, Ldolphin/webkit/ja;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->selectionDone()V

    .line 812
    return-void
.end method

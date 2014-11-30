.class public Lcom/dolphin/browser/bookmark/bw;
.super Landroid/widget/LinearLayout;
.source "ContextPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/app/Dialog;

.field private b:[Ljava/lang/String;

.field private c:Lcom/dolphin/browser/bookmark/bx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/bookmark/bw;->setOrientation(I)V

    .line 26
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v1, 0x7f0f0041

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->a:Landroid/app/Dialog;

    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    const/16 v0, 0x91

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/bw;->setMinimumWidth(I)V

    .line 29
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 130
    mul-int/lit8 v0, p1, 0x2

    .line 131
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bw;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/bw;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const v11, 0x7f080258

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    invoke-interface {v0}, Lcom/dolphin/browser/bookmark/bx;->a()[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 80
    :goto_0
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_1
    return v2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->b:[Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bw;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 86
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bw;->removeAllViews()V

    move v1, v2

    .line 87
    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_3

    .line 88
    if-lez v1, :cond_2

    .line 89
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v8, 0x7f0b001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 94
    invoke-virtual {p0, v0, v6}, Lcom/dolphin/browser/bookmark/bw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_2
    aget-object v6, v3, v1

    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030093

    invoke-static {v5, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v0}, Lcom/dolphin/browser/bookmark/bw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bw;->b()V

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    if-eqz v0, :cond_5

    move v0, v2

    .line 114
    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/bookmark/bx;->a(I)Z

    move-result v1

    .line 116
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/bw;->a(I)Landroid/view/View;

    move-result-object v4

    .line 117
    if-eqz v4, :cond_4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 118
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 124
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/dolphin/browser/bookmark/bw;->measure(II)V

    .line 125
    iput-object v3, p0, Lcom/dolphin/browser/bookmark/bw;->b:[Ljava/lang/String;

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_6
    move-object v3, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 33
    return-void
.end method

.method public a(Lcom/dolphin/browser/bookmark/bx;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    .line 158
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020303

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/bw;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bw;->getChildCount()I

    move-result v3

    .line 53
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 54
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/bw;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 57
    if-nez v1, :cond_0

    .line 58
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0200ad

    .line 65
    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 66
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080258

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a01b9

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_0
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_1

    .line 60
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0200ac

    goto :goto_1

    .line 62
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0200ab

    goto :goto_1

    .line 69
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a014d

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 72
    :cond_3
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bw;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 151
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bw;->c:Lcom/dolphin/browser/bookmark/bx;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/bookmark/bx;->b(I)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bw;->a()V

    .line 46
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 141
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 143
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 144
    return-void
.end method

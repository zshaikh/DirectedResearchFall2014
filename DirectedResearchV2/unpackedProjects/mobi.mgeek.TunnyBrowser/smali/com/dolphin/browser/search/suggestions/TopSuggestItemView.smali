.class public Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;
.super Landroid/widget/LinearLayout;
.source "TopSuggestItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->setOrientation(I)V

    .line 34
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->setGravity(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->setOrientation(I)V

    .line 40
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->setGravity(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->a:Landroid/view/View$OnClickListener;

    .line 121
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/aa;Ljava/lang/CharSequence;)V
    .locals 21

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/search/aa;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->removeAllViews()V

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/search/aa;->k()Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 53
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 54
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 56
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 57
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 58
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 59
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/search/aa;->l()I

    move-result v14

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v15

    .line 64
    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    :goto_1
    if-ge v4, v14, :cond_5

    .line 65
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/search/aa;->a(I)I

    move-result v16

    .line 66
    if-eqz v16, :cond_0

    .line 69
    new-instance v17, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const/16 v2, 0x10

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    if-nez v4, :cond_3

    .line 74
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    div-int/lit8 v3, v8, 0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 77
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    move-object/from16 v0, v18

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 80
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_4

    .line 89
    add-int v2, v5, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/search/w;

    .line 90
    new-instance v18, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v0, v2, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/suggestions/ab;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/16 v19, 0x0

    int-to-float v0, v10

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    sget-object v19, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v19, 0x7f0a00ed

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    sget-object v19, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v19, 0x7f02025b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->setSingleLine()V

    .line 97
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 98
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 99
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 102
    add-int/lit8 v19, v16, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_2

    .line 103
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 105
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    .line 84
    :cond_3
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 85
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 107
    :cond_4
    add-int v3, v5, v16

    .line 64
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v3

    goto/16 :goto_1

    .line 109
    :cond_5
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ea

    invoke-virtual {v15, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/TopSuggestItemView;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 117
    :cond_0
    return-void
.end method

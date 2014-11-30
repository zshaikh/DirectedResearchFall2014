.class public Lcom/dolphin/browser/theme/q;
.super Landroid/widget/LinearLayout;
.source "SkinItem.java"

# interfaces
.implements Lcom/dolphin/browser/f/e/h;


# static fields
.field private static n:J


# instance fields
.field protected a:Landroid/widget/RelativeLayout;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Lcom/dolphin/browser/theme/ProgressTextView;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/content/Context;

.field protected j:I

.field protected k:Lcom/dolphin/browser/theme/data/a;

.field protected l:Z

.field protected m:Z

.field private o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dolphin/browser/theme/q;->n:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance v0, Lcom/dolphin/browser/theme/s;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/s;-><init>(Lcom/dolphin/browser/theme/q;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->o:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/theme/q;->i:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/q;->a(Landroid/content/Context;I)V

    .line 55
    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 31
    sput-wide p0, Lcom/dolphin/browser/theme/q;->n:J

    return-wide p0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 13

    .prologue
    .line 58
    iput p2, p0, Lcom/dolphin/browser/theme/q;->j:I

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->setOrientation(I)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/q;->a(Landroid/content/Context;)V

    .line 61
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->a:Landroid/widget/RelativeLayout;

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    .line 63
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->d:Landroid/widget/ImageView;

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->g:Landroid/widget/ImageView;

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ProgressTextView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->f:Landroid/widget/ImageView;

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->h:Landroid/widget/ImageView;

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020243

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020244

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cu;->a(II)Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b016f

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b016e

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 78
    const/4 v0, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0135

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    const/4 v1, 0x1

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b011e

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b011d

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b013a

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    iget-object v7, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    const/4 v8, 0x0

    sget-object v9, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v9, 0x7f0b013b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v8, v4}, Lcom/dolphin/browser/theme/ProgressTextView;->setTextSize(IF)V

    .line 87
    iget-object v4, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/theme/ProgressTextView;->setVisibility(I)V

    .line 100
    :goto_0
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    const/4 v11, -0x2

    invoke-direct {v10, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    if-nez p2, :cond_2

    .line 116
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v11, v1, 0x2

    add-int/2addr v11, v3

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v12, v2

    add-int/2addr v12, v0

    invoke-direct {v4, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    mul-int/lit8 v11, v1, 0x2

    add-int/2addr v2, v11

    mul-int/lit8 v6, v6, 0xd

    div-int/lit8 v6, v6, 0x10

    sub-int/2addr v2, v6

    add-int/2addr v0, v2

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 119
    const/4 v0, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0803a5

    invoke-virtual {v8, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v0, v4

    .line 128
    :goto_1
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 129
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 131
    const/4 v2, 0x5

    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f0803a5

    invoke-virtual {v8, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    mul-int/lit8 v2, v5, 0xd

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 137
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0803a3

    invoke-virtual {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0803a3

    invoke-virtual {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/theme/ProgressTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 89
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0136

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0038

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 91
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0038

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    iget-object v4, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/theme/ProgressTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0135

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b016d

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 96
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b016c

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b013a

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_0

    .line 121
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    mul-int/lit8 v11, v1, 0x2

    add-int/2addr v11, v2

    invoke-direct {v0, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    mul-int/lit8 v4, v6, 0xd

    div-int/lit8 v4, v4, 0x10

    sub-int/2addr v2, v4

    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 124
    const/16 v2, 0x8

    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f0803a5

    invoke-virtual {v8, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/dolphin/browser/theme/q;->n:J

    return-wide v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03010e

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/theme/q;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->j_()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    return-void

    .line 227
    :cond_0
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->k_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202f7

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202f8

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/cu;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/dolphin/browser/theme/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/q;->b(Lcom/dolphin/browser/theme/data/a;)V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->k:Lcom/dolphin/browser/theme/data/a;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/theme/q;->l:Z

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/theme/q;->m:Z

    if-nez v0, :cond_1

    .line 219
    :goto_1
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->k:Lcom/dolphin/browser/theme/data/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->k:Lcom/dolphin/browser/theme/data/a;

    if-eq v0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 206
    :goto_2
    invoke-virtual {p1, v1}, Lcom/dolphin/browser/theme/data/a;->b(Z)V

    .line 207
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolphin/browser/theme/q;->l:Z

    .line 208
    iput-object p1, p0, Lcom/dolphin/browser/theme/q;->k:Lcom/dolphin/browser/theme/data/a;

    .line 209
    iput-boolean v1, p0, Lcom/dolphin/browser/theme/q;->m:Z

    .line 211
    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/q;->setTag(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/q;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 218
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/q;->updateTheme()V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 204
    goto :goto_2
.end method

.method public b()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->k:Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    return v0
.end method

.method protected b(Lcom/dolphin/browser/theme/data/a;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ProgressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Z)V

    .line 305
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/q;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/q;->m:Z

    .line 316
    return-void
.end method

.method public updateTheme()V
    .locals 6

    .prologue
    const v5, 0x7f0a0134

    const v4, 0x7f0a0133

    const/4 v3, 0x0

    .line 159
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202f2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_0
    iget v1, p0, Lcom/dolphin/browser/theme/q;->j:I

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->setBackgroundColor(I)V

    .line 167
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->a(I)V

    .line 168
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0136

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->setTextColor(I)V

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v2, v1, v3, v1, v3}, Lcom/dolphin/browser/theme/ProgressTextView;->setPadding(IIII)V

    .line 176
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->setBackgroundColor(I)V

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->a(I)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/theme/q;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0135

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->setTextColor(I)V

    goto :goto_0

    .line 181
    :cond_2
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

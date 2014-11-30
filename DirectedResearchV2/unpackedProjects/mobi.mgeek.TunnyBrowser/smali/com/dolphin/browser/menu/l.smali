.class public Lcom/dolphin/browser/menu/l;
.super Lcom/dolphin/browser/menu/a;
.source "ListMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;
.implements Ljava/util/Observer;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/dolphin/browser/menu/q;

.field private g:Lcom/dolphin/browser/menu/r;

.field private h:Landroid/widget/ScrollView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/content/res/Resources;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/menu/x;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private s:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/a;-><init>(Landroid/content/Context;)V

    .line 453
    new-instance v0, Lcom/dolphin/browser/menu/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/m;-><init>(Lcom/dolphin/browser/menu/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->p:Landroid/view/View$OnClickListener;

    .line 477
    new-instance v0, Lcom/dolphin/browser/menu/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/n;-><init>(Lcom/dolphin/browser/menu/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->q:Landroid/view/View$OnClickListener;

    .line 505
    new-instance v0, Lcom/dolphin/browser/menu/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/o;-><init>(Lcom/dolphin/browser/menu/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 517
    new-instance v0, Lcom/dolphin/browser/menu/p;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/p;-><init>(Lcom/dolphin/browser/menu/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->s:Landroid/widget/AdapterView$OnItemClickListener;

    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/l;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 255
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 256
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 258
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 259
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/menu/l;->a(Landroid/widget/TextView;I)V

    .line 260
    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    .line 261
    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060024

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 268
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    return-object v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->m:Landroid/content/res/Resources;

    .line 107
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/menu/w;->addObserver(Ljava/util/Observer;)V

    .line 109
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->h:Landroid/widget/ScrollView;

    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->n:Landroid/widget/RelativeLayout;

    .line 113
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->k:Landroid/widget/LinearLayout;

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/w;->e()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->m:Landroid/content/res/Resources;

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->h:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/menu/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/menu/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->h:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->h:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->o()V

    .line 126
    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->p()V

    .line 127
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/l;->onOrientationChanged(I)V

    .line 128
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->d()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/menu/v;->b:[I

    aget v0, v0, p2

    .line 250
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 248
    :cond_1
    sget-object v0, Lcom/dolphin/browser/menu/v;->c:[I

    aget v0, v0, p2

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/menu/l;)Lcom/dolphin/browser/menu/q;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->f:Lcom/dolphin/browser/menu/q;

    return-object v0
.end method

.method private c(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 608
    if-nez p1, :cond_0

    .line 609
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 611
    :cond_0
    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 612
    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 613
    const/16 v0, 0x3eb

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 614
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 615
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->n()I

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 620
    :goto_0
    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 622
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->h()I

    move-result v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/dolphin/browser/menu/l;->setPadding(IIII)V

    .line 623
    return-object p1

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->n()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/menu/l;)Lcom/dolphin/browser/menu/r;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->g:Lcom/dolphin/browser/menu/r;

    return-object v0
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->m:Landroid/content/res/Resources;

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/menu/l;->m:Landroid/content/res/Resources;

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 136
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/w;->h()I

    move-result v1

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/w;->i()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/menu/l;->l:Landroid/widget/ImageView;

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/menu/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method private p()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->r()V

    .line 145
    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->u()V

    .line 146
    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->s()V

    .line 147
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->m()V

    .line 148
    return-void
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/dolphin/browser/menu/x;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/menu/x;-><init>(I)V

    .line 158
    new-instance v1, Lcom/dolphin/browser/c/q;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/c/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 159
    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 160
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/dolphin/browser/menu/x;

    invoke-direct {v0, v4}, Lcom/dolphin/browser/menu/x;-><init>(I)V

    .line 164
    new-instance v1, Lcom/dolphin/browser/c/q;

    invoke-direct {v1, v4}, Lcom/dolphin/browser/c/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 165
    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 166
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/dolphin/browser/menu/x;

    invoke-direct {v0, v5}, Lcom/dolphin/browser/menu/x;-><init>(I)V

    .line 170
    new-instance v1, Lcom/dolphin/browser/c/q;

    invoke-direct {v1, v5}, Lcom/dolphin/browser/c/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 171
    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/dolphin/browser/menu/x;

    invoke-direct {v0, v3}, Lcom/dolphin/browser/menu/x;-><init>(I)V

    .line 176
    new-instance v1, Lcom/dolphin/browser/c/q;

    invoke-direct {v1, v3}, Lcom/dolphin/browser/c/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 177
    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 178
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->q()V

    .line 187
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    .line 188
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v1, v0

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/x;

    .line 192
    new-instance v2, Lcom/dolphin/browser/menu/t;

    iget-object v3, p0, Lcom/dolphin/browser/menu/l;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/menu/t;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 195
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/dolphin/browser/menu/t;->setPadding(IIII)V

    .line 196
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/menu/t;->a(Lcom/dolphin/browser/menu/x;)V

    .line 197
    invoke-virtual {v2, p0}, Lcom/dolphin/browser/menu/t;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/dolphin/browser/menu/l;->t()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/g;->a()V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, v1}, Lcom/dolphin/browser/menu/l;->a(I)Landroid/view/View;

    move-result-object v0

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-direct {p0, v2}, Lcom/dolphin/browser/menu/l;->a(I)Landroid/view/View;

    move-result-object v0

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method private t()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 277
    return-object v0
.end method

.method private u()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->e()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    .line 366
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->e()I

    move-result v0

    div-int/lit8 v4, v0, 0x3

    move v2, v1

    .line 368
    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    move v0, v1

    .line 369
    :goto_1
    const/4 v5, 0x2

    if-ge v0, v5, :cond_0

    .line 370
    sget-object v5, Lcom/dolphin/browser/menu/v;->d:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v0

    aget v5, v5, v6

    .line 371
    new-instance v6, Lcom/dolphin/browser/menu/ae;

    invoke-direct {v6, v5}, Lcom/dolphin/browser/menu/ae;-><init>(I)V

    .line 372
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v7, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v7, 0x7f0b00cb

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/dolphin/browser/menu/ae;->b(I)V

    .line 374
    new-instance v5, Lcom/dolphin/browser/c/r;

    invoke-virtual {v6}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/dolphin/browser/c/r;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/dolphin/browser/menu/ae;->a(Lcom/dolphin/browser/c/a;)V

    .line 375
    new-instance v5, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/dolphin/browser/menu/ac;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v5, v6}, Lcom/dolphin/browser/menu/ac;->a(Lcom/dolphin/browser/menu/ae;)V

    .line 377
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    mul-int v7, v0, v3

    mul-int v8, v2, v4

    invoke-virtual {v6, v7, v8, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 380
    iget-object v7, p0, Lcom/dolphin/browser/menu/l;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/menu/l;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method


# virtual methods
.method public a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 564
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/l;->c:Z

    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->h:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    iput-boolean v2, p0, Lcom/dolphin/browser/menu/l;->c:Z

    .line 571
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->b()V

    .line 572
    iput-boolean v2, p0, Lcom/dolphin/browser/menu/l;->a:Z

    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/menu/h;->a(Lcom/dolphin/browser/menu/a;)V

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 580
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/l;->c(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 581
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->m()V

    .line 582
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 583
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->g()V

    .line 584
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->c()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 534
    .line 537
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->f()V

    .line 546
    :goto_0
    return v0

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->f()V

    goto :goto_0

    .line 546
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/dolphin/browser/menu/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->f()V

    .line 558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/l;->c:Z

    if-nez v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/l;->c:Z

    .line 595
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 597
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->d:Lcom/dolphin/browser/menu/h;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->d:Lcom/dolphin/browser/menu/h;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/menu/h;->b(Lcom/dolphin/browser/menu/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public m()V
    .locals 11

    .prologue
    const v10, 0x7f02021b

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 644
    :goto_0
    if-ge v1, v3, :cond_0

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/t;

    .line 646
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/t;->b()V

    .line 644
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->h:Landroid/widget/ScrollView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 653
    :goto_1
    if-ge v3, v4, :cond_3

    .line 654
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 655
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 656
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v0, v1

    .line 657
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v5

    sget-object v6, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v6, 0x7f02020c

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 660
    const/4 v0, 0x2

    if-eq v0, v5, :cond_1

    const/4 v0, 0x1

    if-eq v0, v5, :cond_1

    .line 661
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v6, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v6, 0x7f060024

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 663
    invoke-static {v6}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 664
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v7, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v7, 0x7f0b00bc

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v8, 0x7f0b00bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v6, v2, v2, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v0, v1

    .line 671
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9, v9, v6, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v6, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v6, 0x7f0b00bd

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    move-object v0, v1

    .line 675
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 677
    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v5}, Lcom/dolphin/browser/menu/l;->a(Landroid/widget/TextView;I)V

    .line 653
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 683
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 684
    :goto_2
    if-ge v1, v3, :cond_5

    .line 685
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 686
    instance-of v2, v0, Lcom/dolphin/browser/menu/ac;

    if-eqz v2, :cond_4

    .line 687
    check-cast v0, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ac;->a()V

    .line 684
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 693
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->k:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Lcom/dolphin/browser/menu/l;->l:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02021a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    :cond_7
    invoke-super {p0}, Lcom/dolphin/browser/menu/a;->m()V

    .line 701
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 208
    instance-of v0, p1, Lcom/dolphin/browser/menu/t;

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    check-cast p1, Lcom/dolphin/browser/menu/t;

    .line 212
    invoke-virtual {p1}, Lcom/dolphin/browser/menu/t;->a()Lcom/dolphin/browser/menu/x;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->a()Lcom/dolphin/browser/c/a;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    .line 225
    new-instance v0, Lcom/dolphin/browser/c/j;

    invoke-direct {v0}, Lcom/dolphin/browser/c/j;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/j;->a()Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/menu/w;->a(I)V

    .line 636
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->f()V

    .line 637
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/l;->m()V

    .line 630
    return-void
.end method

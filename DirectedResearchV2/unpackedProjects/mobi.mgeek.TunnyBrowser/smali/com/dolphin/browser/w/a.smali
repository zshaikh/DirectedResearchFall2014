.class public Lcom/dolphin/browser/w/a;
.super Landroid/widget/RelativeLayout;
.source "WebAppPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/theme/aq;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/dolphin/browser/core/bh;

.field private h:Z

.field private i:Landroid/view/WindowManager;

.field private j:Landroid/view/WindowManager$LayoutParams;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/core/bh;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 53
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->i:Landroid/view/WindowManager;

    .line 54
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x40008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 63
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/w/a;->k:I

    .line 65
    invoke-direct {p0, p2}, Lcom/dolphin/browser/w/a;->b(Lcom/dolphin/browser/core/bh;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/w/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/dolphin/browser/w/b;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/w/b;-><init>(Lcom/dolphin/browser/w/a;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 126
    return-void
.end method

.method private b(Lcom/dolphin/browser/core/bh;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030123

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803f5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->a:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803f9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->b:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->d:Landroid/widget/TextView;

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->e:Landroid/widget/TextView;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803f6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->f:Landroid/widget/TextView;

    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/w/a;->c:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/w/a;->a(Lcom/dolphin/browser/core/bh;)V

    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/w/a;->g()V

    .line 83
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const v7, 0x7f0a015c

    const v6, 0x7f0a015b

    .line 129
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 130
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803f7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02000a

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v7, v4, v5}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803f8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/w/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/w/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->b:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020326

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/bh;)V
    .locals 2

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/w/a;->g:Lcom/dolphin/browser/core/bh;

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/bh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/bh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/bh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p1}, Lcom/dolphin/browser/core/bh;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/core/bh;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/w/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/s;Z)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/theme/d/j;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/dolphin/browser/w/a;->g()V

    .line 219
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/dolphin/browser/w/a;->h:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/w/a;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->j:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/dolphin/browser/w/a;->i:Landroid/view/WindowManager;

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/w/a;->h:Z

    .line 170
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/dolphin/browser/w/a;->h:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/w/a;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/w/a;->i:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/dolphin/browser/w/a;->h:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/w/a;->i:Landroid/view/WindowManager;

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/w/a;->h:Z

    .line 185
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V

    .line 193
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/dolphin/browser/w/a;->h:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 150
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803f5

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/w/a;->g:Lcom/dolphin/browser/core/bh;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/bh;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/w/a;->g:Lcom/dolphin/browser/core/bh;

    invoke-virtual {v2}, Lcom/dolphin/browser/core/bh;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/w/a;->g:Lcom/dolphin/browser/core/bh;

    invoke-virtual {v3}, Lcom/dolphin/browser/core/bh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/f/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0643

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->e()V

    .line 161
    :cond_0
    :goto_1
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03ad

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803f9

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/dolphin/browser/w/a;->e()V

    goto :goto_1
.end method

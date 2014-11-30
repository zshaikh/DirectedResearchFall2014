.class public Lcom/dolphin/browser/share/box/b;
.super Landroid/widget/LinearLayout;
.source "BoxShareViewContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/app/ProgressDialog;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/b/a/a/b;

.field private l:Lcom/dolphin/browser/q/a/j;

.field private m:Lcom/dolphin/browser/share/box/p;

.field private n:Lcom/dolphin/browser/share/box/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/dolphin/browser/share/box/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/box/c;-><init>(Lcom/dolphin/browser/share/box/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->n:Lcom/dolphin/browser/share/box/r;

    .line 67
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->i:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->j:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->l:Lcom/dolphin/browser/q/a/j;

    .line 70
    new-instance v0, Lcom/dolphin/browser/share/box/p;

    invoke-direct {v0}, Lcom/dolphin/browser/share/box/p;-><init>()V

    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->m:Lcom/dolphin/browser/share/box/p;

    .line 71
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/b;->c()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020288

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Lcom/b/a/a/b;)V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/dolphin/browser/share/box/j;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/share/box/j;-><init>(Landroid/content/Context;Lcom/b/a/a/b;)V

    .line 314
    new-instance v1, Lcom/dolphin/browser/share/box/f;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/share/box/f;-><init>(Lcom/dolphin/browser/share/box/b;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/j;->a(Lcom/dolphin/browser/share/box/n;)V

    .line 333
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 334
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/b;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/box/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/b;Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/box/b;->a(Lcom/b/a/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/share/box/b;Lcom/b/a/a/b;)Lcom/b/a/a/b;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/share/box/b;->k:Lcom/b/a/a/b;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/share/box/b;)Lcom/dolphin/browser/share/box/p;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->m:Lcom/dolphin/browser/share/box/p;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-object v1

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 174
    :goto_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 175
    :goto_2
    if-le v2, v0, :cond_3

    .line 176
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "[/\\\\:*?\"<>|]+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 182
    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method static synthetic c(Lcom/dolphin/browser/share/box/b;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/box/b;->setOrientation(I)V

    .line 76
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030018

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/share/box/b;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->a:Landroid/widget/TextView;

    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->b:Landroid/widget/TextView;

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->c:Landroid/widget/TextView;

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->d:Landroid/view/View;

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->e:Landroid/widget/TextView;

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    .line 84
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->g:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/share/box/b;->i:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/box/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/box/b;->c(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/b;->e()V

    .line 94
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/box/b;->h:Landroid/app/ProgressDialog;

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0348

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    const-string v0, "image"

    iget-object v1, p0, Lcom/dolphin/browser/share/box/b;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dolphin/browser/share/box/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/box/b;->d(Ljava/lang/String;)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    const-string v0, "page"

    iget-object v1, p0, Lcom/dolphin/browser/share/box/b;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->m:Lcom/dolphin/browser/share/box/p;

    iget-object v1, p0, Lcom/dolphin/browser/share/box/b;->n:Lcom/dolphin/browser/share/box/r;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/p;->a(Lcom/dolphin/browser/share/box/r;)V

    .line 190
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/b;->d()V

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "text"

    iget-object v1, p0, Lcom/dolphin/browser/share/box/b;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/box/b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/share/box/b;)Lcom/b/a/a/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->k:Lcom/b/a/a/b;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 126
    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 135
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {}, Lcom/dolphin/browser/util/dt;->a()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/dolphin/browser/share/box/b;->m:Lcom/dolphin/browser/share/box/p;

    invoke-virtual {v2}, Lcom/dolphin/browser/share/box/p;->b()I

    move-result v2

    .line 143
    iget-object v3, p0, Lcom/dolphin/browser/share/box/b;->m:Lcom/dolphin/browser/share/box/p;

    invoke-virtual {v3}, Lcom/dolphin/browser/share/box/p;->c()I

    move-result v3

    .line 144
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 145
    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/dt;->a(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/share/box/p;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/dolphin/browser/share/box/d;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/share/box/d;-><init>(Lcom/dolphin/browser/share/box/b;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 211
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/share/box/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const v4, 0x7f0a00fc

    const v3, 0x7f0a017c

    .line 225
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->d:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020283

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020282

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/share/box/b;)Lcom/dolphin/browser/q/a/j;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->l:Lcom/dolphin/browser/q/a/j;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->h:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->l:Lcom/dolphin/browser/q/a/j;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/dolphin/browser/share/box/e;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/share/box/e;-><init>(Lcom/dolphin/browser/share/box/b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/q/a/j;->a(JLcom/b/a/c/c;)V

    .line 310
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLcom/dolphin/browser/share/a;)V
    .locals 7

    .prologue
    .line 357
    invoke-interface {p5}, Lcom/dolphin/browser/share/a;->a()V

    .line 359
    invoke-static {}, Lcom/dolphin/browser/share/box/s;->a()Lcom/dolphin/browser/share/box/s;

    move-result-object v6

    new-instance v0, Lcom/dolphin/browser/share/box/g;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/share/box/g;-><init>(Lcom/dolphin/browser/share/box/b;Lcom/dolphin/browser/share/a;Landroid/content/Context;J)V

    invoke-virtual {v6, p2, v0}, Lcom/dolphin/browser/share/box/s;->a(Ljava/lang/String;Lcom/dolphin/browser/share/box/t;)V

    .line 397
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 6

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/share/box/b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->k:Lcom/b/a/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/o;->a(Lcom/b/a/a/b;)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/share/box/b;->a(Landroid/content/Context;Ljava/lang/String;JLcom/dolphin/browser/share/a;)V

    .line 347
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e059f

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 349
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 350
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 352
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 102
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/p;->a(Z)V

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 261
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800c3

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->k:Lcom/b/a/a/b;

    if-nez v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/b;->f()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->k:Lcom/b/a/a/b;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/box/b;->a(Lcom/b/a/a/b;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 108
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/p;->a(Z)V

    .line 109
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 113
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/dolphin/browser/share/box/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/dolphin/browser/share/box/b;->m:Lcom/dolphin/browser/share/box/p;

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/share/box/p;->a(II)V

    .line 119
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/b;->d()V

    .line 122
    :cond_0
    return-void
.end method

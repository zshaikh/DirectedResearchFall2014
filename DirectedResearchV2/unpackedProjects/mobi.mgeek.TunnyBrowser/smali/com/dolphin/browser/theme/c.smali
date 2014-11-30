.class public Lcom/dolphin/browser/theme/c;
.super Lcom/dolphin/browser/theme/q;
.source "FakedSkinItem.java"


# instance fields
.field private n:Z

.field private o:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

.field private p:Lcom/dolphin/browser/theme/data/n;

.field private q:Lcom/dolphin/browser/theme/data/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/q;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c;->n:Z

    .line 87
    new-instance v0, Lcom/dolphin/browser/theme/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/d;-><init>(Lcom/dolphin/browser/theme/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c;->o:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 162
    new-instance v0, Lcom/dolphin/browser/theme/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/e;-><init>(Lcom/dolphin/browser/theme/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c;->q:Lcom/dolphin/browser/theme/data/o;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/c;)Lcom/dolphin/browser/theme/data/n;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ProgressTextView;->b()V

    .line 160
    return-void
.end method

.method protected a(F)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    iget-object v1, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/data/n;F)V

    .line 151
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/data/n;)V

    .line 153
    const-string v0, "themes_new"

    const-string v1, "download"

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/c;->n:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :goto_1
    return-void

    .line 76
    :cond_0
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c;->c()V

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    .line 59
    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->d_()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 62
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 64
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dolphin/browser/theme/c;->n:Z

    .line 65
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->getInstance(Landroid/content/Context;)Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/theme/c;->o:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->loadSizedImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;II)Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c;->n:Z

    .line 67
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;Z)V
    .locals 2

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    if-eq v0, p1, :cond_3

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    iget-object v1, p0, Lcom/dolphin/browser/theme/c;->q:Lcom/dolphin/browser/theme/data/o;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/data/n;->b(Lcom/dolphin/browser/theme/data/o;)V

    :cond_2
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/dolphin/browser/theme/data/n;

    iput-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    .line 51
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/theme/q;->a(Lcom/dolphin/browser/theme/data/a;Z)V

    goto :goto_0
.end method

.method protected a(Lcom/dolphin/browser/theme/data/n;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-interface {p1}, Lcom/dolphin/browser/theme/data/n;->f_()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/dolphin/browser/theme/c;->q:Lcom/dolphin/browser/theme/data/o;

    invoke-interface {p1, v1}, Lcom/dolphin/browser/theme/data/n;->a(Lcom/dolphin/browser/theme/data/o;)V

    .line 127
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Z)V

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Z)V

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/data/n;)V

    .line 133
    invoke-interface {p1}, Lcom/dolphin/browser/theme/data/n;->e_()V

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/dolphin/browser/theme/ProgressTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 135
    :cond_3
    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Z)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ProgressTextView;->a()V

    goto :goto_0
.end method

.method protected b(Lcom/dolphin/browser/theme/data/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/q;->b(Lcom/dolphin/browser/theme/data/a;)V

    .line 114
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200d1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0135

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 119
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/theme/c;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Lcom/dolphin/browser/theme/ProgressTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/data/n;)V

    .line 122
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/dolphin/browser/theme/q;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/theme/c;->p:Lcom/dolphin/browser/theme/data/n;

    iget-object v1, p0, Lcom/dolphin/browser/theme/c;->q:Lcom/dolphin/browser/theme/data/o;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/theme/data/n;->b(Lcom/dolphin/browser/theme/data/o;)V

    .line 147
    :cond_0
    return-void
.end method

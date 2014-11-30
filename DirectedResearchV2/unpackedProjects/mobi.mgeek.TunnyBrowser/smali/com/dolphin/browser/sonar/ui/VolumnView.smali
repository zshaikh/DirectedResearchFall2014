.class public Lcom/dolphin/browser/sonar/ui/VolumnView;
.super Landroid/widget/FrameLayout;
.source "VolumnView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;
.implements Lcom/dolphin/browser/voice/command/a/j;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->k:I

    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->k:I

    .line 46
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->k:I

    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0165

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 60
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0164

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    const/16 v0, 0x13

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    const/16 v0, 0x15

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    invoke-virtual {p0, v1, v4}, Lcom/dolphin/browser/sonar/ui/VolumnView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p0, v2, v5}, Lcom/dolphin/browser/sonar/ui/VolumnView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iput-object v1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->a:Landroid/widget/ImageView;

    .line 68
    iput-object v2, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->b:Landroid/widget/ImageView;

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020310

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->i:Landroid/graphics/drawable/Drawable;

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020311

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->j:Landroid/graphics/drawable/Drawable;

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020312

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->g:Landroid/graphics/drawable/Drawable;

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020313

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->h:Landroid/graphics/drawable/Drawable;

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020316

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->e:Landroid/graphics/drawable/Drawable;

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020317

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->f:Landroid/graphics/drawable/Drawable;

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020314

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->c:Landroid/graphics/drawable/Drawable;

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020315

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->d:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/sonar/ui/VolumnView;->b(F)V

    .line 87
    return-void
.end method

.method private b(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x40e00000

    const/high16 v3, 0x40400000

    const/high16 v2, 0x3f800000

    .line 114
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->c:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->d:Landroid/graphics/drawable/Drawable;

    .line 131
    :goto_0
    iget v3, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->l:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 132
    iput v2, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->l:F

    .line 133
    iget-object v2, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->m:F

    .line 137
    return-void

    .line 118
    :cond_1
    cmpg-float v0, p1, v3

    if-gez v0, :cond_2

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->e:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->f:Landroid/graphics/drawable/Drawable;

    move v2, v3

    goto :goto_0

    .line 122
    :cond_2
    cmpg-float v0, p1, v4

    if-gez v0, :cond_3

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->g:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->h:Landroid/graphics/drawable/Drawable;

    move v2, v4

    goto :goto_0

    .line 127
    :cond_3
    const/high16 v2, 0x41200000

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->i:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/VolumnView;->b(F)V

    .line 105
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->k:I

    if-ne v0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->k:I

    .line 95
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/sonar/ui/VolumnView;->b(F)V

    goto :goto_0
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/VolumnView;->m:F

    invoke-direct {p0, v0}, Lcom/dolphin/browser/sonar/ui/VolumnView;->b(F)V

    .line 142
    return-void
.end method

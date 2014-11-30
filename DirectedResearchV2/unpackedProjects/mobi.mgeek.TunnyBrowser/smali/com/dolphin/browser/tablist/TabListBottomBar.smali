.class public Lcom/dolphin/browser/tablist/TabListBottomBar;
.super Landroid/widget/LinearLayout;
.source "TabListBottomBar.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/dolphin/browser/tablist/bz;

.field private n:Lcom/dolphin/browser/tablist/bw;

.field private o:Z

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Lcom/dolphin/browser/core/ITabListener;

.field private s:Lcom/dolphin/browser/tablist/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    .line 41
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->c:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    .line 43
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    .line 46
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->g:Landroid/widget/ImageView;

    .line 47
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->h:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    .line 50
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->j:Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->k:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->o:Z

    .line 186
    new-instance v0, Lcom/dolphin/browser/tablist/bq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bq;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->p:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/dolphin/browser/tablist/br;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/br;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->q:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v0, Lcom/dolphin/browser/tablist/bs;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bs;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->r:Lcom/dolphin/browser/core/ITabListener;

    .line 379
    new-instance v0, Lcom/dolphin/browser/tablist/bu;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bu;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->s:Lcom/dolphin/browser/tablist/ab;

    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    .line 41
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->c:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    .line 43
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    .line 46
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->g:Landroid/widget/ImageView;

    .line 47
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->h:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    .line 50
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->j:Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->k:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->o:Z

    .line 186
    new-instance v0, Lcom/dolphin/browser/tablist/bq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bq;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->p:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/dolphin/browser/tablist/br;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/br;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->q:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v0, Lcom/dolphin/browser/tablist/bs;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bs;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->r:Lcom/dolphin/browser/core/ITabListener;

    .line 379
    new-instance v0, Lcom/dolphin/browser/tablist/bu;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bu;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->s:Lcom/dolphin/browser/tablist/ab;

    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    .line 41
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->c:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    .line 43
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    .line 46
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->g:Landroid/widget/ImageView;

    .line 47
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->h:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    .line 50
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->j:Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->k:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->o:Z

    .line 186
    new-instance v0, Lcom/dolphin/browser/tablist/bq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bq;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->p:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/dolphin/browser/tablist/br;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/br;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->q:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v0, Lcom/dolphin/browser/tablist/bs;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bs;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->r:Lcom/dolphin/browser/core/ITabListener;

    .line 379
    new-instance v0, Lcom/dolphin/browser/tablist/bu;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bu;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->s:Lcom/dolphin/browser/tablist/ab;

    .line 74
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/TabListBottomBar;)Lcom/dolphin/browser/tablist/bz;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v6, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 79
    invoke-static {p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/content/Context;)Lcom/dolphin/browser/core/TabManager;

    .line 80
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->r:Lcom/dolphin/browser/core/ITabListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->addListener(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/f;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/k/f;->addObserver(Ljava/util/Observer;)V

    .line 83
    invoke-static {}, Lcom/dolphin/browser/tablist/w;->a()Lcom/dolphin/browser/tablist/w;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->s:Lcom/dolphin/browser/tablist/ab;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/w;->a(Lcom/dolphin/browser/tablist/ab;)V

    .line 84
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/tablist/TabListBottomBar;->setOrientation(I)V

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    .line 88
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    const/high16 v2, 0x3f800000

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 94
    iget-object v2, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    iget-object v2, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 100
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x3

    const/16 v5, 0x30

    invoke-direct {v1, v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 107
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    .line 108
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->c:Landroid/widget/ImageView;

    .line 109
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    .line 110
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    .line 111
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    const/16 v5, 0x35

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v3}, Lcom/dolphin/browser/tablist/TabListBottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    .line 122
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->g:Landroid/widget/ImageView;

    .line 123
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->h:Landroid/widget/ImageView;

    .line 124
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v3}, Lcom/dolphin/browser/tablist/TabListBottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    .line 131
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->k:Landroid/widget/ImageView;

    .line 132
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->j:Landroid/widget/ImageView;

    .line 133
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    .line 134
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 135
    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00c6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v0, v0, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 141
    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->j:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v2, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3}, Lcom/dolphin/browser/tablist/TabListBottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->d()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->c()V

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/TabListBottomBar;Lcom/dolphin/browser/tablist/bz;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->c(Lcom/dolphin/browser/tablist/bz;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/TabListBottomBar;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->f()V

    return-void
.end method

.method private b(Lcom/dolphin/browser/tablist/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 294
    sget-object v0, Lcom/dolphin/browser/tablist/bv;->a:[I

    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 303
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->g()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private c(Lcom/dolphin/browser/tablist/bz;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 312
    .line 314
    sget-object v0, Lcom/dolphin/browser/tablist/bv;->a:[I

    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bz;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    .line 338
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 341
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 342
    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 344
    add-int v5, v4, v3

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    mul-int/lit8 v2, v3, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 347
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 349
    :cond_0
    return-void

    .line 316
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02000a

    .line 318
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0609

    .line 319
    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020062

    .line 323
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0608

    .line 324
    goto :goto_0

    .line 326
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :goto_1
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202de

    .line 332
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e060a

    .line 333
    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 254
    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Lcom/dolphin/browser/tablist/bt;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/tablist/bt;-><init>(Lcom/dolphin/browser/tablist/TabListBottomBar;Lcom/dolphin/browser/core/TabManager;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bw;->b(Lcom/dolphin/browser/tablist/bz;)V

    .line 274
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/tablist/TabListBottomBar;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->e()V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :cond_0
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->o:Z

    .line 155
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->e()V

    .line 156
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/bw;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    .line 371
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    if-ne p1, v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    if-eqz v0, :cond_0

    .line 282
    iput-object p1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->n:Lcom/dolphin/browser/tablist/bw;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bw;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->b(Lcom/dolphin/browser/tablist/bz;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->c(Lcom/dolphin/browser/tablist/bz;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->o:Z

    .line 161
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const v4, 0x7f0a0062

    const/4 v3, 0x0

    .line 165
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->setBackgroundColor(I)V

    .line 168
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3, v4, v4, v3}, Lcom/dolphin/browser/util/bb;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->d:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202c3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202c4

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3, v4, v4, v3}, Lcom/dolphin/browser/util/bb;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->h:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202d4

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->k:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3, v4, v4, v3}, Lcom/dolphin/browser/util/bb;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->j:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202c7

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->o:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    if-ne v0, v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 395
    instance-of v0, p1, Lcom/dolphin/browser/k/f;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListBottomBar;->m:Lcom/dolphin/browser/tablist/bz;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->c(Lcom/dolphin/browser/tablist/bz;)V

    .line 398
    :cond_0
    return-void
.end method

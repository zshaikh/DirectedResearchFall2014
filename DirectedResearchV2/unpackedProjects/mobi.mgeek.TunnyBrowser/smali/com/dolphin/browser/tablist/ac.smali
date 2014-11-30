.class public Lcom/dolphin/browser/tablist/ac;
.super Lcom/dolphin/browser/tablist/g;
.source "CurrentTablistView.java"


# instance fields
.field private a:I

.field private b:Lcom/dolphin/browser/tablist/MenubarTablistContainer;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/dolphin/browser/core/TabManager;

.field private g:Lcom/dolphin/browser/tablist/HorizontalListView;

.field private h:Lcom/dolphin/browser/tablist/AnimListItemParent;

.field private i:Lcom/dolphin/browser/tablist/VerticalListView;

.field private j:Lcom/dolphin/browser/tablist/AnimListItemParent;

.field private k:I

.field private l:Lcom/dolphin/browser/tablist/bl;

.field private m:Lcom/dolphin/browser/tablist/as;

.field private n:Lcom/dolphin/browser/tablist/cs;

.field private o:Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/dolphin/browser/tablist/cd;

.field private s:Lcom/dolphin/browser/tablist/ck;

.field private t:Lcom/dolphin/browser/tablist/cu;

.field private u:Lcom/dolphin/browser/core/ITabListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Lcom/dolphin/browser/tablist/ar;

.field private x:Lcom/g/a/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/g;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    .line 78
    iput v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    .line 344
    new-instance v0, Lcom/dolphin/browser/tablist/ag;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ag;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->s:Lcom/dolphin/browser/tablist/ck;

    .line 375
    new-instance v0, Lcom/dolphin/browser/tablist/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ah;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->t:Lcom/dolphin/browser/tablist/cu;

    .line 423
    new-instance v0, Lcom/dolphin/browser/tablist/ai;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ai;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->u:Lcom/dolphin/browser/core/ITabListener;

    .line 562
    new-instance v0, Lcom/dolphin/browser/tablist/aj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/aj;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->v:Landroid/view/View$OnClickListener;

    .line 578
    new-instance v0, Lcom/dolphin/browser/tablist/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ak;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->w:Lcom/dolphin/browser/tablist/ar;

    .line 91
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/ac;->a(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ac;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/cu;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->t:Lcom/dolphin/browser/tablist/cu;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/core/ITab;)V
    .locals 5

    .prologue
    .line 461
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    move-object v2, v0

    .line 466
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 467
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 468
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 469
    instance-of v1, v0, Lcom/dolphin/browser/tablist/bn;

    if-eqz v1, :cond_0

    .line 470
    check-cast v0, Lcom/dolphin/browser/tablist/bn;

    .line 471
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bn;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/tablist/bp;

    .line 472
    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bn;->c()V

    .line 467
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    move-object v2, v0

    goto :goto_0

    .line 477
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ac;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ac;->a(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/ac;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/ac;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/as;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->m:Lcom/dolphin/browser/tablist/as;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/cs;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->n:Lcom/dolphin/browser/tablist/cs;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/AnimListItemParent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/AnimListItemParent;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->q()V

    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/bl;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->l:Lcom/dolphin/browser/tablist/bl;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->f:Lcom/dolphin/browser/core/TabManager;

    .line 172
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v2

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 175
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/tablist/bk;->a(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/tablist/bk;

    move-result-object v4

    .line 176
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iput-object v3, p0, Lcom/dolphin/browser/tablist/ac;->p:Ljava/util/List;

    .line 179
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    .line 183
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->p:Ljava/util/List;

    .line 184
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->f:Lcom/dolphin/browser/core/TabManager;

    .line 185
    invoke-virtual {v2}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v3

    .line 186
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 188
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v4

    .line 189
    invoke-static {v4}, Lcom/dolphin/browser/tablist/bk;->a(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/tablist/bk;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/tablist/bk;->c()V

    .line 192
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->j()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/ac;->q:Z

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/dolphin/browser/tablist/cd;

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/dolphin/browser/tablist/cd;-><init>(Landroid/content/Context;Lcom/dolphin/browser/tablist/ac;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->r:Lcom/dolphin/browser/tablist/cd;

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->r:Lcom/dolphin/browser/tablist/cd;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/cd;->b()V

    .line 207
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->r:Lcom/dolphin/browser/tablist/cd;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->r:Lcom/dolphin/browser/tablist/cd;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/cd;->c()V

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->o()V

    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 236
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 237
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    if-eq v2, v0, :cond_1

    .line 238
    invoke-static {}, Lcom/dolphin/browser/tablist/ch;->a()Lcom/dolphin/browser/tablist/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ch;->c()V

    .line 239
    iput v2, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 242
    if-eqz v1, :cond_0

    .line 243
    iget-object v3, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    :cond_0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_2

    .line 246
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/tablist/HorizontalListView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->bringToFront()V

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/tablist/VerticalListView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/tablist/AnimListItemParent;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/tablist/AnimListItemParent;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->o:Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/cw;)V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->o:Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a(Lcom/dolphin/browser/tablist/cv;)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->m:Lcom/dolphin/browser/tablist/as;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->l:Lcom/dolphin/browser/tablist/bl;

    .line 274
    :goto_0
    new-instance v0, Lcom/dolphin/browser/tablist/af;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/af;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/tablist/ac;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    :cond_1
    return-void

    .line 259
    :cond_2
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/tablist/AnimListItemParent;->addView(Landroid/view/View;I)V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/tablist/VerticalListView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->bringToFront()V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/tablist/HorizontalListView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/tablist/AnimListItemParent;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/tablist/AnimListItemParent;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->o:Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/cw;)V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->o:Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a(Lcom/dolphin/browser/tablist/cv;)V

    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->n:Lcom/dolphin/browser/tablist/cs;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->l:Lcom/dolphin/browser/tablist/bl;

    goto :goto_0
.end method

.method static synthetic m(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->p()V

    return-void
.end method

.method static synthetic n(Lcom/dolphin/browser/tablist/ac;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lcom/g/a/s;

    invoke-direct {v0}, Lcom/g/a/s;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    .line 600
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/g/a/s;->b(J)Lcom/g/a/s;

    .line 604
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    new-instance v1, Lcom/dolphin/browser/tablist/al;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/al;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Lcom/g/a/b;)V

    .line 626
    :cond_0
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->n()V

    .line 631
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->b()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/g/a/ai;

    const/4 v2, 0x0

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a([Lcom/g/a/ai;)V

    .line 635
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 636
    return-void

    .line 634
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private p()V
    .locals 5

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->n()V

    .line 641
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->b()V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/g/a/ai;

    const/4 v2, 0x0

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Lcom/g/a/ai;->a(Ljava/lang/String;[F)Lcom/g/a/ai;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a([Lcom/g/a/ai;)V

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->x:Lcom/g/a/s;

    invoke-virtual {v0}, Lcom/g/a/s;->a()V

    .line 646
    return-void

    .line 644
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private q()V
    .locals 3

    .prologue
    .line 650
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    .line 655
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/preference/z;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "times_of_close_tab_in_tablist"

    iget v2, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->m()V

    .line 198
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->k()V

    .line 199
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->a()V

    .line 200
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->m()V

    .line 294
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0x7f08038e

    const/4 v3, -0x1

    .line 96
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/g;->a(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/dolphin/browser/tablist/ch;->a()Lcom/dolphin/browser/tablist/ch;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->s:Lcom/dolphin/browser/tablist/ck;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/ck;)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030105

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dolphin/browser/tablist/ac;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/MenubarTablistContainer;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->b:Lcom/dolphin/browser/tablist/MenubarTablistContainer;

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080393

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->c:Landroid/widget/LinearLayout;

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080394

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->d:Landroid/widget/FrameLayout;

    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080395

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->e:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08038f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/HorizontalListView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    .line 111
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080390

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/AnimListItemParent;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080391

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/VerticalListView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    .line 114
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080392

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/AnimListItemParent;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->o:Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->w:Lcom/dolphin/browser/tablist/ar;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tablist/HorizontalListView;->a(Lcom/dolphin/browser/tablist/ar;)V

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->t:Lcom/dolphin/browser/tablist/cu;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tablist/HorizontalListView;->a(Lcom/dolphin/browser/tablist/cu;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->t:Lcom/dolphin/browser/tablist/cu;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tablist/VerticalListView;->a(Lcom/dolphin/browser/tablist/cu;)V

    .line 121
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->f:Lcom/dolphin/browser/core/TabManager;

    .line 122
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->i()V

    .line 124
    new-instance v0, Lcom/dolphin/browser/tablist/as;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->p:Ljava/util/List;

    invoke-direct {v0, p1, v2}, Lcom/dolphin/browser/tablist/as;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->m:Lcom/dolphin/browser/tablist/as;

    .line 125
    new-instance v0, Lcom/dolphin/browser/tablist/cs;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->p:Ljava/util/List;

    invoke-direct {v0, p1, v2}, Lcom/dolphin/browser/tablist/cs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ac;->n:Lcom/dolphin/browser/tablist/cs;

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->m:Lcom/dolphin/browser/tablist/as;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tablist/HorizontalListView;->a(Lcom/dolphin/browser/tablist/bl;)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ac;->n:Lcom/dolphin/browser/tablist/cs;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tablist/VerticalListView;->a(Lcom/dolphin/browser/tablist/bl;)V

    .line 130
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/tablist/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v0, Lcom/dolphin/browser/tablist/ad;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ad;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/ac;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->f:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ac;->u:Lcom/dolphin/browser/core/ITabListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->addListener(Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldolphin/preference/z;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "times_of_close_tab_in_tablist"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    .line 150
    :cond_0
    iget v1, p0, Lcom/dolphin/browser/tablist/ac;->a:I

    if-eq v1, v3, :cond_1

    .line 151
    new-instance v1, Lcom/dolphin/browser/tablist/ae;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/ae;-><init>(Lcom/dolphin/browser/tablist/ac;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/a/a;->addObserver(Ljava/util/Observer;)V

    .line 160
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ac;->q:Z

    .line 161
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->c()V

    .line 162
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 212
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ac;->l()V

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/VerticalListView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/HorizontalListView;->setVisibility(I)V

    .line 216
    invoke-static {}, Lcom/dolphin/browser/tablist/ch;->a()Lcom/dolphin/browser/tablist/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ch;->b()V

    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->m:Lcom/dolphin/browser/tablist/as;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/as;->c()V

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->n:Lcom/dolphin/browser/tablist/cs;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/cs;->c()V

    .line 219
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->b()V

    .line 220
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 482
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->c()V

    .line 483
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 484
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02000a

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 485
    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020063

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a012a

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a012b

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 489
    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01af

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 495
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->h:Lcom/dolphin/browser/tablist/AnimListItemParent;

    move-object v1, v0

    .line 500
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 501
    :goto_1
    if-ge v2, v3, :cond_2

    .line 502
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 503
    instance-of v4, v0, Lcom/dolphin/browser/tablist/bn;

    if-eqz v4, :cond_0

    .line 504
    check-cast v0, Lcom/dolphin/browser/tablist/bn;

    .line 505
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bn;->updateTheme()V

    .line 501
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->j:Lcom/dolphin/browser/tablist/AnimListItemParent;

    move-object v1, v0

    goto :goto_0

    .line 508
    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/g;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ac;->q:Z

    .line 230
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/dolphin/browser/tablist/ac;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->g:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->b()V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ac;->i:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->b()V

    goto :goto_0
.end method

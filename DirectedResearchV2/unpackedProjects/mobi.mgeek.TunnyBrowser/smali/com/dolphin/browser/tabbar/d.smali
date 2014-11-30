.class public Lcom/dolphin/browser/tabbar/d;
.super Landroid/widget/LinearLayout;
.source "TabPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Lcom/dolphin/browser/tabbar/i;

.field private j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

.field private k:Lcom/dolphin/browser/tabbar/f;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/tabbar/h;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/dolphin/browser/core/TabManager;

.field private o:Lcom/dolphin/browser/ui/b/b;

.field private p:Lcom/dolphin/browser/titlebar/k;

.field private q:Landroid/view/ContextMenu$ContextMenuInfo;

.field private r:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/titlebar/k;)V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 269
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/d;->h:Landroid/content/Context;

    .line 270
    iput-object p2, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    .line 271
    iput-object p3, p0, Lcom/dolphin/browser/tabbar/d;->p:Lcom/dolphin/browser/titlebar/k;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    .line 273
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tabbar/d;->a(Landroid/content/Context;)V

    .line 274
    invoke-static {}, Lcom/dolphin/browser/ui/b/b;->a()Lcom/dolphin/browser/ui/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/d;->o:Lcom/dolphin/browser/ui/b/b;

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tabbar/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v1, 0x50

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/tabbar/d;->setHorizontalScrollBarEnabled(Z)V

    .line 280
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/tabbar/d;->setVerticalScrollBarEnabled(Z)V

    .line 283
    new-instance v0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->setOrientation(I)V

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->setGravity(I)V

    .line 287
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 290
    new-instance v1, Lcom/dolphin/browser/tabbar/f;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/tabbar/f;-><init>(Lcom/dolphin/browser/tabbar/d;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    .line 291
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/tabbar/f;->setHorizontalScrollBarEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/tabbar/f;->setVerticalScrollBarEnabled(Z)V

    .line 293
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/tabbar/f;->setFadingEdgeLength(I)V

    .line 294
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/tabbar/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 298
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 299
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/tabbar/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/d;->m:Landroid/widget/ImageView;

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 307
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/tabbar/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->a()V

    .line 309
    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/widget/LinearLayout;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/tabbar/h;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    .line 501
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 502
    if-le v1, v0, :cond_2

    .line 503
    sub-int/2addr v1, v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 505
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 506
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/core/TabManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/tabbar/d;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/tabbar/d;->b:I

    return v0
.end method

.method private c(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/tabbar/h;
    .locals 4

    .prologue
    .line 389
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    .line 390
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 391
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tabbar/h;

    .line 392
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 398
    :goto_1
    return-object v0

    .line 390
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/dolphin/browser/tabbar/d;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/tabbar/d;->a:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 323
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    .line 324
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 325
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tabbar/h;

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->b()V

    .line 324
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/tabbar/d;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/tabbar/d;->c:I

    return v0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v3, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    .line 335
    iget-object v4, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    .line 336
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->f()I

    move-result v5

    move v1, v2

    .line 337
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 338
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tabbar/h;

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v4, v1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v6

    .line 341
    if-eqz v6, :cond_1

    .line 342
    invoke-virtual {v0, v6}, Lcom/dolphin/browser/tabbar/h;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/tabbar/h;->setTag(Ljava/lang/Object;)V

    .line 344
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/tabbar/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->b()V

    .line 337
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 348
    :cond_1
    const-string v0, "TabPageView"

    const-string v6, "Tab at index %d is null"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v6, v7}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 352
    :cond_2
    return-void
.end method

.method private f()I
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 357
    invoke-static {}, Lcom/dolphin/browser/ui/b/b;->a()Lcom/dolphin/browser/ui/b/b;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/tabbar/d;->o:Lcom/dolphin/browser/ui/b/b;

    .line 358
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->o:Lcom/dolphin/browser/ui/b/b;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/b/b;->a(I)V

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->o:Lcom/dolphin/browser/ui/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/b/b;->b()I

    move-result v0

    .line 360
    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/tabbar/d;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/tabbar/d;->d:I

    return v0
.end method

.method static synthetic g(Lcom/dolphin/browser/tabbar/d;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/tabbar/d;->e:I

    return v0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v1

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->p:Lcom/dolphin/browser/titlebar/k;

    instance-of v2, v2, Lcom/dolphin/browser/titlebar/a;

    if-eqz v2, :cond_2

    .line 417
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->p:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v2}, Lcom/dolphin/browser/titlebar/k;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 418
    goto :goto_0

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->p:Lcom/dolphin/browser/titlebar/k;

    instance-of v2, v2, Lcom/dolphin/browser/titlebar/g;

    if-eqz v2, :cond_3

    move v1, v0

    .line 423
    goto :goto_0

    .line 425
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->a()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->b()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private h()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/f;->getScrollX()I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/tabbar/d;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/tabbar/d;->f:I

    return v0
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 727
    invoke-static {}, Lcom/dolphin/browser/util/cu;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/tabbar/i;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->i:Lcom/dolphin/browser/tabbar/i;

    return-object v0
.end method

.method static synthetic j(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 651
    instance-of v0, p1, Lcom/dolphin/browser/tabbar/h;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    check-cast p1, Lcom/dolphin/browser/tabbar/h;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method a(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 685
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public a()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 434
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    .line 435
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    .line 436
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 437
    iget-object v3, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v3}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v3

    .line 439
    if-le v0, v3, :cond_1

    .line 440
    monitor-enter p0

    .line 441
    sub-int v4, v0, v3

    if-ne v4, v6, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    iget-object v4, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v4}, Lcom/dolphin/browser/core/TabManager;->a()I

    move-result v4

    .line 444
    iget-object v5, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-virtual {v5, v4}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b(I)V

    .line 445
    new-instance v5, Lcom/dolphin/browser/tabbar/e;

    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->h()I

    move-result v6

    invoke-direct {v5, p0, v6, v4}, Lcom/dolphin/browser/tabbar/e;-><init>(Lcom/dolphin/browser/tabbar/d;II)V

    invoke-virtual {v5}, Lcom/dolphin/browser/tabbar/e;->run()V

    .line 447
    :cond_0
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/dolphin/browser/tabbar/d;->a(Ljava/util/ArrayList;Landroid/widget/LinearLayout;II)V

    .line 448
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->e()V

    .line 485
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->requestLayout()V

    .line 487
    return-void

    .line 448
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 451
    :cond_1
    if-ge v0, v3, :cond_5

    .line 452
    iget-object v4, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    .line 453
    monitor-enter p0

    .line 454
    sub-int v5, v3, v0

    if-ne v5, v6, :cond_2

    :try_start_2
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/dolphin/browser/core/TabManager;->b()Z

    move-result v5

    if-nez v5, :cond_2

    .line 459
    new-instance v5, Lcom/dolphin/browser/tabbar/g;

    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->h()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/dolphin/browser/tabbar/g;-><init>(Lcom/dolphin/browser/tabbar/d;I)V

    invoke-virtual {v5}, Lcom/dolphin/browser/tabbar/g;->run()V

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 462
    :goto_1
    if-ge v0, v3, :cond_4

    .line 463
    invoke-virtual {v4, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v6

    .line 464
    if-nez v6, :cond_3

    .line 465
    const-string v6, "TabPageView"

    const-string v7, "Tab at index %d is null"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 462
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 468
    :cond_3
    new-instance v7, Lcom/dolphin/browser/tabbar/h;

    invoke-direct {v7, p0, v5, v6}, Lcom/dolphin/browser/tabbar/h;-><init>(Lcom/dolphin/browser/tabbar/d;Landroid/content/Context;Lcom/dolphin/browser/core/ITab;)V

    .line 469
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->f()I

    move-result v6

    .line 470
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/dolphin/browser/tabbar/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 473
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 475
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 478
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->e()V

    goto :goto_0

    .line 481
    :cond_5
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->e()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 732
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/f;->a()V

    .line 733
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->o:Lcom/dolphin/browser/ui/b/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/b/b;->a(I)V

    .line 734
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tabbar/h;

    .line 735
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/dolphin/browser/tabbar/d;->o:Lcom/dolphin/browser/ui/b/b;

    invoke-virtual {v3}, Lcom/dolphin/browser/ui/b/b;->b()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/tabbar/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->b()V

    goto :goto_0

    .line 740
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->d()V

    .line 319
    return-void
.end method

.method public a(Lcom/dolphin/browser/tabbar/i;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/d;->i:Lcom/dolphin/browser/tabbar/i;

    .line 314
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 660
    instance-of v0, p1, Lcom/dolphin/browser/titlebar/a;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad request!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    iput-object p2, p0, Lcom/dolphin/browser/tabbar/d;->q:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 664
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->n:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tabbar/d;->c(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/tabbar/h;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->getLeft()I

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v2}, Lcom/dolphin/browser/tabbar/f;->getScrollX()I

    move-result v2

    .line 376
    iget-object v3, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v3}, Lcom/dolphin/browser/tabbar/f;->getWidth()I

    move-result v3

    .line 377
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 378
    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    .line 379
    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v1, v0, v4}, Lcom/dolphin/browser/tabbar/f;->scrollBy(II)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->k:Lcom/dolphin/browser/tabbar/f;

    invoke-virtual {v1, v0, v4}, Lcom/dolphin/browser/tabbar/f;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 697
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 698
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/d;->b:I

    .line 699
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/d;->c:I

    .line 700
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/d;->d:I

    .line 701
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/d;->e:I

    .line 702
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/d;->f:I

    .line 703
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/d;->a:I

    .line 704
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/d;->m:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v1

    .line 707
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0121

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->e(I)F

    move-result v0

    float-to-int v0, v0

    .line 708
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/d;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v4, v0, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 709
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    iget v1, p0, Lcom/dolphin/browser/tabbar/d;->b:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(I)V

    .line 710
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->d()V

    .line 712
    invoke-static {p0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;)V

    .line 713
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->requestLayout()V

    .line 714
    const-string v0, "TabPageView"

    const-string v1, "update theme"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tabbar/d;->c(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/tabbar/h;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/h;->d()V

    .line 407
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/dolphin/browser/tabbar/d;->g:Z

    if-eq v0, p1, :cond_0

    .line 720
    iput-boolean p1, p0, Lcom/dolphin/browser/tabbar/d;->g:Z

    .line 721
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/d;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->requestLayout()V

    .line 764
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 609
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 612
    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 615
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tabbar/d;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 616
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->r:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->r:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 619
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 624
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_3

    .line 628
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 630
    :cond_3
    return-void
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->q:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->m:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->i:Lcom/dolphin/browser/tabbar/i;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->i:Lcom/dolphin/browser/tabbar/i;

    invoke-interface {v0}, Lcom/dolphin/browser/tabbar/i;->a()V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/tabbar/h;

    if-eqz v0, :cond_0

    .line 563
    check-cast p1, Lcom/dolphin/browser/tabbar/h;

    .line 564
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->i:Lcom/dolphin/browser/tabbar/i;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->i:Lcom/dolphin/browser/tabbar/i;

    invoke-virtual {p1}, Lcom/dolphin/browser/tabbar/h;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolphin/browser/tabbar/h;->c()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/tabbar/i;->a(Lcom/dolphin/browser/core/ITab;Z)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 691
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 692
    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 693
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 573
    new-instance v0, Lcom/dolphin/browser/c/g;

    invoke-direct {v0}, Lcom/dolphin/browser/c/g;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/g;->a()Z

    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/d;->j:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 366
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/d;->a(Z)V

    .line 368
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 636
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/d;->r:Landroid/view/View$OnCreateContextMenuListener;

    .line 637
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tabbar/d;->a(Landroid/view/View;)I

    move-result v1

    .line 587
    if-ltz v1, :cond_0

    .line 588
    int-to-long v2, v1

    .line 592
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/dolphin/browser/tabbar/d;->a(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/d;->q:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 594
    invoke-super {p0, p0}, Landroid/widget/LinearLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 599
    :cond_0
    return v0
.end method

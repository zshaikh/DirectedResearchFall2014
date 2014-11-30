.class Lcom/dolphin/browser/menu/ao;
.super Landroid/support/v4/view/ae;
.source "PanelMenuView.java"


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/menu/PanelMenuView;

.field private final c:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/dolphin/browser/menu/ao;->b:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    .line 429
    iput-object p2, p0, Lcom/dolphin/browser/menu/ao;->a:Landroid/content/Context;

    .line 430
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ao;->a()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/dolphin/browser/menu/ao;->c:[Landroid/view/View;

    .line 431
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 463
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/menu/an;

    if-eqz v0, :cond_2

    .line 467
    check-cast p1, Lcom/dolphin/browser/menu/an;

    invoke-virtual {p1}, Lcom/dolphin/browser/menu/an;->a()V

    goto :goto_0

    .line 469
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/menu/ak;

    if-eqz v0, :cond_0

    .line 470
    check-cast p1, Lcom/dolphin/browser/menu/ak;

    invoke-virtual {p1}, Lcom/dolphin/browser/menu/ak;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/dolphin/browser/menu/v;->a:[I

    array-length v0, v0

    return v0
.end method

.method public synthetic a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/ao;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/dolphin/browser/menu/ao;->c:[Landroid/view/View;

    aget-object v0, v0, p2

    .line 448
    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/menu/ao;->b:Lcom/dolphin/browser/menu/PanelMenuView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ao;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;)Lcom/dolphin/browser/menu/ak;

    move-result-object v0

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/menu/ao;->c:[Landroid/view/View;

    aput-object v0, v1, p2

    .line 456
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/menu/ao;->b(Landroid/view/View;I)V

    .line 457
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 458
    return-object v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/ao;->b:Lcom/dolphin/browser/menu/PanelMenuView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ao;->a:Landroid/content/Context;

    invoke-static {v0, p2, v1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;ILandroid/content/Context;)Lcom/dolphin/browser/menu/an;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 484
    check-cast p1, Landroid/support/v4/view/ViewPager;

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/dolphin/browser/menu/ao;->c:[Landroid/view/View;

    check-cast p3, Landroid/view/View;

    aput-object p3, v0, p2

    .line 486
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 496
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public b_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ao;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/dolphin/browser/menu/ao;->b:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/menu/PanelMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/menu/ao;->b(Landroid/view/View;I)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

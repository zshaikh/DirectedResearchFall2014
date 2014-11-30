.class Lcom/mgeek/android/ui/aq;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/cc;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;Lcom/mgeek/android/ui/am;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/aq;-><init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a:Landroid/support/v4/view/cc;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a:Landroid/support/v4/view/cc;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cc;->a(I)V

    .line 465
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;Z)Z

    .line 437
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;I)I

    .line 438
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;F)F

    .line 440
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->c(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;II)V

    .line 442
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->invalidate()V

    .line 444
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a:Landroid/support/v4/view/cc;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a:Landroid/support/v4/view/cc;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/cc;->a(IFI)V

    .line 447
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;II)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a:Landroid/support/v4/view/cc;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/mgeek/android/ui/aq;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a:Landroid/support/v4/view/cc;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cc;->b(I)V

    .line 458
    :cond_1
    return-void
.end method

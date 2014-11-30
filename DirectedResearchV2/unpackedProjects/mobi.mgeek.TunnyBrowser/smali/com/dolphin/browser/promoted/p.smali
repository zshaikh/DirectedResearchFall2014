.class Lcom/dolphin/browser/promoted/p;
.super Lcom/dolphin/browser/util/f;
.source "PromotionView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/dolphin/browser/promoted/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/promoted/PromotionView;

.field private b:Z

.field private c:Z

.field private d:Lcom/dolphin/browser/promoted/k;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/promoted/PromotionView;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 558
    new-instance v0, Lcom/dolphin/browser/promoted/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/promoted/q;-><init>(Lcom/dolphin/browser/promoted/p;)V

    iput-object v0, p0, Lcom/dolphin/browser/promoted/p;->d:Lcom/dolphin/browser/promoted/k;

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/promoted/PromotionView;Lcom/dolphin/browser/promoted/n;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/p;-><init>(Lcom/dolphin/browser/promoted/PromotionView;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/p;Z)Z
    .locals 0

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/dolphin/browser/promoted/p;->b:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 554
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/promoted/p;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 569
    iget-object v2, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-virtual {v2}, Lcom/dolphin/browser/promoted/PromotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 570
    iput-boolean v1, p0, Lcom/dolphin/browser/promoted/p;->b:Z

    .line 571
    iget-object v3, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v3}, Lcom/dolphin/browser/promoted/PromotionView;->c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/promoted/p;->c:Z

    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/promoted/p;->d:Lcom/dolphin/browser/promoted/k;

    invoke-static {v2, v0}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;Lcom/dolphin/browser/promoted/k;)Ljava/util/ArrayList;

    move-result-object v0

    .line 574
    iget-boolean v1, p0, Lcom/dolphin/browser/promoted/p;->b:Z

    if-nez v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/PromotionView;->c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v0

    .line 598
    :goto_1
    return-object v0

    .line 571
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v3}, Lcom/dolphin/browser/promoted/PromotionView;->c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 578
    :cond_2
    if-nez v0, :cond_3

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    iget-object v3, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v3}, Lcom/dolphin/browser/promoted/PromotionView;->d(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/dolphin/browser/promoted/PromotionView;->a(Lcom/dolphin/browser/promoted/PromotionView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 584
    invoke-static {v2}, Lcom/dolphin/browser/promoted/j;->d(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_4

    .line 585
    iget-object v1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    iget-object v3, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v3}, Lcom/dolphin/browser/promoted/PromotionView;->c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/dolphin/browser/promoted/PromotionView;->b(Lcom/dolphin/browser/promoted/PromotionView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 586
    iget-object v1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v1}, Lcom/dolphin/browser/promoted/PromotionView;->e(Lcom/dolphin/browser/promoted/PromotionView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v3, Lcom/dolphin/browser/promoted/r;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/promoted/r;-><init>(Lcom/dolphin/browser/promoted/p;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 593
    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;I)V

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v1, v0}, Lcom/dolphin/browser/promoted/PromotionView;->a(Lcom/dolphin/browser/promoted/PromotionView;Ljava/util/ArrayList;)V

    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/PromotionView;->f(Lcom/dolphin/browser/promoted/PromotionView;)V

    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/PromotionView;->c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 554
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/promoted/p;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/PromotionView;->c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/promoted/p;->c:Z

    if-eqz v0, :cond_1

    .line 608
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v1}, Lcom/dolphin/browser/promoted/PromotionView;->g(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/promoted/p;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-static {v1}, Lcom/dolphin/browser/promoted/PromotionView;->g(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.class Lcom/dolphin/browser/gesture/ui/w;
.super Landroid/widget/ArrayAdapter;
.source "GestureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/dolphin/browser/gesture/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 519
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->c:Ljava/util/Map;

    .line 521
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/ui/w;->d:I

    .line 522
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->b:Landroid/view/LayoutInflater;

    .line 524
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 595
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iget v0, v0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 598
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 599
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->g(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01a0

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 601
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 603
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08004f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/GestureView;

    .line 607
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->setTag(Ljava/lang/Object;)V

    .line 608
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->c(I)V

    .line 609
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->a(Lcom/dolphin/browser/gesture/y;)V

    .line 610
    iget v2, p0, Lcom/dolphin/browser/gesture/ui/w;->d:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->b(I)V

    .line 611
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/w;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/GestureView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 612
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iget v0, v0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f:I

    if-ne p1, v0, :cond_1

    .line 613
    :cond_0
    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/GestureView;->a()V

    .line 615
    :cond_1
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/w;->setNotifyOnChange(Z)V

    .line 537
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->e(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/w;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 544
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/gesture/a/a;->d()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/w;->sort(Ljava/util/Comparator;)V

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->e(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a;->c()Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/w;->add(Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->c:Ljava/util/Map;

    const-string v1, "help"

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/i;->h()Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/w;->setNotifyOnChange(Z)V

    .line 550
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/w;->notifyDataSetChanged()V

    .line 551
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 530
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 555
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iget v1, v1, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iget v0, v0, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f:I

    if-ge p1, v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/w;->getItemViewType(I)I

    move-result v0

    .line 561
    if-nez p2, :cond_0

    .line 562
    if-nez v0, :cond_3

    .line 563
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/w;->b:Landroid/view/LayoutInflater;

    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f03008a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 569
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 570
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    :cond_1
    if-nez v0, :cond_2

    .line 574
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/gesture/ui/w;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 577
    :cond_2
    return-object p2

    .line 564
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/w;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->f(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x2

    return v0
.end method

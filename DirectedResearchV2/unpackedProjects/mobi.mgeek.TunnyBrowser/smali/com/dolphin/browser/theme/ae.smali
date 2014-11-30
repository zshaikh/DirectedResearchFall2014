.class Lcom/dolphin/browser/theme/ae;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 615
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 616
    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    .line 617
    if-ne v1, v5, :cond_2

    .line 618
    const-string v0, "theme manager"

    const-string v1, "more"

    const-string v2, "wallpaper"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;ILcom/dolphin/browser/theme/data/a;)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    goto :goto_0

    .line 625
    :cond_2
    if-ne v1, v3, :cond_6

    .line 626
    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/theme/data/n;

    .line 627
    invoke-interface {v1}, Lcom/dolphin/browser/theme/data/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Ljava/lang/String;)V

    .line 628
    invoke-interface {v1}, Lcom/dolphin/browser/theme/data/n;->f_()I

    move-result v2

    .line 629
    if-ne v2, v3, :cond_3

    .line 630
    iget-object v0, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/n;)V

    goto :goto_0

    .line 631
    :cond_3
    if-nez v2, :cond_5

    .line 632
    iget-object v2, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v2}, Lcom/dolphin/browser/theme/ThemeActivity2;->f(Lcom/dolphin/browser/theme/ThemeActivity2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 634
    iget-object v2, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    check-cast v1, Lcom/dolphin/browser/theme/data/a;

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;ILcom/dolphin/browser/theme/data/a;)V

    .line 638
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 639
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    const-string v1, "theme"

    const-string v2, "click"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0

    .line 636
    :cond_4
    iget-object v2, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/widget/BaseAdapter;Lcom/dolphin/browser/theme/data/n;)V

    goto :goto_1

    .line 643
    :cond_5
    if-ne v2, v4, :cond_0

    .line 644
    iget-object v0, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->f(Lcom/dolphin/browser/theme/ThemeActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/n;)V

    goto :goto_0

    .line 654
    :cond_6
    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 655
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v1

    if-ne v1, v4, :cond_7

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_7

    .line 665
    :goto_2
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 666
    const-string v0, "theme"

    const-string v1, "click"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto/16 :goto_0

    .line 659
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 660
    iget-object v1, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v1, v5, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;ILcom/dolphin/browser/theme/data/a;)V

    goto :goto_2

    .line 662
    :cond_8
    iget-object v1, p0, Lcom/dolphin/browser/theme/ae;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v1, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_2
.end method

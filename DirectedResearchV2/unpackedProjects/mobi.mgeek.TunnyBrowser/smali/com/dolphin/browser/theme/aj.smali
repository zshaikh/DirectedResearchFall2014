.class Lcom/dolphin/browser/theme/aj;
.super Landroid/support/v4/view/ae;
.source "ThemeActivity2.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;

.field private b:[Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 761
    iput-object p1, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/dolphin/browser/theme/aj;->c:Ljava/util/List;

    .line 763
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/aj;->a()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/dolphin/browser/theme/aj;->b:[Landroid/view/View;

    .line 764
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/aj;)[Landroid/view/View;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->b:[Landroid/view/View;

    return-object v0
.end method

.method private d(I)Landroid/view/View;
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 847
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 848
    if-ne p1, v5, :cond_0

    .line 849
    new-instance v0, Lcom/dolphin/browser/theme/ah;

    iget-object v1, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v2, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    const/4 v4, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ah;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;IZLcom/dolphin/browser/theme/v;)V

    .line 853
    :goto_0
    return-object v0

    .line 850
    :cond_0
    if-nez p1, :cond_1

    .line 851
    new-instance v7, Lcom/dolphin/browser/theme/ah;

    iget-object v8, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v9, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    move-object v10, v3

    move v11, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/dolphin/browser/theme/ah;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;IZLcom/dolphin/browser/theme/v;)V

    move-object v0, v7

    goto :goto_0

    .line 852
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 853
    new-instance v0, Lcom/dolphin/browser/theme/ai;

    iget-object v1, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v2, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    move v4, v12

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/theme/ai;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;ILcom/dolphin/browser/theme/v;)V

    goto :goto_0

    .line 855
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad position! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/aj;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 808
    iget-object v2, p0, Lcom/dolphin/browser/theme/aj;->b:[Landroid/view/View;

    .line 809
    if-ltz p2, :cond_1

    array-length v0, v2

    if-ge p2, v0, :cond_1

    .line 810
    aget-object v0, v2, p2

    .line 811
    if-nez v0, :cond_2

    .line 812
    invoke-direct {p0, p2}, Lcom/dolphin/browser/theme/aj;->d(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 814
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 815
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 818
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 819
    aput-object v1, v2, p2

    .line 823
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 844
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->b:[Landroid/view/View;

    aget-object v0, v0, p2

    .line 779
    if-eqz v0, :cond_0

    .line 780
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 782
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 830
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
    .line 786
    return-void
.end method

.method public b_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 795
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0627

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    .line 797
    :cond_0
    if-nez p1, :cond_1

    .line 798
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06a1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/dolphin/browser/theme/aj;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0637

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 768
    iget-object v2, p0, Lcom/dolphin/browser/theme/aj;->b:[Landroid/view/View;

    .line 769
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 770
    if-eqz v0, :cond_0

    .line 771
    check-cast v0, Lcom/dolphin/browser/theme/af;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/af;->a()V

    .line 769
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 774
    :cond_1
    return-void
.end method

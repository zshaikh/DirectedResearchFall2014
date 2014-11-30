.class public Lcom/dolphin/browser/search/aa;
.super Lcom/dolphin/browser/search/w;
.source "SuggestionAdapterBase.java"


# instance fields
.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:[I

.field o:I

.field final synthetic p:Lcom/dolphin/browser/search/k;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/search/k;II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 688
    iput-object p1, p0, Lcom/dolphin/browser/search/aa;->p:Lcom/dolphin/browser/search/k;

    .line 690
    invoke-direct {p0, v0, v0, p2, v0}, Lcom/dolphin/browser/search/w;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/aa;->h:Ljava/util/List;

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/search/aa;->o:I

    .line 691
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/search/aa;->k:I

    .line 694
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/search/aa;->l:I

    .line 696
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/aa;->m:I

    .line 698
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 700
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 702
    if-le v1, v0, :cond_0

    .line 707
    :goto_0
    iget v1, p0, Lcom/dolphin/browser/search/aa;->k:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x28

    iget v1, p0, Lcom/dolphin/browser/search/aa;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/search/aa;->j:I

    .line 708
    iget v0, p0, Lcom/dolphin/browser/search/aa;->j:I

    iput v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    .line 709
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/dolphin/browser/search/aa;->n:[I

    .line 710
    return-void

    :cond_0
    move v0, v1

    .line 705
    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->n:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 767
    :cond_0
    const/4 v0, 0x0

    .line 769
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->n:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/dolphin/browser/search/w;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 724
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/dolphin/browser/search/aa;->o:I

    iget-object v2, p0, Lcom/dolphin/browser/search/aa;->n:[I

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_1

    .line 751
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 727
    :cond_1
    if-eqz p1, :cond_0

    .line 730
    :try_start_1
    iget-object v1, p1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/dolphin/browser/search/aa;->p:Lcom/dolphin/browser/search/k;

    iget-object v2, p1, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/k;->a(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 735
    iget v2, p0, Lcom/dolphin/browser/search/aa;->i:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/dolphin/browser/search/aa;->k:I

    if-le v2, v3, :cond_2

    .line 736
    iget v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    .line 737
    iget v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    iget v1, p0, Lcom/dolphin/browser/search/aa;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    .line 738
    iget v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    iget v1, p0, Lcom/dolphin/browser/search/aa;->l:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    .line 739
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->n:[I

    iget v1, p0, Lcom/dolphin/browser/search/aa;->o:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 741
    const/4 v0, 0x1

    goto :goto_0

    .line 744
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/search/aa;->n:[I

    iget v2, p0, Lcom/dolphin/browser/search/aa;->o:I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    .line 748
    iget v0, p0, Lcom/dolphin/browser/search/aa;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/search/aa;->o:I

    .line 749
    iget v0, p0, Lcom/dolphin/browser/search/aa;->j:I

    iput v0, p0, Lcom/dolphin/browser/search/aa;->i:I

    .line 751
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/aa;->a(Lcom/dolphin/browser/search/w;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 719
    iget v0, p0, Lcom/dolphin/browser/search/aa;->o:I

    iget-object v1, p0, Lcom/dolphin/browser/search/aa;->n:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->h:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/dolphin/browser/search/aa;->n:[I

    array-length v0, v0

    return v0
.end method

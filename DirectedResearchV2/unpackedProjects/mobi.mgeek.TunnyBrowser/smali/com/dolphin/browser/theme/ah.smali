.class Lcom/dolphin/browser/theme/ah;
.super Landroid/view/CustomMenuGridView;
.source "ThemeActivity2.java"

# interfaces
.implements Lcom/dolphin/browser/theme/af;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;

.field private b:Lcom/dolphin/browser/theme/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/theme/ag",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 879
    iput-object p1, p0, Lcom/dolphin/browser/theme/ah;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    .line 880
    invoke-direct {p0, p2}, Landroid/view/CustomMenuGridView;-><init>(Landroid/content/Context;)V

    .line 881
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ah;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 882
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 884
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b016f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 886
    if-ne p4, v5, :cond_0

    .line 887
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0136

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 891
    :goto_0
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b016b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 893
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/dolphin/browser/theme/ah;->c:I

    .line 894
    if-ne p4, v5, :cond_1

    .line 895
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/theme/ah;->c:I

    add-int/2addr v0, v2

    .line 899
    :goto_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ah;->setColumnWidth(I)V

    .line 900
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/theme/ah;->setStretchMode(I)V

    .line 901
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ah;->setNumColumns(I)V

    .line 902
    new-instance v0, Lcom/dolphin/browser/theme/ag;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/dolphin/browser/theme/ag;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ah;->b:Lcom/dolphin/browser/theme/ag;

    .line 903
    iget-object v0, p0, Lcom/dolphin/browser/theme/ah;->b:Lcom/dolphin/browser/theme/ag;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ah;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 904
    invoke-static {p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->g(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ah;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 905
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/ah;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 906
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b013c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 907
    iget v2, p0, Lcom/dolphin/browser/theme/ah;->c:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v0, v3, v0}, Lcom/dolphin/browser/theme/ah;->setPadding(IIII)V

    .line 908
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b013d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ah;->setVerticalSpacing(I)V

    .line 909
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ah;->setClipToPadding(Z)V

    .line 910
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ah;->setScrollBarStyle(I)V

    .line 911
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ah;->setFadingEdgeLength(I)V

    .line 912
    return-void

    .line 889
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0135

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 897
    :cond_1
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/theme/ah;->c:I

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;IZLcom/dolphin/browser/theme/v;)V
    .locals 0

    .prologue
    .line 872
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/theme/ah;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/dolphin/browser/theme/ah;->b:Lcom/dolphin/browser/theme/ag;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/dolphin/browser/theme/ah;->b:Lcom/dolphin/browser/theme/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ag;->notifyDataSetChanged()V

    .line 918
    :cond_0
    return-void
.end method

.method public b()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/dolphin/browser/theme/ah;->b:Lcom/dolphin/browser/theme/ag;

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ah;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ah;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

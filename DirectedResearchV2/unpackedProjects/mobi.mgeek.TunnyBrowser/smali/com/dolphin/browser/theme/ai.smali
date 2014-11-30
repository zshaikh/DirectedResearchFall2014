.class Lcom/dolphin/browser/theme/ai;
.super Landroid/view/CustomMenuListView;
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


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 958
    iput-object p1, p0, Lcom/dolphin/browser/theme/ai;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    .line 959
    invoke-direct {p0, p2}, Landroid/view/CustomMenuListView;-><init>(Landroid/content/Context;)V

    .line 960
    new-instance v0, Lcom/dolphin/browser/theme/ag;

    invoke-direct {v0, p1, p3, p4, v4}, Lcom/dolphin/browser/theme/ag;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ai;->b:Lcom/dolphin/browser/theme/ag;

    .line 961
    iget-object v0, p0, Lcom/dolphin/browser/theme/ai;->b:Lcom/dolphin/browser/theme/ag;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ai;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 963
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ai;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 964
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 965
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/ai;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 966
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ai;->setCacheColorHint(I)V

    .line 967
    invoke-static {p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->g(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/ai;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 968
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/ai;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 969
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 970
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b013c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 971
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0138

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 973
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/dolphin/browser/theme/ai;->setPadding(IIII)V

    .line 974
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ai;->setClipToPadding(Z)V

    .line 975
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ai;->setScrollBarStyle(I)V

    .line 976
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/ai;->setFadingEdgeLength(I)V

    .line 977
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;ILcom/dolphin/browser/theme/v;)V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/theme/ai;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/dolphin/browser/theme/ai;->b:Lcom/dolphin/browser/theme/ag;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/dolphin/browser/theme/ai;->b:Lcom/dolphin/browser/theme/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ag;->notifyDataSetChanged()V

    .line 983
    :cond_0
    return-void
.end method

.method public b()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/dolphin/browser/theme/ai;->b:Lcom/dolphin/browser/theme/ag;

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ai;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ai;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

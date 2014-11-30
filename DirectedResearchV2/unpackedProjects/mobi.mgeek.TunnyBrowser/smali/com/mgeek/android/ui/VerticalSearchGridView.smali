.class public Lcom/mgeek/android/ui/VerticalSearchGridView;
.super Landroid/widget/LinearLayout;
.source "VerticalSearchGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final e:I

.field private static final f:I

.field private static final g:I


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x48

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/VerticalSearchGridView;->e:I

    .line 39
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/VerticalSearchGridView;->f:I

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/VerticalSearchGridView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/VerticalSearchGridView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->i:Landroid/widget/AdapterView$OnItemClickListener;

    .line 79
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->h:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 61
    new-instance v1, Lcom/mgeek/android/ui/bk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mgeek/android/ui/bk;-><init>(Lcom/mgeek/android/ui/VerticalSearchGridView;Lcom/mgeek/android/ui/bj;)V

    .line 62
    invoke-virtual {v1, v0, p0}, Lcom/mgeek/android/ui/bk;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/VerticalSearchGridView;->addView(Landroid/view/View;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 72
    iget-object v0, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->i:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    int-to-long v4, v3

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 73
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 84
    iget v3, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->c:I

    .line 85
    iget v4, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->d:I

    move v0, v1

    .line 86
    :goto_0
    iget v2, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->b:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 87
    :goto_1
    iget v5, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->a:I

    if-ge v2, v5, :cond_1

    .line 88
    iget v5, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->a:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 89
    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 90
    invoke-virtual {p0, v5}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 91
    mul-int v6, v2, v3

    .line 92
    mul-int v7, v0, v4

    .line 93
    sget v8, Lcom/mgeek/android/ui/VerticalSearchGridView;->g:I

    add-int/2addr v8, v6

    add-int/2addr v6, v3

    sget v9, Lcom/mgeek/android/ui/VerticalSearchGridView;->g:I

    add-int/2addr v6, v9

    add-int v9, v7, v4

    invoke-virtual {v5, v8, v7, v6, v9}, Landroid/view/View;->layout(IIII)V

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->invalidate()V

    .line 98
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v3, -0x80000000

    const/high16 v5, 0x40000000

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v2, v3

    .line 113
    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getDefaultSize(II)I

    move-result v2

    .line 114
    sget v3, Lcom/mgeek/android/ui/VerticalSearchGridView;->f:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/mgeek/android/ui/VerticalSearchGridView;->measureChildren(II)V

    .line 116
    sget v2, Lcom/mgeek/android/ui/VerticalSearchGridView;->e:I

    .line 117
    sget v5, Lcom/mgeek/android/ui/VerticalSearchGridView;->f:I

    .line 118
    invoke-virtual {p0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getChildCount()I

    move-result v6

    move v3, v2

    move v2, v1

    .line 119
    :goto_0
    if-ge v2, v6, :cond_2

    .line 120
    invoke-virtual {p0, v2}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 122
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_2
    iput v5, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->c:I

    .line 125
    iput v3, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->d:I

    .line 127
    iget-object v2, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 128
    sget v3, Lcom/mgeek/android/ui/VerticalSearchGridView;->g:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    .line 130
    iget v4, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->c:I

    div-int v4, v3, v4

    .line 131
    if-gt v2, v4, :cond_3

    .line 132
    iput v2, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->a:I

    .line 133
    iput v0, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->b:I

    .line 143
    :goto_1
    iget v0, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->c:I

    iget v1, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/mgeek/android/ui/VerticalSearchGridView;->g:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->d:I

    iget v2, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->b:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/VerticalSearchGridView;->setMeasuredDimension(II)V

    .line 144
    return-void

    .line 135
    :cond_3
    div-int/2addr v3, v4

    iput v3, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->c:I

    .line 137
    rem-int v3, v2, v4

    if-eqz v3, :cond_4

    .line 140
    :goto_2
    iput v4, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->a:I

    .line 141
    div-int v1, v2, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mgeek/android/ui/VerticalSearchGridView;->b:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

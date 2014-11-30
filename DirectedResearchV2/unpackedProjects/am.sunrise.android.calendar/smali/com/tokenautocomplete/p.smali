.class Lcom/tokenautocomplete/p;
.super Landroid/text/style/ReplacementSpan;
.source "TokenCompleteTextView.java"


# instance fields
.field protected c:Landroid/view/View;

.field final synthetic d:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/tokenautocomplete/p;->d:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 780
    iput-object p2, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    .line 781
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 784
    iget-object v0, p0, Lcom/tokenautocomplete/p;->d:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 785
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 787
    iget-object v2, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 788
    iget-object v0, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 789
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/tokenautocomplete/p;->a()V

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 796
    sub-int v0, p8, p6

    iget-object v1, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 797
    iget-object v1, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p8, v1

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 798
    iget-object v0, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 800
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/tokenautocomplete/p;->a()V

    .line 805
    if-eqz p5, :cond_0

    .line 807
    iget-object v0, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 808
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 809
    if-lez v0, :cond_0

    .line 810
    div-int/lit8 v1, v0, 0x2

    .line 812
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 813
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v1

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 814
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v1, v0, v1

    add-int/2addr v1, v2

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 815
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/p;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

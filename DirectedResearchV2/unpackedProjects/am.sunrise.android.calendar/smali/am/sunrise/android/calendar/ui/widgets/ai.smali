.class public Lam/sunrise/android/calendar/ui/widgets/ai;
.super Landroid/text/style/ImageSpan;
.source "SRImageSpan.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 25
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/ai;->a:I

    .line 26
    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/ai;->b:Ljava/lang/ref/WeakReference;

    .line 51
    const/4 v0, 0x0

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_0
    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ai;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/ai;->b:Ljava/lang/ref/WeakReference;

    .line 61
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ai;->getVerticalAlignment()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 33
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 36
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/ai;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 42
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/ai;->a:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
    return-void
.end method

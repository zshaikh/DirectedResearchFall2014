.class public Lam/sunrise/android/calendar/ui/widgets/schedule/p;
.super Landroid/view/View;
.source "ScheduleViewAllDaySidebar.java"


# instance fields
.field a:I

.field b:I

.field private c:Landroid/graphics/Paint;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->g:Landroid/graphics/Rect;

    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->setWillNotDraw(Z)V

    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    const v2, 0x7f0c00ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    const v2, 0x7f0a00bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    const v1, 0x7f0f0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->d:Ljava/lang/String;

    .line 81
    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->e:I

    .line 82
    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->f:I

    .line 84
    const v1, 0x7f0c0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->a:I

    .line 85
    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->b:I

    .line 87
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->a:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->b:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 59
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->e:I

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 63
    return-void
.end method

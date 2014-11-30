.class public Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;
.super Landroid/view/ViewGroup;
.source "AgendaScheduleSwitcherActionView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:I

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a()V

    .line 43
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a:I

    .line 99
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0, p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 107
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 59
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 60
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 63
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :goto_0
    return v0

    .line 72
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 73
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 74
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getLocationOnScreen([I)V

    .line 75
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 78
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getWidth()I

    move-result v6

    .line 79
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->getHeight()I

    move-result v7

    .line 80
    aget v8, v3, v1

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    .line 81
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 83
    invoke-static {v5, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 84
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v8, v4, :cond_1

    .line 85
    const/16 v4, 0x35

    aget v0, v3, v0

    sub-int v0, v9, v0

    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v0, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 90
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 91
    goto :goto_0

    .line 88
    :cond_1
    const/16 v3, 0x51

    invoke-virtual {v2, v3, v0, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 53
    iget v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->a:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method

.method public setSwitchRotation(F)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 47
    return-void
.end method

.class public Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:I

.field private g:Lam/sunrise/android/calendar/ui/widgets/ah;

.field private h:Lam/sunrise/android/calendar/ui/widgets/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 52
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->a()V

    .line 58
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->a:I

    .line 158
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 81
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->b:F

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->c:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->g:Lam/sunrise/android/calendar/ui/widgets/ah;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->g:Lam/sunrise/android/calendar/ui/widgets/ah;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/widgets/ah;->g()V

    .line 74
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 99
    packed-switch v3, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return v2

    .line 101
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->b:F

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->c:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    .line 103
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 109
    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    if-nez v4, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 111
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->b:F

    sub-float/2addr v4, v5

    .line 112
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 113
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    sub-float v5, v3, v5

    .line 114
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 115
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->a:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    .line 116
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    .line 117
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    .line 118
    iput v7, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 119
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    invoke-interface {v4}, Lam/sunrise/android/calendar/ui/widgets/ag;->h()V

    .line 125
    :cond_1
    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 126
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 127
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    :goto_1
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 128
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->d:F

    .line 130
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    if-eq v4, v0, :cond_2

    .line 131
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->c:F

    .line 134
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->c:F

    sub-float v3, v4, v3

    invoke-interface {v0, v1, v3}, Lam/sunrise/android/calendar/ui/widgets/ag;->a(IF)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 127
    goto :goto_1

    .line 142
    :pswitch_2
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->e:Z

    .line 143
    iput v7, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->f:I

    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/widgets/ag;->i()V

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnDraggingChangeListener(Lam/sunrise/android/calendar/ui/widgets/ag;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->h:Lam/sunrise/android/calendar/ui/widgets/ag;

    .line 66
    return-void
.end method

.method public setOnScrollChangeListener(Lam/sunrise/android/calendar/ui/widgets/ah;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->g:Lam/sunrise/android/calendar/ui/widgets/ah;

    .line 62
    return-void
.end method

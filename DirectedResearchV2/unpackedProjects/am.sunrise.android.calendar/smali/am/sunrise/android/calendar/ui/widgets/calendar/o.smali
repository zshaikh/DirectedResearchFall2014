.class public Lam/sunrise/android/calendar/ui/widgets/calendar/o;
.super Landroid/view/ViewGroup;
.source "CalendarWeekView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/Calendar;

.field private i:Ljava/util/Calendar;

.field private j:I

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a()V

    .line 56
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 194
    const v0, 0x7f0a0039

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->b:I

    .line 195
    const v0, 0x7f0a0038

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->c:I

    .line 197
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 198
    new-instance v2, Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->addView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v2, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setClickable(Z)V

    .line 201
    invoke-virtual {v2, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setFocusable(Z)V

    .line 202
    invoke-virtual {v2, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const v0, 0x7f0c0061

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->e:I

    .line 206
    const v0, 0x7f0a003f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->f:I

    .line 207
    const v0, 0x7f0a003e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->g:I

    .line 208
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/widgets/calendar/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    invoke-static {p1, v1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    new-instance v1, Lc/a/a/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/k;->c()I

    move-result v1

    .line 92
    if-ltz v1, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 95
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 159
    .line 160
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->j:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->b:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v3, v1

    .line 175
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 177
    cmpl-float v0, v3, v1

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->e:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->e:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    return-void

    .line 163
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->j:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v3, v1

    goto :goto_0

    .line 167
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->d:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->j:I

    int-to-float v2, v2

    mul-float v3, v0, v2

    .line 168
    cmpl-float v0, v3, v1

    if-lez v0, :cond_3

    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->b:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->k:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 215
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 117
    move v1, v2

    move v3, v2

    .line 118
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    .line 120
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0, v3, v2, v4, v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->layout(IIII)V

    .line 121
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->d:F

    const/high16 v4, 0x3f000000

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v3, v0

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 105
    int-to-float v0, v1

    const/high16 v2, 0x40e00000

    div-float/2addr v0, v2

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->d:F

    .line 106
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->d:F

    float-to-int v0, v0

    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 108
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->d:F

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->setMeasuredDimension(II)V

    .line 113
    return-void
.end method

.method public setFirstDay(Ljava/util/Calendar;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 126
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 127
    invoke-static {v6}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 129
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->h:Ljava/util/Calendar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->h:Ljava/util/Calendar;

    invoke-static {v6, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    .line 133
    iput-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->h:Ljava/util/Calendar;

    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->j:I

    .line 136
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->i:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move v4, v5

    .line 137
    :goto_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 138
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/calendar/a;

    .line 139
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->j:I

    if-ne v2, v3, :cond_2

    invoke-static {v6, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iput v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->j:I

    .line 141
    invoke-virtual {v1, v7}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setChecked(Z)V

    .line 145
    :goto_2
    invoke-virtual {v1, v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setActivated(Z)V

    .line 146
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setDay(Ljava/util/Calendar;)V

    .line 147
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->add(II)V

    .line 137
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 135
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v1, v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/a;->setChecked(Z)V

    goto :goto_2

    .line 149
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 151
    :cond_4
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->k:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method

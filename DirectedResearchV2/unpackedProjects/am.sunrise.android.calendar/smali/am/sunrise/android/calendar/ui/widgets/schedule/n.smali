.class public Lam/sunrise/android/calendar/ui/widgets/schedule/n;
.super Landroid/view/ViewGroup;
.source "ScheduleViewAdapter.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

.field d:I

.field private e:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->e:Ljava/text/SimpleDateFormat;

    .line 210
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 274
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    .line 275
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    const/high16 v1, 0x42b40000

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->setRotation(F)V

    .line 277
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const v3, 0x80012

    invoke-static {v0, v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->a:Ljava/lang/String;

    .line 262
    :goto_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->b:Z

    .line 264
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->d:I

    .line 266
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-virtual {v0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 267
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->a:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method

.method public getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/q;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 248
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 249
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 251
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->layout(IIII)V

    .line 252
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000

    .line 232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 233
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 235
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->measure(II)V

    .line 238
    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->setMeasuredDimension(II)V

    .line 244
    return-void
.end method

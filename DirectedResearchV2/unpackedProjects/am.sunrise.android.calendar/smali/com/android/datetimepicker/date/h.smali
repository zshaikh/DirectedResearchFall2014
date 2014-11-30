.class public Lcom/android/datetimepicker/date/h;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/date/f;

.field private b:I


# direct methods
.method protected constructor <init>(Lcom/android/datetimepicker/date/f;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget-object v0, v0, Lcom/android/datetimepicker/date/f;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iput p2, p0, Lcom/android/datetimepicker/date/h;->b:I

    .line 298
    iget-object v0, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget-object v0, v0, Lcom/android/datetimepicker/date/f;->g:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xfa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget v3, p0, Lcom/android/datetimepicker/date/h;->b:I

    iput v3, v2, Lcom/android/datetimepicker/date/f;->n:I

    .line 304
    const-string v2, "MonthFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    const-string v2, "MonthFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new scroll state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/datetimepicker/date/h;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget v4, v4, Lcom/android/datetimepicker/date/f;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget v2, p0, Lcom/android/datetimepicker/date/h;->b:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget v2, v2, Lcom/android/datetimepicker/date/f;->m:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget v2, v2, Lcom/android/datetimepicker/date/f;->m:I

    if-eq v2, v0, :cond_6

    .line 312
    iget-object v2, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget v3, p0, Lcom/android/datetimepicker/date/h;->b:I

    iput v3, v2, Lcom/android/datetimepicker/date/f;->m:I

    .line 314
    iget-object v2, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v3, v1

    .line 315
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gtz v4, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 318
    :cond_1
    if-nez v2, :cond_3

    .line 338
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    iget-object v3, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/f;->getFirstVisiblePosition()I

    move-result v3

    .line 323
    iget-object v4, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v4}, Lcom/android/datetimepicker/date/f;->getLastVisiblePosition()I

    move-result v4

    .line 324
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/f;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_4

    .line 325
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 326
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 327
    iget-object v3, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/f;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 328
    if-eqz v0, :cond_2

    sget v0, Lcom/android/datetimepicker/date/f;->a:I

    if-ge v1, v0, :cond_2

    .line 329
    if-le v2, v3, :cond_5

    .line 330
    iget-object v0, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0, v1, v5}, Lcom/android/datetimepicker/date/f;->smoothScrollBy(II)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 324
    goto :goto_2

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0, v2, v5}, Lcom/android/datetimepicker/date/f;->smoothScrollBy(II)V

    goto :goto_1

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/android/datetimepicker/date/h;->a:Lcom/android/datetimepicker/date/f;

    iget v1, p0, Lcom/android/datetimepicker/date/h;->b:I

    iput v1, v0, Lcom/android/datetimepicker/date/f;->m:I

    goto :goto_1
.end method

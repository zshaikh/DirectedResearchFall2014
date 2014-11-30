.class public Lam/sunrise/android/calendar/ui/widgets/schedule/q;
.super Lam/sunrise/android/calendar/ui/widgets/schedule/r;
.source "ScheduleViewAllDays.java"


# instance fields
.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Typeface;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Typeface;

.field private w:I

.field private x:I

.field private y:Landroid/graphics/Rect;

.field private z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->y:Landroid/graphics/Rect;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->z:[F

    .line 70
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->c()V

    .line 71
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 305
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    .line 308
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 311
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->g:F

    .line 313
    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->h:I

    .line 314
    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    .line 316
    const v1, 0x7f0c0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->j:I

    .line 317
    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->k:I

    .line 319
    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->l:I

    .line 321
    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    .line 322
    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    .line 323
    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    .line 325
    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->p:I

    .line 326
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->q:Landroid/graphics/Typeface;

    .line 328
    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->s:I

    .line 331
    const v1, 0x7f0c00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->t:I

    .line 332
    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->u:I

    .line 333
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->v:Landroid/graphics/Typeface;

    .line 335
    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->w:I

    .line 337
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->x:I

    .line 338
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 85
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 87
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->invalidate()V

    .line 89
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->requestLayout()V

    .line 90
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    const v9, 0x3ecccccd

    const/4 v7, 0x1

    .line 176
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->a:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    sub-int/2addr v0, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->j:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 190
    :cond_2
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->c:Z

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 203
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 211
    :goto_2
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    if-eqz v1, :cond_8

    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    :goto_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_9

    move v1, v7

    .line 216
    :goto_4
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 218
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->w:I

    invoke-static {v0, v9}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v0

    .line 220
    iget v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    if-ne v2, v7, :cond_5

    .line 221
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    if-eqz v1, :cond_a

    :goto_5
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 227
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    add-int/2addr v1, v2

    .line 228
    int-to-float v2, v1

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 233
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->s:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 234
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 237
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    add-int/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 241
    int-to-float v0, v0

    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    iget v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    if-ne v0, v7, :cond_b

    .line 244
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 245
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 246
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 252
    :goto_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 205
    :cond_6
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 208
    :cond_7
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->x:I

    goto/16 :goto_2

    .line 211
    :cond_8
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 221
    :cond_a
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->w:I

    goto/16 :goto_5

    .line 249
    :cond_b
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 259
    :cond_c
    iget v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    if-ne v2, v7, :cond_10

    move v2, v0

    .line 265
    :goto_7
    invoke-static {v2, v9}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v3

    .line 266
    invoke-static {v0, v9}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v4

    .line 269
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 272
    iget-boolean v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->B:Z

    if-nez v2, :cond_f

    .line 274
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    if-eqz v1, :cond_e

    move v0, v4

    :cond_e
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    :cond_f
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->B:Z

    if-nez v0, :cond_4

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 282
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 286
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    iget v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    if-ne v1, v7, :cond_11

    .line 290
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    .line 291
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 292
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 298
    :goto_8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 262
    :cond_10
    const v2, 0x3eb851ec

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v2

    goto/16 :goto_7

    .line 295
    :cond_11
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8
.end method

.method public onMeasure(II)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 97
    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->setMeasuredDimension(II)V

    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->h:I

    int-to-float v0, v0

    .line 107
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    int-to-float v8, v1

    .line 108
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v9, v1

    move v1, v2

    move v3, v0

    .line 110
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 112
    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    if-nez v4, :cond_5

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 113
    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v5, "birthday"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v1

    .line 122
    if-ne v1, v6, :cond_2

    .line 123
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    .line 128
    :goto_2
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    add-float v4, v8, v9

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v2, v8, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    int-to-float v2, v2

    sub-float v2, v9, v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->s:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->g:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->u:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->t:I

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->v:Landroid/graphics/Typeface;

    invoke-static {v3, v4, v5, v7}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v1, v2, v6, v3}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00e3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 138
    :cond_3
    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :goto_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-gez v4, :cond_7

    move v4, v6

    .line 144
    :goto_4
    iget-object v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#ff"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 152
    :goto_5
    const v7, 0x3eb851ec

    invoke-static {v5, v7}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v7

    .line 153
    if-eqz v4, :cond_4

    move v5, v7

    :cond_4
    const v4, 0x3e851eb8

    const/high16 v7, -0x41000000

    invoke-static {v5, v4, v7}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IFF)I

    move-result v7

    .line 155
    iget-boolean v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->B:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    .line 156
    :goto_6
    iget-boolean v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->C:Z

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    .line 158
    :goto_7
    iget-object v10, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v11, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    invoke-virtual {v10, v4, v3, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 160
    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->m:I

    int-to-float v5, v5

    sub-float v5, v9, v5

    iget v10, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->o:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v5, v10

    float-to-int v5, v5

    iget v10, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->g:F

    iget v11, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->p:I

    iget-object v12, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->q:Landroid/graphics/Typeface;

    invoke-static {v10, v7, v11, v12}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    .line 167
    :cond_5
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->n:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->h:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 138
    :cond_6
    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    goto/16 :goto_3

    :cond_7
    move v4, v2

    goto :goto_4

    .line 146
    :cond_8
    iget-object v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#ff"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_5

    .line 149
    :cond_9
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->x:I

    goto/16 :goto_5

    :cond_a
    move v4, v8

    .line 155
    goto :goto_6

    .line 156
    :cond_b
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->getMeasuredWidth()I

    move-result v5

    iget v10, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->i:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    goto :goto_7
.end method

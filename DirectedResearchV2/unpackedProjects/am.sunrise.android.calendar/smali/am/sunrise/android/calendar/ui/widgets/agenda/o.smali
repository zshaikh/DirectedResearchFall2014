.class public Lam/sunrise/android/calendar/ui/widgets/agenda/o;
.super Landroid/view/View;
.source "AgendaViewDateSectionHeader.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Typeface;

.field private k:Landroid/graphics/Typeface;

.field private l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

.field private m:Ljava/lang/String;

.field private n:Landroid/text/StaticLayout;

.field private o:Landroid/text/StaticLayout;

.field private final p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->p:Landroid/graphics/Rect;

    .line 69
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a()V

    .line 70
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 132
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->setBackgroundResource(I)V

    .line 134
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a:Landroid/graphics/Paint;

    .line 137
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->b:F

    .line 141
    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->c:I

    .line 143
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->d:I

    .line 145
    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->e:I

    .line 146
    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->f:I

    .line 148
    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->g:I

    .line 149
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->h:I

    .line 150
    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->i:I

    .line 151
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->j:Landroid/graphics/Typeface;

    .line 152
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->a:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->k:Landroid/graphics/Typeface;

    .line 154
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->c:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->o:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->c:I

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    if-eq v0, v1, :cond_4

    .line 168
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/p;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    if-ne v0, v2, :cond_2

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->i:I

    move v8, v0

    .line 170
    :goto_1
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->b:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->g:I

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->k:Landroid/graphics/Typeface;

    :goto_2
    invoke-static {v2, v8, v3, v0}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 173
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->n:Landroid/text/StaticLayout;

    .line 180
    :goto_3
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->b:F

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->g:I

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->j:Landroid/graphics/Typeface;

    invoke-static {v0, v8, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 182
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->m:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->o:Landroid/text/StaticLayout;

    goto :goto_0

    .line 169
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->h:I

    move v8, v0

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->j:Landroid/graphics/Typeface;

    goto :goto_2

    .line 177
    :cond_4
    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->h:I

    goto :goto_3
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/agenda/p;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->m:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->l:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->m:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->n:Landroid/text/StaticLayout;

    .line 88
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->o:Landroid/text/StaticLayout;

    .line 89
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->b()V

    .line 90
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->invalidate()V

    .line 92
    :cond_1
    return-void

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->e:I

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->e:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->d:I

    .line 107
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->n:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->n:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->n:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 113
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->n:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->o:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    int-to-float v0, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->o:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->o:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 123
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 128
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->b()V

    .line 129
    return-void
.end method

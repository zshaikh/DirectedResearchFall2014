.class public Lcom/android/datetimepicker/time/a;
.super Landroid/view/View;
.source "AmPmCirclesView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/a;->j:Z

    .line 68
    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 128
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/a;->k:Z

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    iget v1, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 134
    iget v2, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    int-to-float v3, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 136
    iget v3, p0, Lcom/android/datetimepicker/time/a;->l:I

    if-gt v2, v3, :cond_2

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_2
    iget v2, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 142
    iget v2, p0, Lcom/android/datetimepicker/time/a;->l:I

    if-gt v1, v2, :cond_0

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/a;->j:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "AmPmCirclesView"

    const-string v1, "AmPmCirclesView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->c:I

    .line 78
    sget v1, Lcom/android/datetimepicker/d;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 79
    sget v1, Lcom/android/datetimepicker/d;->ampm_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->d:I

    .line 80
    const/16 v1, 0x33

    iput v1, p0, Lcom/android/datetimepicker/time/a;->b:I

    .line 81
    sget v1, Lcom/android/datetimepicker/i;->sans_serif:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    sget v1, Lcom/android/datetimepicker/i;->circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->f:F

    .line 89
    sget v1, Lcom/android/datetimepicker/i;->ampm_circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->g:F

    .line 91
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 92
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/android/datetimepicker/time/a;->h:Ljava/lang/String;

    .line 93
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/datetimepicker/time/a;->i:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/datetimepicker/time/a;->setAmOrPm(I)V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/time/a;->q:I

    .line 98
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/a;->j:Z

    goto :goto_0
.end method

.method a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    if-eqz p2, :cond_0

    .line 104
    sget v1, Lcom/android/datetimepicker/d;->dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->c:I

    .line 105
    sget v1, Lcom/android/datetimepicker/d;->red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 106
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->d:I

    .line 107
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/datetimepicker/time/a;->b:I

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->c:I

    .line 110
    sget v1, Lcom/android/datetimepicker/d;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 111
    sget v1, Lcom/android/datetimepicker/d;->ampm_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->d:I

    .line 112
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/datetimepicker/time/a;->b:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/16 v0, 0xff

    const/4 v6, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/a;->getWidth()I

    move-result v1

    .line 153
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/a;->j:Z

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/a;->k:Z

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/a;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 159
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/a;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/datetimepicker/time/a;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 162
    int-to-float v4, v3

    iget v5, p0, Lcom/android/datetimepicker/time/a;->g:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    .line 163
    iget v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    .line 164
    iget-object v5, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    iget v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/datetimepicker/time/a;->o:I

    .line 170
    sub-int v2, v1, v3

    iget v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/datetimepicker/time/a;->m:I

    .line 171
    add-int/2addr v1, v3

    iget v2, p0, Lcom/android/datetimepicker/time/a;->l:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/datetimepicker/time/a;->n:I

    .line 173
    iput-boolean v6, p0, Lcom/android/datetimepicker/time/a;->k:Z

    .line 178
    :cond_2
    iget v3, p0, Lcom/android/datetimepicker/time/a;->c:I

    .line 180
    iget v1, p0, Lcom/android/datetimepicker/time/a;->c:I

    .line 182
    iget v2, p0, Lcom/android/datetimepicker/time/a;->p:I

    if-nez v2, :cond_4

    .line 183
    iget v3, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 184
    iget v2, p0, Lcom/android/datetimepicker/time/a;->b:I

    .line 189
    :goto_1
    iget v4, p0, Lcom/android/datetimepicker/time/a;->q:I

    if-nez v4, :cond_5

    .line 190
    iget v3, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 191
    iget v2, p0, Lcom/android/datetimepicker/time/a;->b:I

    .line 198
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v3, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    iget v2, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    iget-object v2, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 203
    iget v0, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/datetimepicker/time/a;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/time/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget v0, p0, Lcom/android/datetimepicker/time/a;->o:I

    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 208
    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->h:Ljava/lang/String;

    iget v2, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 209
    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->i:Ljava/lang/String;

    iget v2, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 185
    :cond_4
    iget v2, p0, Lcom/android/datetimepicker/time/a;->p:I

    if-ne v2, v6, :cond_6

    .line 186
    iget v2, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 187
    iget v1, p0, Lcom/android/datetimepicker/time/a;->b:I

    move v7, v1

    move v1, v2

    move v2, v0

    move v0, v7

    goto :goto_1

    .line 192
    :cond_5
    iget v4, p0, Lcom/android/datetimepicker/time/a;->q:I

    if-ne v4, v6, :cond_3

    .line 193
    iget v1, p0, Lcom/android/datetimepicker/time/a;->e:I

    .line 194
    iget v0, p0, Lcom/android/datetimepicker/time/a;->b:I

    goto :goto_2

    :cond_6
    move v2, v0

    goto/16 :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/android/datetimepicker/time/a;->p:I

    .line 118
    return-void
.end method

.method public setAmOrPmPressed(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/android/datetimepicker/time/a;->q:I

    .line 122
    return-void
.end method

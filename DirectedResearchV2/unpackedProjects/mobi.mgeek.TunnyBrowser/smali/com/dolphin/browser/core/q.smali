.class public Lcom/dolphin/browser/core/q;
.super Ljava/lang/Object;
.source "MyScaleGestureDetector.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/dolphin/browser/core/s;

.field protected c:Z

.field protected d:Landroid/view/MotionEvent;

.field protected e:Landroid/view/MotionEvent;

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:F

.field protected q:J

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/core/s;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 136
    iput-object p1, p0, Lcom/dolphin/browser/core/q;->a:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/dolphin/browser/core/q;->b:Lcom/dolphin/browser/core/s;

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->r:F

    .line 139
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 287
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 295
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 338
    iput-object v2, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 342
    iput-object v2, p0, Lcom/dolphin/browser/core/q;->e:Landroid/view/MotionEvent;

    .line 344
    :cond_1
    iput-boolean v1, p0, Lcom/dolphin/browser/core/q;->u:Z

    .line 345
    iput-boolean v1, p0, Lcom/dolphin/browser/core/q;->c:Z

    .line 346
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const v5, 0xff00

    const/4 v4, 0x2

    const/high16 v10, -0x40800000

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 145
    iget-boolean v3, p0, Lcom/dolphin/browser/core/q;->c:Z

    if-nez v3, :cond_14

    .line 146
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/16 v3, 0x105

    if-ne v2, v3, :cond_9

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v4, :cond_9

    .line 152
    iget-object v2, p0, Lcom/dolphin/browser/core/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 153
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/dolphin/browser/core/q;->r:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/dolphin/browser/core/q;->s:F

    .line 154
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolphin/browser/core/q;->r:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/dolphin/browser/core/q;->t:F

    .line 157
    invoke-virtual {p0}, Lcom/dolphin/browser/core/q;->a()V

    .line 159
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    .line 160
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/dolphin/browser/core/q;->q:J

    .line 162
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/q;->b(Landroid/view/MotionEvent;)V

    .line 168
    iget v2, p0, Lcom/dolphin/browser/core/q;->r:F

    .line 169
    iget v4, p0, Lcom/dolphin/browser/core/q;->s:F

    .line 170
    iget v5, p0, Lcom/dolphin/browser/core/q;->t:F

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 173
    invoke-static {p1, v1}, Lcom/dolphin/browser/core/q;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 174
    invoke-static {p1, v1}, Lcom/dolphin/browser/core/q;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 176
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_1

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_1

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    cmpl-float v3, v6, v5

    if-lez v3, :cond_4

    :cond_1
    move v3, v1

    .line 178
    :goto_0
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_2

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_2

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_2

    cmpl-float v2, v8, v5

    if-lez v2, :cond_5

    :cond_2
    move v2, v1

    .line 181
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 182
    iput v10, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 183
    iput v10, p0, Lcom/dolphin/browser/core/q;->g:F

    .line 184
    iput-boolean v1, p0, Lcom/dolphin/browser/core/q;->u:Z

    .line 279
    :cond_3
    :goto_2
    return v1

    :cond_4
    move v3, v0

    .line 176
    goto :goto_0

    :cond_5
    move v2, v0

    .line 178
    goto :goto_1

    .line 185
    :cond_6
    if-eqz v3, :cond_7

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->g:F

    .line 188
    iput-boolean v1, p0, Lcom/dolphin/browser/core/q;->u:Z

    goto :goto_2

    .line 189
    :cond_7
    if-eqz v2, :cond_8

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->g:F

    .line 192
    iput-boolean v1, p0, Lcom/dolphin/browser/core/q;->u:Z

    goto :goto_2

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->b:Lcom/dolphin/browser/core/s;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/s;->a(Lcom/dolphin/browser/core/q;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/q;->c:Z

    goto :goto_2

    .line 196
    :cond_9
    if-ne v2, v4, :cond_11

    iget-boolean v3, p0, Lcom/dolphin/browser/core/q;->u:Z

    if-eqz v3, :cond_11

    .line 198
    iget v2, p0, Lcom/dolphin/browser/core/q;->r:F

    .line 199
    iget v4, p0, Lcom/dolphin/browser/core/q;->s:F

    .line 200
    iget v5, p0, Lcom/dolphin/browser/core/q;->t:F

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 203
    invoke-static {p1, v1}, Lcom/dolphin/browser/core/q;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 204
    invoke-static {p1, v1}, Lcom/dolphin/browser/core/q;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 206
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_a

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_a

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a

    cmpl-float v3, v6, v5

    if-lez v3, :cond_c

    :cond_a
    move v3, v1

    .line 208
    :goto_3
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_b

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_b

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_b

    cmpl-float v2, v8, v5

    if-lez v2, :cond_d

    :cond_b
    move v2, v1

    .line 211
    :goto_4
    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    .line 212
    iput v10, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 213
    iput v10, p0, Lcom/dolphin/browser/core/q;->g:F

    goto :goto_2

    :cond_c
    move v3, v0

    .line 206
    goto :goto_3

    :cond_d
    move v2, v0

    .line 208
    goto :goto_4

    .line 214
    :cond_e
    if-eqz v3, :cond_f

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 216
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->g:F

    goto/16 :goto_2

    .line 217
    :cond_f
    if-eqz v2, :cond_10

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->g:F

    goto/16 :goto_2

    .line 221
    :cond_10
    iput-boolean v0, p0, Lcom/dolphin/browser/core/q;->u:Z

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->b:Lcom/dolphin/browser/core/s;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/s;->a(Lcom/dolphin/browser/core/q;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/q;->c:Z

    goto/16 :goto_2

    .line 224
    :cond_11
    if-eq v2, v1, :cond_12

    const/16 v3, 0x106

    if-ne v2, v3, :cond_3

    :cond_12
    iget-boolean v3, p0, Lcom/dolphin/browser/core/q;->u:Z

    if-eqz v3, :cond_3

    .line 228
    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_13

    move v0, v1

    .line 230
    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->g:F

    goto/16 :goto_2

    .line 235
    :cond_14
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    .line 263
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/q;->b(Landroid/view/MotionEvent;)V

    .line 268
    const/4 v0, 0x0

    iget v2, p0, Lcom/dolphin/browser/core/q;->o:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    const/high16 v0, 0x3f800000

    iget v2, p0, Lcom/dolphin/browser/core/q;->o:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/dolphin/browser/core/q;->o:F

    iget v2, p0, Lcom/dolphin/browser/core/q;->p:F

    div-float/2addr v0, v2

    const v2, 0x3f2b851f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 269
    :cond_15
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->b:Lcom/dolphin/browser/core/s;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/s;->c(Lcom/dolphin/browser/core/q;)Z

    move-result v0

    .line 271
    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 273
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    goto/16 :goto_2

    .line 239
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/q;->b(Landroid/view/MotionEvent;)V

    .line 242
    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_16

    move v0, v1

    .line 244
    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->g:F

    .line 247
    iget-boolean v0, p0, Lcom/dolphin/browser/core/q;->u:Z

    if-nez v0, :cond_17

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->b:Lcom/dolphin/browser/core/s;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/s;->b(Lcom/dolphin/browser/core/q;)V

    .line 251
    :cond_17
    invoke-virtual {p0}, Lcom/dolphin/browser/core/q;->a()V

    goto/16 :goto_2

    .line 255
    :sswitch_2
    iget-boolean v0, p0, Lcom/dolphin/browser/core/q;->u:Z

    if-nez v0, :cond_18

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->b:Lcom/dolphin/browser/core/s;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/s;->b(Lcom/dolphin/browser/core/q;)V

    .line 259
    :cond_18
    invoke-virtual {p0}, Lcom/dolphin/browser/core/q;->a()V

    goto/16 :goto_2

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x106 -> :sswitch_1
    .end sparse-switch
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000

    const/high16 v1, -0x40800000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 302
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/q;->e:Landroid/view/MotionEvent;

    .line 304
    iput v1, p0, Lcom/dolphin/browser/core/q;->l:F

    .line 305
    iput v1, p0, Lcom/dolphin/browser/core/q;->m:F

    .line 306
    iput v1, p0, Lcom/dolphin/browser/core/q;->n:F

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/core/q;->d:Landroid/view/MotionEvent;

    .line 310
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 311
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 312
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 313
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 314
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 315
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 316
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 317
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 319
    sub-float v1, v3, v1

    .line 320
    sub-float v2, v4, v2

    .line 321
    sub-float v3, v7, v5

    .line 322
    sub-float v4, v8, v6

    .line 323
    iput v1, p0, Lcom/dolphin/browser/core/q;->h:F

    .line 324
    iput v2, p0, Lcom/dolphin/browser/core/q;->i:F

    .line 325
    iput v3, p0, Lcom/dolphin/browser/core/q;->j:F

    .line 326
    iput v4, p0, Lcom/dolphin/browser/core/q;->k:F

    .line 328
    mul-float v1, v3, v11

    add-float/2addr v1, v5

    iput v1, p0, Lcom/dolphin/browser/core/q;->f:F

    .line 329
    mul-float v1, v4, v11

    add-float/2addr v1, v6

    iput v1, p0, Lcom/dolphin/browser/core/q;->g:F

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/dolphin/browser/core/q;->q:J

    .line 331
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/core/q;->o:F

    .line 332
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/core/q;->p:F

    .line 333
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/dolphin/browser/core/q;->c:Z

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/dolphin/browser/core/q;->f:F

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/dolphin/browser/core/q;->g:F

    return v0
.end method

.method public e()F
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/dolphin/browser/core/q;->l:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 394
    iget v0, p0, Lcom/dolphin/browser/core/q;->j:F

    .line 395
    iget v1, p0, Lcom/dolphin/browser/core/q;->k:F

    .line 396
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->l:F

    .line 398
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/core/q;->l:F

    return v0
.end method

.method public f()F
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Lcom/dolphin/browser/core/q;->m:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 409
    iget v0, p0, Lcom/dolphin/browser/core/q;->h:F

    .line 410
    iget v1, p0, Lcom/dolphin/browser/core/q;->i:F

    .line 411
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/dolphin/browser/core/q;->m:F

    .line 413
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/core/q;->m:F

    return v0
.end method

.method public g()F
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Lcom/dolphin/browser/core/q;->n:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/dolphin/browser/core/q;->e()F

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/q;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/core/q;->n:F

    .line 427
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/core/q;->n:F

    return v0
.end method

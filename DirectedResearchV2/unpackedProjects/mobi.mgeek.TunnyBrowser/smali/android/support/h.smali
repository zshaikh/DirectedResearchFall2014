.class public Landroid/support/h;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# instance fields
.field private a:Landroid/view/MotionEvent;

.field private b:Landroid/graphics/Matrix;

.field private c:[F


# direct methods
.method private constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/h;->c:[F

    .line 186
    iput-object p1, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    .line 187
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    .line 188
    return-void
.end method

.method private constructor <init>(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/h;->c:[F

    .line 191
    iput-object p1, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    .line 192
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    .line 193
    return-void
.end method

.method public static a(Landroid/support/h;)Landroid/support/h;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/support/h;

    iget-object v1, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2}, Landroid/support/h;-><init>(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public static a(Landroid/view/MotionEvent;)Landroid/support/h;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Landroid/support/h;

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/h;-><init>(Landroid/view/MotionEvent;)V

    return-object v0
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    move v0, v2

    .line 163
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 113
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    move v0, v2

    .line 123
    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v4, v0, :cond_5

    move v0, v2

    .line 128
    goto :goto_0

    .line 131
    :cond_5
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 132
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    move v0, v2

    .line 133
    :goto_1
    if-ge v0, v4, :cond_7

    .line 134
    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 135
    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v2

    .line 137
    goto :goto_0

    .line 133
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    move v3, v2

    .line 143
    :goto_2
    if-gt v3, v6, :cond_b

    .line 144
    new-array v7, v4, [Landroid/view/MotionEvent$PointerCoords;

    move v0, v2

    .line 146
    :goto_3
    if-ge v0, v4, :cond_9

    .line 147
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, v7, v0

    .line 148
    if-ne v3, v6, :cond_8

    .line 149
    aget-object v1, v7, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 146
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 151
    :cond_8
    aget-object v1, v7, v0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    goto :goto_4

    .line 156
    :cond_9
    if-ne v3, v6, :cond_a

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 161
    :goto_5
    invoke-virtual {p0, v0, v1, v7, v5}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 143
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 159
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    goto :goto_5

    .line 163
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private b(F)F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Landroid/support/h;->c:[F

    .line 384
    aput p1, v0, v3

    .line 385
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 386
    iget-object v1, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 387
    aget v0, v0, v3

    return v0
.end method

.method public static b(Landroid/support/h;)Landroid/support/h;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/support/h;

    iget-object v1, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2}, Landroid/support/h;-><init>(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method private c(F)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 391
    iget-object v0, p0, Landroid/support/h;->c:[F

    .line 392
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 393
    aput p1, v0, v3

    .line 394
    iget-object v1, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 395
    aget v0, v0, v3

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 209
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 216
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/h;->b:Landroid/graphics/Matrix;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 202
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public c(I)F
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/h;->b(F)F

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 244
    return-void
.end method

.method public c(Landroid/support/h;)Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    iget-object v1, p1, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Landroid/support/h;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public d(I)F
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/h;->c(F)F

    move-result v0

    return v0
.end method

.method public d()Landroid/support/h;
    .locals 1

    .prologue
    .line 250
    invoke-static {p0}, Landroid/support/h;->a(Landroid/support/h;)Landroid/support/h;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/h;->b(F)F

    move-result v0

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/h;->c(F)F

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    return v0
.end method

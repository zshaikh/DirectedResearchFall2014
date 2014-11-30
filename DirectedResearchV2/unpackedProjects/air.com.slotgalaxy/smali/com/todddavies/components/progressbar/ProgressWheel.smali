.class public Lcom/todddavies/components/progressbar/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# instance fields
.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private circleBounds:Landroid/graphics/RectF;

.field private circleColor:I

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private delayMillis:I

.field private fullRadius:I

.field isSpinning:Z

.field private layout_height:I

.field private layout_width:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field progress:I

.field private rectBounds:Landroid/graphics/RectF;

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinHandler:Landroid/os/Handler;

.field private spinSpeed:I

.field private splitText:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_height:I

    .line 27
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_width:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->fullRadius:I

    .line 29
    const/16 v0, 0x50

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleRadius:I

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barLength:I

    .line 31
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    .line 32
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    .line 33
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    .line 36
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    .line 37
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    .line 38
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    .line 39
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    .line 42
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barColor:I

    .line 43
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleColor:I

    .line 44
    const v0, -0x55222223

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimColor:I

    .line 45
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textColor:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinSpeed:I

    .line 62
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->delayMillis:I

    .line 63
    new-instance v0, Lcom/todddavies/components/progressbar/ProgressWheel$1;

    invoke-direct {v0, p0}, Lcom/todddavies/components/progressbar/ProgressWheel$1;-><init>(Lcom/todddavies/components/progressbar/ProgressWheel;)V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    .line 81
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 82
    iput-boolean v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->text:Ljava/lang/String;

    .line 86
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_height:I

    .line 27
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_width:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->fullRadius:I

    .line 29
    const/16 v0, 0x50

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleRadius:I

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barLength:I

    .line 31
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    .line 32
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    .line 33
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    .line 36
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    .line 37
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    .line 38
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    .line 39
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    .line 42
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barColor:I

    .line 43
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleColor:I

    .line 44
    const v0, -0x55222223

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimColor:I

    .line 45
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textColor:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinSpeed:I

    .line 62
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->delayMillis:I

    .line 63
    new-instance v0, Lcom/todddavies/components/progressbar/ProgressWheel$1;

    invoke-direct {v0, p0}, Lcom/todddavies/components/progressbar/ProgressWheel$1;-><init>(Lcom/todddavies/components/progressbar/ProgressWheel;)V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    .line 81
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 82
    iput-boolean v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->text:Ljava/lang/String;

    .line 86
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/todddavies/components/progressbar/ProgressWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/todddavies/components/progressbar/ProgressWheel;

    .prologue
    .line 23
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method static synthetic access$100(Lcom/todddavies/components/progressbar/ProgressWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/todddavies/components/progressbar/ProgressWheel;

    .prologue
    .line 23
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->delayMillis:I

    return v0
.end method

.method static synthetic access$200(Lcom/todddavies/components/progressbar/ProgressWheel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/todddavies/components/progressbar/ProgressWheel;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setupBounds()V
    .locals 9

    .prologue
    .line 154
    iget v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_width:I

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    .local v0, "minValue":I
    iget v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_width:I

    sub-int v1, v3, v0

    .line 158
    .local v1, "xOffset":I
    iget v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_height:I

    sub-int v2, v3, v0

    .line 161
    .local v2, "yOffset":I
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getPaddingTop()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    .line 162
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    .line 163
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    .line 164
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getPaddingRight()I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    .line 166
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 170
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    iget v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    iget v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 174
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->fullRadius:I

    .line 175
    iget v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->fullRadius:I

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleRadius:I

    .line 176
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barLength:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->delayMillis:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    return v0
.end method

.method public incrementProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iput-boolean v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    .line 241
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/todddavies/components/progressbar/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x43b40000

    const/4 v4, 0x0

    const/high16 v12, 0x40000000

    .line 185
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 189
    iget-boolean v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    const/16 v2, 0x5a

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barLength:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v12

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v12

    iget v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    const/4 v10, 0x0

    .line 201
    .local v10, "offsetNum":I
    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->splitText:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v11, v6, v7

    .line 202
    .local v11, "s":Ljava/lang/String;
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float v9, v0, v12

    .line 203
    .local v9, "offset":F
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v9

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    add-int/lit8 v10, v10, 0x1

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 193
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "offset":F
    .end local v10    # "offsetNum":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000

    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 208
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "offsetNum":I
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 117
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_width:I

    .line 118
    iput p2, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->layout_height:I

    .line 120
    invoke-direct {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->setupBounds()V

    .line 121
    invoke-direct {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->setupPaints()V

    .line 122
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->invalidate()V

    .line 123
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 215
    const-string v0, "0%"

    invoke-virtual {p0, v0}, Lcom/todddavies/components/progressbar/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel;->invalidate()V

    .line 217
    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .param p1, "barColor"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barColor:I

    .line 344
    return-void
.end method

.method public setBarLength(I)V
    .locals 0
    .param p1, "barLength"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barLength:I

    .line 284
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "barWidth"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->barWidth:I

    .line 292
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0
    .param p1, "circleColor"    # I

    .prologue
    .line 351
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleColor:I

    .line 352
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0
    .param p1, "circleRadius"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->circleRadius:I

    .line 276
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->delayMillis:I

    .line 400
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingBottom:I

    .line 318
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingLeft:I

    .line 327
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingRight:I

    .line 336
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->paddingTop:I

    .line 309
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    iput-boolean v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    .line 251
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 252
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    return-void
.end method

.method public setRimColor(I)V
    .locals 0
    .param p1, "rimColor"    # I

    .prologue
    .line 359
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimColor:I

    .line 360
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 368
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0
    .param p1, "rimWidth"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->rimWidth:I

    .line 392
    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0
    .param p1, "spinSpeed"    # I

    .prologue
    .line 383
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinSpeed:I

    .line 384
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->text:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->text:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 375
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textColor:I

    .line 376
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->textSize:I

    .line 300
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    .line 233
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iput-boolean v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    .line 224
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 225
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    return-void
.end method

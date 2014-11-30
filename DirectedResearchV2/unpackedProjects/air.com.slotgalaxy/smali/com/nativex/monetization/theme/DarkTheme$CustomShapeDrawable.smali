.class public Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "DarkTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/theme/DarkTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomShapeDrawable"
.end annotation


# instance fields
.field private fillColor1:I

.field private fillColor2:I

.field shaderIndex:I

.field shapeIndex:I

.field private stroke:I

.field private final strokePaint:Landroid/graphics/Paint;

.field strokeWidth:Ljava/lang/Float;

.field final synthetic this$0:Lcom/nativex/monetization/theme/DarkTheme;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/theme/DarkTheme;IIIFII)V
    .locals 7
    .param p2, "stroke"    # I
    .param p3, "fillColor1"    # I
    .param p4, "fillColor2"    # I
    .param p5, "strokeWidth"    # F
    .param p6, "shapeIndex"    # I
    .param p7, "shaderIndex"    # I

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/DarkTheme;IIIII)V

    .line 273
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokeWidth:Ljava/lang/Float;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/theme/DarkTheme;IIIFIILcom/nativex/monetization/theme/DarkTheme$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/theme/DarkTheme;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # F
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/nativex/monetization/theme/DarkTheme$1;

    .prologue
    .line 264
    invoke-direct/range {p0 .. p7}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/DarkTheme;IIIFII)V

    return-void
.end method

.method public constructor <init>(Lcom/nativex/monetization/theme/DarkTheme;IIIII)V
    .locals 6
    .param p2, "strokeColor"    # I
    .param p3, "fillColor1"    # I
    .param p4, "fillColor2"    # I
    .param p5, "shapeIndex"    # I
    .param p6, "shaderIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 286
    iput-object p1, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/DarkTheme;

    .line 287
    # invokes: Lcom/nativex/monetization/theme/DarkTheme;->createShape(I)Landroid/graphics/drawable/shapes/Shape;
    invoke-static {p1, p5}, Lcom/nativex/monetization/theme/DarkTheme;->access$100(Lcom/nativex/monetization/theme/DarkTheme;I)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 268
    iput v1, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shaderIndex:I

    .line 269
    iput v1, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shapeIndex:I

    .line 288
    iput p2, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->stroke:I

    .line 289
    iput p3, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->fillColor1:I

    .line 290
    iput p4, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->fillColor2:I

    .line 291
    iput p5, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shapeIndex:I

    .line 292
    iput p6, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shaderIndex:I

    .line 293
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 294
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 296
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 298
    new-instance v0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;-><init>(Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;Lcom/nativex/monetization/theme/DarkTheme;III)V

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 309
    return-void
.end method


# virtual methods
.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokeWidth:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;

    iget-object v1, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/DarkTheme;

    iget v2, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->stroke:I

    iget v3, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->fillColor1:I

    iget v4, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->fillColor2:I

    iget-object v5, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokeWidth:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shapeIndex:I

    iget v7, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shaderIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/DarkTheme;IIIFII)V

    .line 282
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;

    iget-object v1, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/DarkTheme;

    iget v2, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->stroke:I

    iget v3, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->fillColor1:I

    iget v4, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->fillColor2:I

    iget v5, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shapeIndex:I

    iget v6, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->shaderIndex:I

    invoke-direct/range {v0 .. v6}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/DarkTheme;IIIII)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 316
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 317
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 318
    return-void
.end method

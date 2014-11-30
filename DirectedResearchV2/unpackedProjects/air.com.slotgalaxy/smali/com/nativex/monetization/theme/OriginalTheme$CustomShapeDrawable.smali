.class public Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "OriginalTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/theme/OriginalTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomShapeDrawable"
.end annotation


# instance fields
.field private fillColor1:I

.field private fillColor2:I

.field private shader:I

.field shape:Landroid/graphics/drawable/shapes/Shape;

.field private stroke:I

.field private final strokePaint:Landroid/graphics/Paint;

.field strokeWidth:Ljava/lang/Float;

.field final synthetic this$0:Lcom/nativex/monetization/theme/OriginalTheme;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;)V
    .locals 8
    .param p2, "stroke"    # I
    .param p3, "fillColor1"    # I
    .param p4, "fillColor2"    # I
    .param p5, "strokeWidth"    # F
    .param p6, "shape"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 141
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;I)V

    .line 142
    return-void
.end method

.method private constructor <init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;I)V
    .locals 7
    .param p2, "stroke"    # I
    .param p3, "fillColor1"    # I
    .param p4, "fillColor2"    # I
    .param p5, "strokeWidth"    # F
    .param p6, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p7, "shader"    # I

    .prologue
    .line 135
    # invokes: Lcom/nativex/monetization/theme/OriginalTheme;->createShape()Landroid/graphics/drawable/shapes/Shape;
    invoke-static {p1}, Lcom/nativex/monetization/theme/OriginalTheme;->access$100(Lcom/nativex/monetization/theme/OriginalTheme;)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;I)V

    .line 136
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokeWidth:Ljava/lang/Float;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;Lcom/nativex/monetization/theme/OriginalTheme$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/theme/OriginalTheme;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # F
    .param p6, "x5"    # Landroid/graphics/drawable/shapes/Shape;
    .param p7, "x6"    # Lcom/nativex/monetization/theme/OriginalTheme$1;

    .prologue
    .line 127
    invoke-direct/range {p0 .. p6}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method

.method public constructor <init>(Lcom/nativex/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;)V
    .locals 7
    .param p2, "strokeColor"    # I
    .param p3, "fillColor1"    # I
    .param p4, "fillColor2"    # I
    .param p5, "shape"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 154
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/nativex/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;I)V
    .locals 6
    .param p2, "strokeColor"    # I
    .param p3, "fillColor1"    # I
    .param p4, "fillColor2"    # I
    .param p5, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p6, "shader"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/OriginalTheme;

    .line 158
    invoke-direct {p0, p5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 159
    iput p2, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->stroke:I

    .line 160
    iput p3, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->fillColor1:I

    .line 161
    iput p4, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->fillColor2:I

    .line 162
    iput-object p5, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->shape:Landroid/graphics/drawable/shapes/Shape;

    .line 163
    iput p6, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->shader:I

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 165
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    new-instance v0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;-><init>(Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;Lcom/nativex/monetization/theme/OriginalTheme;III)V

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 186
    return-void
.end method


# virtual methods
.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokeWidth:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;

    iget-object v1, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/OriginalTheme;

    iget v2, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->stroke:I

    iget v3, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->fillColor1:I

    iget v4, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->fillColor2:I

    iget-object v5, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokeWidth:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/OriginalTheme;

    # invokes: Lcom/nativex/monetization/theme/OriginalTheme;->createShape()Landroid/graphics/drawable/shapes/Shape;
    invoke-static {v6}, Lcom/nativex/monetization/theme/OriginalTheme;->access$100(Lcom/nativex/monetization/theme/OriginalTheme;)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v6

    iget v7, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->shader:I

    invoke-direct/range {v0 .. v7}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;I)V

    .line 149
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;

    iget-object v1, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/OriginalTheme;

    iget v2, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->stroke:I

    iget v3, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->fillColor1:I

    iget v4, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->fillColor2:I

    iget-object v5, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/OriginalTheme;

    # invokes: Lcom/nativex/monetization/theme/OriginalTheme;->createShape()Landroid/graphics/drawable/shapes/Shape;
    invoke-static {v5}, Lcom/nativex/monetization/theme/OriginalTheme;->access$100(Lcom/nativex/monetization/theme/OriginalTheme;)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v5

    iget v6, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->shader:I

    invoke-direct/range {v0 .. v6}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 195
    return-void
.end method

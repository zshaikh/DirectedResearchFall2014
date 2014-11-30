.class Lcom/facebook/orca/contacts/picker/BasketItemSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BasketItemSpan.java"


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final e:I

.field private final f:Lcom/facebook/orca/contacts/data/PickedUser;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/contacts/data/PickedUser;Lcom/facebook/orca/contacts/picker/BasketItemConstants;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 36
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->f:Lcom/facebook/orca/contacts/data/PickedUser;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->b:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->c:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 42
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->e:I

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/data/PickedUser;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->f:Lcom/facebook/orca/contacts/data/PickedUser;

    return-object v0
.end method

.method a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 99
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->g:Z

    .line 51
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10

    .prologue
    .line 75
    move-object/from16 v0, p9

    check-cast v0, Landroid/text/TextPaint;

    move-object v7, v0

    .line 76
    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->b:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-boolean v2, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->g:Z

    if-eqz v2, :cond_0

    .line 79
    iget v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->e:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 80
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/high16 v3, -0x40000000

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->c:Landroid/graphics/drawable/Drawable;

    .line 84
    :cond_0
    float-to-int v2, p5

    .line 85
    invoke-virtual {v7, p2, p3, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 87
    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget v4, v4, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->a:I

    add-int/2addr v2, v4

    .line 88
    add-int/2addr v3, v2

    .line 90
    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget v4, v4, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->b:I

    add-int v4, v4, p6

    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget v5, v5, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->b:I

    sub-int v5, p8, v5

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 95
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3

    .prologue
    .line 60
    check-cast p1, Landroid/text/TextPaint;

    .line 61
    if-eqz p5, :cond_0

    .line 62
    invoke-virtual {p1, p5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 63
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget v2, v2, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->b:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 64
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget v2, v2, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->b:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 65
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 66
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 68
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->a:Lcom/facebook/orca/contacts/picker/BasketItemConstants;

    iget v1, v1, Lcom/facebook/orca/contacts/picker/BasketItemConstants;->a:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/BasketItemSpan;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

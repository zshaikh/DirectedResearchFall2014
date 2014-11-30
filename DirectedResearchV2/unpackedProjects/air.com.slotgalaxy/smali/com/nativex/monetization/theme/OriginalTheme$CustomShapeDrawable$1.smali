.class Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "OriginalTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIILandroid/graphics/drawable/shapes/Shape;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;

.field final synthetic val$fillColor1:I

.field final synthetic val$fillColor2:I

.field final synthetic val$shader:I

.field final synthetic val$this$0:Lcom/nativex/monetization/theme/OriginalTheme;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;Lcom/nativex/monetization/theme/OriginalTheme;III)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->this$1:Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;

    iput-object p2, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$this$0:Lcom/nativex/monetization/theme/OriginalTheme;

    iput p3, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$shader:I

    iput p4, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iput p5, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor1:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 175
    iget v3, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$shader:I

    packed-switch v3, :pswitch_data_0

    .line 180
    mul-int/lit8 v3, p1, 0x2

    div-int/lit8 v9, v3, 0x3

    .line 181
    .local v9, "gradientX":I
    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v5, v9

    iget v6, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iget v7, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor1:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v3, v2

    move v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .local v1, "gradient":Landroid/graphics/LinearGradient;
    move-object v2, v1

    .line 182
    .end local v1    # "gradient":Landroid/graphics/LinearGradient;
    .end local v9    # "gradientX":I
    :goto_0
    return-object v2

    .line 177
    :pswitch_0
    new-instance v0, Landroid/graphics/RadialGradient;

    div-int/lit8 v2, p1, 0x2

    int-to-float v1, v2

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, p1

    iget v4, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iget v5, p0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable$1;->val$fillColor1:I

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .local v0, "gradientBanner":Landroid/graphics/RadialGradient;
    move-object v2, v0

    .line 178
    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1bb
        :pswitch_0
    .end packed-switch
.end method

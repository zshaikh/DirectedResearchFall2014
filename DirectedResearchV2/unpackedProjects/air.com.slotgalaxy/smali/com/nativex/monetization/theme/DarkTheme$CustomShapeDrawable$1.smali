.class Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "DarkTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/DarkTheme;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;

.field final synthetic val$fillColor1:I

.field final synthetic val$fillColor2:I

.field final synthetic val$shaderIndex:I

.field final synthetic val$this$0:Lcom/nativex/monetization/theme/DarkTheme;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;Lcom/nativex/monetization/theme/DarkTheme;III)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->this$1:Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;

    iput-object p2, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$this$0:Lcom/nativex/monetization/theme/DarkTheme;

    iput p3, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$fillColor1:I

    iput p4, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$fillColor2:I

    iput p5, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$shaderIndex:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->this$1:Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;

    iget-object v0, v0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;->this$0:Lcom/nativex/monetization/theme/DarkTheme;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$fillColor1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$fillColor2:I

    aput v3, v1, v2

    iget v2, p0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable$1;->val$shaderIndex:I

    # invokes: Lcom/nativex/monetization/theme/DarkTheme;->createShader(II[II)Landroid/graphics/Shader;
    invoke-static {v0, p1, p2, v1, v2}, Lcom/nativex/monetization/theme/DarkTheme;->access$200(Lcom/nativex/monetization/theme/DarkTheme;II[II)Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

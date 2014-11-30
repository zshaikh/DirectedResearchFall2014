.class Lcom/nativex/monetization/mraid/MRAIDContainer$2$1;
.super Landroid/view/animation/Animation;
.source "MRAIDContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDContainer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/mraid/MRAIDContainer$2;

.field final synthetic val$containerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2$1;->this$1:Lcom/nativex/monetization/mraid/MRAIDContainer$2;

    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2$1;->val$containerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 871
    const/high16 v1, 0x43000000

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 872
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$2$1;->val$containerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 873
    return-void
.end method

.class Lcom/chartboost/sdk/impl/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/u;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 42
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;)F

    move-result v3

    const/high16 v4, 0x3f800000

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;F)V

    .line 44
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 45
    const/high16 v2, 0x41100000

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;)F

    move-result v2

    const/high16 v3, 0x40000000

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;F)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->invalidate()V

    .line 52
    :cond_1
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->getHeight()I

    move-result v0

    goto :goto_0
.end method

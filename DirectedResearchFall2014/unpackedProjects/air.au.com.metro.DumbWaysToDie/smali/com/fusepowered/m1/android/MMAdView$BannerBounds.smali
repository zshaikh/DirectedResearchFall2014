.class Lcom/fusepowered/m1/android/MMAdView$BannerBounds;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BannerBounds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
    }
.end annotation


# instance fields
.field resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

.field final synthetic this$0:Lcom/fusepowered/m1/android/MMAdView;

.field translationX:I

.field translationY:I


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdView;Lcom/fusepowered/m1/android/DTOResizeParameters;)V
    .locals 1
    .parameter
    .parameter "resizeParams"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    .line 746
    iget v0, p2, Lcom/fusepowered/m1/android/DTOResizeParameters;->offsetX:I

    iput v0, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->translationX:I

    .line 747
    iget v0, p2, Lcom/fusepowered/m1/android/DTOResizeParameters;->offsetY:I

    iput v0, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->translationY:I

    .line 748
    return-void
.end method

.method private calculateBounds(IIII)Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
    .locals 4
    .parameter "screenPos"
    .parameter "offset"
    .parameter "size"
    .parameter "max"

    .prologue
    .line 780
    move v1, p1

    .line 781
    .local v1, newStart:I
    move v0, p3

    .line 782
    .local v0, newSize:I
    add-int v3, p1, p3

    add-int/2addr v3, p2

    if-le v3, p4, :cond_2

    .line 784
    sub-int v3, p4, p3

    add-int v1, v3, p2

    .line 785
    if-gez v1, :cond_1

    .line 787
    const/4 v1, 0x0

    .line 788
    move v0, p4

    .line 798
    :cond_0
    :goto_0
    new-instance v2, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;-><init>(Lcom/fusepowered/m1/android/MMAdView$BannerBounds;Lcom/fusepowered/m1/android/MMAdView$1;)V

    .line 799
    .local v2, result:Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
    sub-int v3, v1, p1

    iput v3, v2, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    .line 800
    iput v0, v2, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->size:I

    .line 801
    return-object v2

    .line 789
    .end local v2           #result:Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
    :cond_1
    add-int v3, v1, p3

    if-le v3, p4, :cond_0

    .line 791
    sub-int v1, p4, p3

    goto :goto_0

    .line 793
    :cond_2
    if-lez p2, :cond_0

    .line 795
    move v1, p2

    goto :goto_0
.end method

.method private calculateXBounds()V
    .locals 6

    .prologue
    .line 758
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 759
    .local v0, loc:[I
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v3, v0}, Lcom/fusepowered/m1/android/MMAdView;->getLocationInWindow([I)V

    .line 760
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 762
    .local v2, xLoc:I
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v3, v3, Lcom/fusepowered/m1/android/DTOResizeParameters;->offsetX:I

    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v4, v4, Lcom/fusepowered/m1/android/DTOResizeParameters;->width:I

    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v5, v5, Lcom/fusepowered/m1/android/DTOResizeParameters;->xMax:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->calculateBounds(IIII)Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v1

    .line 763
    .local v1, resultX:Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v4, v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->size:I

    iput v4, v3, Lcom/fusepowered/m1/android/DTOResizeParameters;->width:I

    .line 764
    iget v3, v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->translationX:I

    .line 765
    return-void
.end method

.method private calculateYBounds()V
    .locals 6

    .prologue
    .line 769
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 770
    .local v0, loc:[I
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v3, v0}, Lcom/fusepowered/m1/android/MMAdView;->getLocationInWindow([I)V

    .line 771
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 773
    .local v2, yLoc:I
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v3, v3, Lcom/fusepowered/m1/android/DTOResizeParameters;->offsetY:I

    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v4, v4, Lcom/fusepowered/m1/android/DTOResizeParameters;->height:I

    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v5, v5, Lcom/fusepowered/m1/android/DTOResizeParameters;->yMax:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->calculateBounds(IIII)Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v1

    .line 774
    .local v1, resultY:Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v4, v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->size:I

    iput v4, v3, Lcom/fusepowered/m1/android/DTOResizeParameters;->height:I

    .line 775
    iget v3, v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput v3, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->translationY:I

    .line 776
    return-void
.end method


# virtual methods
.method calculateOnScreenBounds()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->calculateXBounds()V

    .line 753
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->calculateYBounds()V

    .line 754
    return-void
.end method

.method modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "oldParams"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v0, v0, Lcom/fusepowered/m1/android/DTOResizeParameters;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 813
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    iget v0, v0, Lcom/fusepowered/m1/android/DTOResizeParameters;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 814
    return-object p1
.end method

.class Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdView$BannerBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundsResult"
.end annotation


# instance fields
.field size:I

.field final synthetic this$1:Lcom/fusepowered/m1/android/MMAdView$BannerBounds;

.field translation:I


# direct methods
.method private constructor <init>(Lcom/fusepowered/m1/android/MMAdView$BannerBounds;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;->this$1:Lcom/fusepowered/m1/android/MMAdView$BannerBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m1/android/MMAdView$BannerBounds;Lcom/fusepowered/m1/android/MMAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m1/android/MMAdView$BannerBounds;
    .param p2, "x1"    # Lcom/fusepowered/m1/android/MMAdView$1;

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds$BoundsResult;-><init>(Lcom/fusepowered/m1/android/MMAdView$BannerBounds;)V

    return-void
.end method

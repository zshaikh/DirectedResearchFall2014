.class Lcom/fusepowered/m1/android/MMAdView$1;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMAdView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 249
    .local v0, density:F
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    iget v1, v1, Lcom/fusepowered/m1/android/MMAdView;->width:I

    if-gtz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/fusepowered/m1/android/MMAdView;->width:I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    iget v1, v1, Lcom/fusepowered/m1/android/MMAdView;->height:I

    if-gtz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMAdView$1;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/fusepowered/m1/android/MMAdView;->height:I

    .line 257
    :cond_1
    return-void
.end method

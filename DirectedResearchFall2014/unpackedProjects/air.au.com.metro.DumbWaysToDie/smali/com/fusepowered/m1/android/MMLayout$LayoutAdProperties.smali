.class Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;
.super Lcom/fusepowered/m1/android/AdProperties;
.source "MMLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutAdProperties"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMLayout;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    .line 460
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/android/AdProperties;-><init>(Landroid/content/Context;)V

    .line 461
    return-void
.end method


# virtual methods
.method getAdDpiIndependentHeight()Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 467
    .local v0, density:F
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v1, v2

    .line 468
    .local v1, height:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getAdDpiIndependentWidth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 475
    .local v0, density:F
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v1, v2

    .line 476
    .local v1, width:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

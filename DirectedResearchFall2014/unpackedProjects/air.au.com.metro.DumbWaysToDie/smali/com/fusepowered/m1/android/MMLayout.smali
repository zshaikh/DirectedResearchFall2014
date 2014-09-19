.class abstract Lcom/fusepowered/m1/android/MMLayout;
.super Landroid/widget/RelativeLayout;
.source "MMLayout.java"

# interfaces
.implements Lcom/fusepowered/m1/android/MMAd;
.implements Lcom/fusepowered/m1/android/InlineVideoView$TransparentFix;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMLayout$LayoutAdProperties;,
        Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;,
        Lcom/fusepowered/m1/android/MMLayout$LayoutGestureListener;
    }
.end annotation


# static fields
.field static final BOTTOM_CENTER:Ljava/lang/String; = "bottom-center"

.field static final BOTTOM_LEFT:Ljava/lang/String; = "bottom-left"

.field static final BOTTOM_RIGHT:Ljava/lang/String; = "bottom-right"

.field static final CENTER:Ljava/lang/String; = "center"

.field private static final CLOSE_AREA_SIZE:I = 0x32

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field static final TOP_CENTER:Ljava/lang/String; = "top-center"

.field static final TOP_LEFT:Ljava/lang/String; = "top-left"

.field static final TOP_RIGHT:Ljava/lang/String; = "top-right"

.field private static appInit:Z


# instance fields
.field adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

.field blackView:Landroid/view/View;

.field closeAreaView:Landroid/view/View;

.field private diagnosticDetector:Landroid/view/GestureDetector;

.field goalId:Ljava/lang/String;

.field inlineVideoLayout:Landroid/widget/RelativeLayout;

.field inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

.field isResizing:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->initLayout(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->initLayout(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/MMLayout;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V

    return-void
.end method

.method private initInlineVideoTransparentFix()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 661
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 664
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 666
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 667
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    .line 670
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    .line 671
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 672
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 674
    .local v0, blackViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 676
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 677
    :cond_1
    return-void
.end method

.method private internalSetCloseArea(Ljava/lang/String;)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xb

    const/high16 v5, 0x4248

    const/16 v4, 0xc

    .line 328
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 330
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    .line 332
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 333
    .local v1, density:F
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v2, v5, v1

    float-to-int v2, v2

    mul-float v3, v5, v1

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v0, closeParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "top-right"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    new-instance v3, Lcom/fusepowered/m1/android/MMLayout$2;

    invoke-direct {v3, p0}, Lcom/fusepowered/m1/android/MMLayout$2;-><init>(Lcom/fusepowered/m1/android/MMLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/fusepowered/m1/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .end local v0           #closeParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #density:F
    :cond_1
    return-void

    .line 338
    .restart local v0       #closeParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #density:F
    :cond_2
    const-string v2, "top-center"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 342
    :cond_3
    const-string v2, "bottom-left"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 346
    :cond_4
    const-string v2, "bottom-center"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 348
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 349
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 351
    :cond_5
    const-string v2, "bottom-right"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 353
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 354
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 356
    :cond_6
    const-string v2, "center"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method


# virtual methods
.method public addBlackView()V
    .locals 2

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMLayout;->initInlineVideoTransparentFix()V

    .line 646
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_0
    return-void
.end method

.method addInlineVideo()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 625
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    .line 626
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    const v1, 0x35391858

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 627
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    return-void
.end method

.method adjustVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 558
    new-instance v0, Lcom/fusepowered/m1/android/MMLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m1/android/MMLayout$3;-><init>(Lcom/fusepowered/m1/android/MMLayout;Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method closeAreaTouched()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->isFinishing:Z

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->removeAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 63
    :cond_0
    return-void
.end method

.method fullScreenVideoLayout()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/fusepowered/m1/android/RequestListener;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getListener()Lcom/fusepowered/m1/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/fusepowered/m1/android/MMRequest;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getMMRequest()Lcom/fusepowered/m1/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method initInlineVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, -0x2

    .line 598
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v2, :cond_2

    .line 600
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 601
    .local v1, vg:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 603
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->stopPlayback()V

    .line 607
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    .line 609
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_2
    new-instance v2, Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-direct {v2, p0}, Lcom/fusepowered/m1/android/InlineVideoView;-><init>(Lcom/fusepowered/m1/android/MMLayout;)V

    iput-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    .line 610
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->initInlineVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V

    .line 612
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 613
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 614
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2, v0}, Lcom/fusepowered/m1/android/InlineVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->addInlineVideo()V

    .line 617
    return-void
.end method

.method protected final initLayout(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 75
    :try_start_0
    const-string v1, "Initializing MMLayout."

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->checkPermissions(Landroid/content/Context;)V

    .line 77
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->checkActivity(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/fusepowered/m1/android/MMLayout$LayoutGestureListener;

    invoke-direct {v3, p0}, Lcom/fusepowered/m1/android/MMLayout$LayoutGestureListener;-><init>(Lcom/fusepowered/m1/android/MMLayout;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->diagnosticDetector:Landroid/view/GestureDetector;

    .line 87
    sget-boolean v1, Lcom/fusepowered/m1/android/MMLayout;->appInit:Z

    if-nez v1, :cond_0

    .line 89
    const-string v1, "********** Millennial Device Id *****************"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/fusepowered/m1/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 91
    const-string v1, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com."

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 92
    const-string v1, "*************************************************"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/fusepowered/m1/android/AdCache;->cleanCache(Landroid/content/Context;)V

    .line 94
    sput-boolean v5, Lcom/fusepowered/m1/android/MMLayout;->appInit:Z

    .line 96
    :cond_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "There was an exception initializing the MMAdView. %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method isVideoPlayingStreaming()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlayingStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImplController;->loadUrl(Ljava/lang/String;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    const-string v0, "No network available, can\'t load overlay."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "adUrl"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/MMAdImplController;->loadWebContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const-string v0, "No network available, can\'t load overlay."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 281
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 285
    const-string v0, "MMAd missing id from getId(). Performance will be affected for configuration changes."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/MMLayout;->isResizing:Z

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->assignAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->enableSendingSize()V

    .line 293
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/MMLayout;->isResizing:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->removeAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 257
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    .line 263
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 264
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-wide v3, v5, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    .line 265
    .local v3, tempId:J
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const-string v6, "MMAdImplId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    .line 266
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const-string v6, "MMAdImplLinkedId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestoreInstanceState replacing adImpl-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 268
    const-string v5, "inlineVideoViewGson"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, gsonInline:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 271
    invoke-static {v2}, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->getInlineParams(Ljava/lang/String;)Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/MMLayout;->initInlineVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V

    .line 273
    :cond_0
    const-string v5, "super"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 274
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState saving - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    const-string v1, "MMAdImplId"

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-wide v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 238
    const-string v1, "MMAdImplLinkedId"

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-wide v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 239
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    iget-object v1, v1, Lcom/fusepowered/m1/android/InlineVideoView;->inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 243
    :cond_0
    const-string v1, "inlineVideoViewGson"

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->getGsonState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->diagnosticDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "windowInFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 160
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 161
    if-eqz p1, :cond_6

    .line 163
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->resumeVideo()V

    .line 175
    :cond_0
    :goto_0
    const-string v2, "Window Focus Changed. For %s, Window in focus?: %b Controllers: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/m1/android/MMAdImplController;->controllersToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v2, :cond_1

    .line 178
    if-eqz p1, :cond_7

    .line 180
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->onResumeWebView()V

    .line 181
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidViewableVisible()V

    .line 190
    :cond_1
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 193
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v2, :cond_4

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iput-boolean v6, v2, Lcom/fusepowered/m1/android/MMAdImpl;->isFinishing:Z

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window Focus Changed.removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidHidden()V

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMAdImplController;->removeAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 203
    .end local v0           #activity:Landroid/app/Activity;
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v1

    .line 204
    .local v1, audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-eqz v1, :cond_5

    .line 206
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->stop()Lcom/fusepowered/m1/android/MMJSResponse;

    .line 209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_5
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->getInstance()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->stopRecording()V

    .line 212
    return-void

    .line 170
    .end local v1           #audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    :cond_6
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InlineVideoView;->pauseVideo()V

    goto/16 :goto_0

    .line 185
    :cond_7
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->releaseSpeechKit()Z

    .line 186
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->setMraidViewableHidden()V

    .line 187
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v2, v2, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->onPauseWebView()V

    goto/16 :goto_1

    .line 209
    .restart local v1       #audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method pauseVideo()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->pauseVideo()V

    .line 582
    :cond_0
    return-void
.end method

.method playVideo()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->playVideo()V

    .line 554
    :cond_0
    return-void
.end method

.method public removeBlackView()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->blackView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    :cond_0
    return-void
.end method

.method removeCloseTouchDelegate()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->closeAreaView:Landroid/view/View;

    .line 307
    :cond_0
    return-void
.end method

.method removeVideo()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->removeVideo()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    .line 548
    :cond_0
    return-void
.end method

.method repositionVideoLayout()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method resumeVideo()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->resumeVideo()V

    .line 588
    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1
    .parameter "apid"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setApid(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method setCloseArea(Ljava/lang/String;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 313
    new-instance v0, Lcom/fusepowered/m1/android/MMLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m1/android/MMLayout$1;-><init>(Lcom/fusepowered/m1/android/MMLayout;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMLayout;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .parameter "ignoresDensityScaling"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

    .line 508
    return-void
.end method

.method public setListener(Lcom/fusepowered/m1/android/RequestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setListener(Lcom/fusepowered/m1/android/RequestListener;)V

    .line 496
    return-void
.end method

.method public setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImpl;->setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V

    .line 520
    return-void
.end method

.method setMediaPlaybackRequiresUserGesture(Z)V
    .locals 6
    .parameter "requiresGesture"

    .prologue
    .line 146
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setMediaPlaybackRequiresUserGesture"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setVideoSource(Ljava/lang/String;)V
    .locals 1
    .parameter "streamVideoURI"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/InlineVideoView;->setVideoSource(Ljava/lang/String;)V

    .line 594
    :cond_0
    return-void
.end method

.method stopVideo()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/InlineVideoView;->stopVideo()V

    .line 576
    :cond_0
    return-void
.end method

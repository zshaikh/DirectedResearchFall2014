.class Lcom/fusepowered/m1/android/AdViewOverlayView;
.super Lcom/fusepowered/m1/android/MMLayout;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$CloseTopDrawable;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayWebViewClientListener;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$SavedState;,
        Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;
    }
.end annotation


# instance fields
.field private mraidCloseButton:Landroid/widget/Button;

.field mraidCloseDrawable:Lcom/fusepowered/m1/android/AdViewOverlayView$CloseTopDrawable;

.field overlayActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/AdViewOverlayActivity;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDone:Z

.field settings:Lcom/fusepowered/m1/android/OverlaySettings;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/AdViewOverlayActivity;Lcom/fusepowered/m1/android/OverlaySettings;)V
    .locals 10
    .parameter "overlayActivity"
    .parameter "settingsIn"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 55
    iget-object v4, p1, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {p0, v4}, Lcom/fusepowered/m1/android/MMLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    .line 57
    new-instance v4, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    iget-object v5, p1, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v4, p0, v5}, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    .line 58
    const/16 v4, 0x3ad6

    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setId(I)V

    .line 59
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const-string v5, "i"

    iput-object v5, v4, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, nonConfigurationInstance:Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;
    iget-object v4, p1, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 64
    iget-object v4, p1, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #nonConfigurationInstance:Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;
    check-cast v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;

    .line 65
    .restart local v0       #nonConfigurationInstance:Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;
    if-eqz v0, :cond_8

    .line 67
    iget-boolean v4, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    iput-boolean v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressDone:Z

    .line 68
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v5, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v5, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    .line 69
    iget-object v4, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    .line 70
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring configurationinstance w/ controller= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 78
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .local v2, scale:F
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget v4, v4, Lcom/fusepowered/m1/android/OverlaySettings;->height:I

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget v4, v4, Lcom/fusepowered/m1/android/OverlaySettings;->width:I

    if-eqz v4, :cond_9

    .line 82
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget v4, v4, Lcom/fusepowered/m1/android/OverlaySettings;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget v5, v5, Lcom/fusepowered/m1/android/OverlaySettings;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const/high16 v4, 0x3d80

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget v5, v5, Lcom/fusepowered/m1/android/OverlaySettings;->shouldResizeOverlay:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 92
    .local v3, scaledPadding:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setPadding(IIII)V

    .line 94
    iget-object v4, p1, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {p0, v4, v2}, Lcom/fusepowered/m1/android/AdViewOverlayView;->initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    .line 96
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->hasExpandUrl()Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-wide v5, v5, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    iput-wide v5, v4, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMAdImplController;->assignAdViewController(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 102
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 103
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    .line 104
    :cond_3
    iget-boolean v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressDone:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->isFromInterstitial()Z

    move-result v4

    if-nez v4, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->initProgressBar()V

    .line 108
    :cond_4
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->getIsTransparent()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 110
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v4, :cond_5

    .line 111
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v4, v9}, Lcom/fusepowered/m1/android/MMWebView;->setBackgroundColor(I)V

    .line 112
    :cond_5
    invoke-virtual {p0, v9}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setBackgroundColor(I)V

    .line 120
    :goto_2
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->enableHardwareAccel()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v4, :cond_6

    .line 122
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMWebView;->enableHardwareAcceleration()V

    .line 123
    :cond_6
    if-nez v0, :cond_7

    .line 124
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->animateView()V

    .line 125
    :cond_7
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->getUseCustomClose()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setUseCustomClose(Z)V

    .line 126
    return-void

    .line 75
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #scale:F
    .end local v3           #scaledPadding:Ljava/lang/Integer;
    :cond_8
    const-string v4, "Null configurationinstance "

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    .restart local v2       #scale:F
    :cond_9
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_1

    .line 116
    .restart local v3       #scaledPadding:Ljava/lang/Integer;
    :cond_a
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v4, :cond_b

    .line 117
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v4, v8}, Lcom/fusepowered/m1/android/MMWebView;->setBackgroundColor(I)V

    .line 118
    :cond_b
    invoke-virtual {p0, v8}, Lcom/fusepowered/m1/android/AdViewOverlayView;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method static synthetic access$200(Lcom/fusepowered/m1/android/AdViewOverlayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->removeProgressBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/fusepowered/m1/android/AdViewOverlayView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fusepowered/m1/android/AdViewOverlayView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/m1/android/AdViewOverlayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->initProgressBar()V

    return-void
.end method

.method private animateView()V
    .locals 11

    .prologue
    const v4, 0x3f666666

    const/high16 v8, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    iget-object v3, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v3

    const-string v5, "slideup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 185
    .local v0, animation:Landroid/view/animation/Animation;
    const-string v1, "Translate up"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/OverlaySettings;->getTransitionDurationInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v3

    const-string v5, "slidedown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 190
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-string v1, "Translate down"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "explode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd

    const v5, 0x3dcccccd

    move-object v2, v0

    move v6, v4

    move v7, v1

    move v9, v1

    move v10, v8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 195
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-string v1, "Explode"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCloseAreaParams(F)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .parameter "scale"

    .prologue
    .line 166
    const/high16 v2, 0x4248

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 167
    .local v1, closeHeight:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v0, closeButParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    return-object v0
.end method

.method private initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;
    .locals 7
    .parameter "context"
    .parameter "scale"

    .prologue
    .line 146
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, mraidCloseButton:Landroid/widget/Button;
    const/16 v0, 0x12d

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V

    .line 148
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseTopDrawable;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseTopDrawable;-><init>(ZF)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseDrawable:Lcom/fusepowered/m1/android/AdViewOverlayView$CloseTopDrawable;

    .line 149
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$1;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayView;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0, p2}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getCloseAreaParams(F)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 159
    .local v6, closeButParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;

    iget v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m1/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;-><init>(Landroid/widget/Button;IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-object v1
.end method

.method private initProgressBar()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 130
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;

    .line 131
    .local v0, overlayActivity:Lcom/fusepowered/m1/android/AdViewOverlayActivity;
    if-eqz v0, :cond_0

    .line 133
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, v0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    .line 134
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 135
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v1, progParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .end local v1           #progParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private removeProgressBar()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressDone:Z

    .line 277
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method addInlineVideo()V
    .locals 0

    .prologue
    .line 553
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->addInlineVideo()V

    .line 554
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 555
    return-void
.end method

.method attachWebViewToLink()Z
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMAdImplController;->attachWebViewFromOverlay(Lcom/fusepowered/m1/android/MMAdImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bringMraidCloseToFront()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    .line 561
    :cond_0
    return-void
.end method

.method closeAreaTouched()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$2;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method finishOverlayWithAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 369
    const-string v2, "Ad overlay closed"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 371
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 375
    .local v1, animation:Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;

    invoke-direct {v2, p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 376
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 377
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 378
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 379
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 380
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method fullScreenVideoLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 574
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 577
    return-void
.end method

.method getNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving getNonConfigurationInstance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->removeFromParent()V

    .line 264
    :cond_0
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayView$1;)V

    .line 265
    .local v0, nonConfigurationInstance:Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;
    iget-boolean v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->progressDone:Z

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    .line 266
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v1, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    .line 267
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iput-object v1, v0, Lcom/fusepowered/m1/android/AdViewOverlayView$NonConfigurationInstance;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    .line 269
    return-object v0
.end method

.method getWebContent(Ljava/lang/String;)V
    .locals 2
    .parameter "urlToLoad"

    .prologue
    .line 590
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayView;Ljava/lang/String;)V

    .line 591
    .local v0, task:Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 592
    return-void
.end method

.method injectJS(Ljava/lang/String;)V
    .locals 1
    .parameter "jsString"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMAdImplController;->loadUrl(Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method inlineConfigChange()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 586
    :cond_0
    return-void
.end method

.method killWebView()V
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->releaseSpeechKit()Z

    .line 696
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->clearFocus()V

    .line 699
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->setMraidViewableHidden()V

    .line 700
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->onPauseWebView()V

    .line 702
    :cond_0
    return-void
.end method

.method removeSelfAndAll()V
    .locals 2

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->removeAllViews()V

    .line 686
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 687
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 689
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 691
    :cond_0
    return-void
.end method

.method repositionVideoLayout()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    .line 567
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineVideoView:Lcom/fusepowered/m1/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->bringMraidCloseToFront()V

    .line 569
    return-void
.end method

.method setUseCustomClose(Z)V
    .locals 2
    .parameter "isHideDrawable"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/OverlaySettings;->setUseCustomClose(Z)V

    .line 547
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    return-void

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseDrawable:Lcom/fusepowered/m1/android/AdViewOverlayView$CloseTopDrawable;

    goto :goto_0
.end method

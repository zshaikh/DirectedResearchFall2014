.class Lcom/fusepowered/m1/android/AdViewOverlayActivity;
.super Lcom/fusepowered/m1/android/MMBaseActivity;
.source "AdViewOverlayActivity.java"


# instance fields
.field private adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

.field hasFocus:Z

.field isPaused:Z

.field private settings:Lcom/fusepowered/m1/android/OverlaySettings;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;-><init>()V

    return-void
.end method

.method private lockOrientation()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 146
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 151
    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setRequestedOrientation(Ljava/lang/String;)V
    .locals 1
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->attachWebViewToLink()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->killWebView()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->removeSelfAndAll()V

    .line 185
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 186
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;->finish()V

    .line 187
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->inlineConfigChange()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 30
    const v4, 0x1030010

    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setTheme(I)V

    .line 31
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v6}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 42
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "settings"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/m1/android/OverlaySettings;

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    .line 46
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    if-nez v4, :cond_0

    .line 47
    new-instance v4, Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-direct {v4}, Lcom/fusepowered/m1/android/OverlaySettings;-><init>()V

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    .line 48
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->log()V

    .line 49
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-object v4, v4, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-object v4, v4, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-boolean v4, v4, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    if-eqz v4, :cond_5

    .line 53
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->unlockScreenOrientation()V

    .line 57
    :goto_0
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 60
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 62
    const-string v4, "Path: %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "allowForCenteringModalsLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    const v4, 0x34c60db9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v4, Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-direct {v4, p0, v5}, Lcom/fusepowered/m1/android/AdViewOverlayView;-><init>(Lcom/fusepowered/m1/android/AdViewOverlayActivity;Lcom/fusepowered/m1/android/OverlaySettings;)V

    iput-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 73
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 79
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v4, v4, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v4, v4, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v4, v4, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v4, :cond_3

    .line 82
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v4, v4, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMWebView;->setMraidExpanded()V

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->hasExpandUrl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-object v5, v5, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getWebContent(Ljava/lang/String;)V

    .line 94
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 95
    return-void

    .line 55
    .end local v0    # "allowForCenteringModalsLayout":Landroid/widget/RelativeLayout;
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->lockOrientation()V

    goto/16 :goto_0

    .line 88
    .restart local v0    # "allowForCenteringModalsLayout":Landroid/widget/RelativeLayout;
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/OverlaySettings;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 90
    iget-object v4, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-object v5, v5, Lcom/fusepowered/m1/android/OverlaySettings;->content:Ljava/lang/String;

    iget-object v6, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iget-object v6, v6, Lcom/fusepowered/m1/android/OverlaySettings;->adUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/m1/android/AdViewOverlayView;->loadWebContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;->onDestroy()V

    .line 249
    const-string v0, "Overlay onDestroy"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 282
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->finishOverlayWithAnimation()V

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fusepowered/m1/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->isPaused:Z

    .line 225
    const-string v1, "Overlay onPause"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 227
    .local v0, "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_0

    .line 229
    monitor-enter p0

    .line 231
    :try_start_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->stop()Lcom/fusepowered/m1/android/MMJSResponse;

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->getInstance()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->stopRecording()V

    .line 235
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->pauseVideo()V

    .line 238
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v1, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v1, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v1, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v1, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->onPauseWebView()V

    .line 241
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setResult(I)V

    .line 242
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;->onPause()V

    .line 243
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 276
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->isPaused:Z

    .line 194
    const-string v0, "Overlay onResume"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    if-eqz v0, :cond_1

    .line 197
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->hasFocus:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->resumeVideo()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->addBlackView()V

    .line 200
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->onResumeWebView()V

    .line 203
    :cond_1
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;->onResume()V

    .line 204
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    const-string v0, "adViewId"

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMBaseActivity;->onStop()V

    .line 256
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    .line 213
    iput-boolean p1, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->hasFocus:Z

    .line 214
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->isPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/fusepowered/m1/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->resumeVideo()V

    .line 218
    :cond_0
    return-void
.end method

.method setAllowOrientationChange(Z)V
    .locals 1
    .param p1, "allowOrientationChange"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->unlockScreenOrientation()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->lockOrientation()V

    goto :goto_0
.end method

.method setRequestedOrientationLandscape()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    const-string v1, "landscape"

    iput-object v1, v0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    iput-boolean v2, v0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 168
    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 169
    return-void
.end method

.method setRequestedOrientationPortrait()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    const-string v1, "portrait"

    iput-object v1, v0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 162
    return-void
.end method

.method unlockScreenOrientation()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 132
    return-void
.end method

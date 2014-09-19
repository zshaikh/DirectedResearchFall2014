.class public Lcom/fusepowered/a1/view/ApplifierImpactMainView;
.super Landroid/widget/RelativeLayout;
.source "ApplifierImpactMainView.java"

# interfaces
.implements Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;
.implements Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;,
        Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState:[I = null

.field private static final FILL_PARENT:I = -0x1


# instance fields
.field private _currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

.field private _listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

.field public videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

.field public webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->values()[Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 41
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    .line 44
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    .line 45
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 57
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 41
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    .line 44
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    .line 45
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 62
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 41
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    .line 44
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    .line 45
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 68
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 41
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    .line 44
    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    .line 45
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 50
    iput-object p2, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    .line 51
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->init()V

    .line 52
    return-void
.end method

.method private createVideoPlayerView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 172
    new-instance v0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;-><init>(Landroid/content/Context;Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;)V

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 173
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setId(I)V

    .line 175
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->addView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 179
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v2, Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->instance:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-direct {v2, v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;-><init>(Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;-><init>(Landroid/app/Activity;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    .line 180
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setId(I)V

    .line 181
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method

.method private destroyVideoPlayerView()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "Destroying player"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->clearVideoPlayer()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->removeFromMainView(Landroid/view/View;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    .line 169
    return-void
.end method

.method private focusToView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 201
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 156
    const-string v0, "Init"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->setId(I)V

    .line 158
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->createWebView()V

    .line 159
    return-void
.end method

.method private removeFromMainView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private sendActionToListener(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_listener:Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;->onMainViewAction(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public afterVideoPlaybackOperations()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->destroyVideoPlayerView()V

    .line 133
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->setViewState(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 134
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 135
    return-void
.end method

.method public closeImpact(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->destroyVideoPlayerView()V

    .line 99
    const/4 v1, 0x0

    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 100
    return-void
.end method

.method public getViewState()Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 150
    invoke-direct {p0, p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public onBackButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    :cond_0
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_1

    .line 220
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-nez v0, :cond_3

    .line 223
    :cond_2
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->BackButtonPressed:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->sendActionToListener(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_3
    const-string v0, "Prevented back-button"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 279
    const-string v2, "onCompletion"

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->afterVideoPlaybackOperations()V

    .line 281
    sget-object v2, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->End:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {p0, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->onEventPositionReached(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "campaignId"

    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v3, "videoCompleted"

    invoke-virtual {v2, v3, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 293
    sget-object v2, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoEnd:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->sendActionToListener(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 294
    return-void

    .line 288
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 289
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Could not create JSON"

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onEventPositionReached(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 273
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignStatus()Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0, v1, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->sendCampaignViewProgress(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)Z

    .line 275
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 145
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    invoke-virtual {p0, p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->onBackButtonClicked(Landroid/view/View;)V

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoPlaybackError()V
    .locals 7

    .prologue
    const-string v4, "textKey"

    .line 297
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->afterVideoPlaybackOperations()V

    .line 299
    const-string v4, "onVideoPlaybackError"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    const-string v5, "videoError"

    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->sendAnalyticsRequest(Ljava/lang/String;Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;)V

    .line 302
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v1, errorParams:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 304
    .local v3, spinnerParams:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 307
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "textKey"

    const-string v5, "videoPlaybackError"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v4, "textKey"

    const-string v5, "buffering"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v4, "campaignId"

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v5}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "completed"

    invoke-virtual {v4, v5, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 317
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "showError"

    invoke-virtual {v4, v5, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 318
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "videoCompleted"

    invoke-virtual {v4, v5, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 319
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "hideSpinner"

    invoke-virtual {v4, v5, v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 321
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    sget-object v5, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v4, v5}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->setCampaignStatus(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V

    .line 322
    const/4 v4, 0x0

    sput-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 323
    return-void

    .line 311
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoPlaybackStarted()V
    .locals 7

    .prologue
    const-string v6, "useDeviceOrientationForVideo"

    .line 233
    const-string v4, "onVideoPlaybackStarted"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .local v1, params:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 239
    .local v2, spinnerParams:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "campaignId"

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v5}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v4, "textKey"

    const-string v5, "buffering"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    sget-object v4, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoStart:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v4}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->sendActionToListener(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 247
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {p0, v4}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->bringChildToFront(Landroid/view/View;)V

    .line 250
    const/4 v3, 0x6

    .line 252
    .local v3, targetOrientation:I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 253
    const/4 v3, 0x0

    .line 255
    :cond_0
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 256
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v5, "useDeviceOrientationForVideo"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v5, "useDeviceOrientationForVideo"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 261
    const/4 v3, -0x1

    .line 264
    :cond_1
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 266
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-direct {p0, v4}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    .line 267
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "hideSpinner"

    invoke-virtual {v4, v5, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 268
    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v5, "completed"

    invoke-virtual {v4, v5, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 269
    return-void

    .line 242
    .end local v3           #targetOrientation:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 243
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoSkip()V
    .locals 6

    .prologue
    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    .restart local v2       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    iget-object v4, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v4}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getBufferingDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v3, "eventValue"

    const-string v4, "skip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v3, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoAbort(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 332
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->afterVideoPlaybackOperations()V

    .line 333
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "campaignId"

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    iget-object v3, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v4, "videoCompleted"

    invoke-virtual {v3, v4, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 343
    sget-object v3, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v3}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->sendActionToListener(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 344
    return-void

    .line 338
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Could not create JSON"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onWebAppLoaded()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->initWebApp(Lorg/json/JSONObject;)V

    .line 350
    return-void
.end method

.method public openImpact(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "view"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 75
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fusepowered.a1.A1InterstitialActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 78
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_1
    sget-object v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->setViewState(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_2
    const-string v0, "Cannot open, wrong activity"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setViewState(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, -0x1

    .line 103
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v0, p1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput-object p1, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->_currentState:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 106
    invoke-static {}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->removeFromMainView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->createVideoPlayerView()V

    .line 115
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->bringChildToFront(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

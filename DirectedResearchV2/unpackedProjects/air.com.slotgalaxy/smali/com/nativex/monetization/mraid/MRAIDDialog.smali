.class public Lcom/nativex/monetization/mraid/MRAIDDialog;
.super Landroid/app/Dialog;
.source "MRAIDDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDDialog$RootGroup;
    }
.end annotation


# static fields
.field private static final MAX_ATTACH_RETRIES:I = 0x14


# instance fields
.field private attachCount:I

.field private container:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field private detachDetector:Landroid/view/View;

.field private dismissed:Z

.field private display:Landroid/view/Display;

.field onDismiss:Landroid/content/DialogInterface$OnDismissListener;

.field private rootGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    .line 22
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismissed:Z

    .line 113
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDDialog$3;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDDialog$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDDialog;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->onDismiss:Landroid/content/DialogInterface$OnDismissListener;

    .line 40
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialog;->init(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    .line 22
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismissed:Z

    .line 113
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDDialog$3;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDDialog$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDDialog;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->onDismiss:Landroid/content/DialogInterface$OnDismissListener;

    .line 35
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialog;->init(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 21
    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    .line 22
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismissed:Z

    .line 113
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDDialog$3;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDDialog$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDDialog;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->onDismiss:Landroid/content/DialogInterface$OnDismissListener;

    .line 30
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialog;->init(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/mraid/MRAIDDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDDialog;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setDialogContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/nativex/monetization/mraid/MRAIDDialog;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nativex/monetization/mraid/MRAIDDialog;Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDDialog;
    .param p1, "x1"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nativex/monetization/mraid/MRAIDDialog;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->display:Landroid/view/Display;

    return-object v0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 49
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 50
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->display:Landroid/view/Display;

    .line 54
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1030000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setDetachDetectorView(Landroid/app/Activity;)V

    .line 60
    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDDialog$RootGroup;

    invoke-direct {v1, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialog$RootGroup;-><init>(Lcom/nativex/monetization/mraid/MRAIDDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->rootGroup:Landroid/view/ViewGroup;

    .line 61
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->rootGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setContentView(Landroid/view/View;)V

    .line 62
    const-string v1, "TEST"

    const-string v2, "Dialog created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private setDetachDetectorView(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 67
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialog$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 74
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 76
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->onDismiss:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    return-void
.end method

.method private setDialogContent()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "TEST"

    .line 88
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const-string v1, "Failed to attach the ad to the view hierarchy."

    invoke-virtual {v0, v1, v2, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 94
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Failed to attach the ad to the view hierarchy"

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    .line 99
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDContainer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDDialog$2;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDDialog$2;-><init>(Lcom/nativex/monetization/mraid/MRAIDDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    const-string v0, "TEST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The WebView is still attached to a parent. Retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->attachCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->rootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const-string v0, "TEST"

    const-string v0, "The WebView is ready and the dialog is shown"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismissed:Z

    if-nez v0, :cond_2

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismissed:Z

    .line 145
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->dialogDismissed()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->detachDetector:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_1
    :goto_0
    :try_start_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    const-string v0, "TEST"

    const-string v1, "Dialog dismiss called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_2
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 138
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->dismiss()V

    .line 139
    return-void
.end method

.method public setContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 84
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDDialog;->setDialogContent()V

    .line 85
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 130
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

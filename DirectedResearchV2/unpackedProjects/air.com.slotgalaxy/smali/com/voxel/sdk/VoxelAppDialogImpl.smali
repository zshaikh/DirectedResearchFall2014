.class public Lcom/voxel/sdk/VoxelAppDialogImpl;
.super Landroid/app/Dialog;
.source "VoxelAppDialogImpl.java"

# interfaces
.implements Lcom/voxel/sdk/SessionListener;
.implements Lcom/voxel/sdk/ad/VoxelAppDialog;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdTimer:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

.field private mAppInfo:Lcom/voxel/api/model/AppInfo;

.field private mAppView:Lcom/voxel/sdk/view/AppDialogView;

.field private mBackgroundView:Landroid/widget/RelativeLayout;

.field private mBlurredPreroll:Z

.field private mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

.field private mDelayEnableCloseRunnable:Ljava/lang/Runnable;

.field private mLandscape:Z

.field mPrerollOverlay:Lcom/voxel/sdk/PrerollOverlayView;

.field private mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

.field private mSessionStarted:Z

.field private mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 290
    new-instance v1, Lcom/voxel/sdk/VoxelAppDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/voxel/sdk/VoxelAppDialogImpl$4;-><init>(Lcom/voxel/sdk/VoxelAppDialogImpl;)V

    iput-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mDelayEnableCloseRunnable:Ljava/lang/Runnable;

    .line 58
    iput-boolean v4, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBlurredPreroll:Z

    .line 59
    iput-boolean v4, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mSessionStarted:Z

    .line 62
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#A0000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/voxel/sdk/VoxelAppDialogImpl;->setCanceledOnTouchOutside(Z)V

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v0, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_0

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    .line 72
    new-instance v1, Lcom/voxel/sdk/view/AppDialogView;

    iget-boolean v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    invoke-direct {v1, p1, v2}, Lcom/voxel/sdk/view/AppDialogView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    .line 73
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v1}, Lcom/voxel/sdk/view/AppDialogView;->getCloseButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/voxel/sdk/VoxelAppDialogImpl$1;

    invoke-direct {v2, p0}, Lcom/voxel/sdk/VoxelAppDialogImpl$1;-><init>(Lcom/voxel/sdk/VoxelAppDialogImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v1}, Lcom/voxel/sdk/view/AppDialogView;->getInstallButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/voxel/sdk/VoxelAppDialogImpl$2;

    invoke-direct {v2, p0}, Lcom/voxel/sdk/VoxelAppDialogImpl$2;-><init>(Lcom/voxel/sdk/VoxelAppDialogImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v1}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/voxel/sdk/VoxelAppView;->addSessionListener(Lcom/voxel/sdk/SessionListener;)V

    .line 89
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBackgroundView:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBackgroundView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 91
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBackgroundView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->configureViews()V

    .line 96
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBackgroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->setContentView(Landroid/view/View;)V

    .line 104
    return-void

    :cond_0
    move v1, v4

    .line 70
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelAppDialogImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/CampaignInfo;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelAppDialogImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelAppDialogImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/voxel/sdk/VoxelAppDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelAppDialogImpl;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    return v0
.end method

.method private configureCloseButtonWithDelay(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/16 v2, 0x8

    .line 298
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mDelayEnableCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    if-nez p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    :goto_0
    return-void

    .line 302
    :cond_0
    if-lez p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mDelayEnableCloseRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/sdk/view/AppDialogView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private configureViews()V
    .locals 10

    .prologue
    const v9, 0x3f6b851f

    const v8, 0x3f4ccccd

    .line 162
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 163
    .local v2, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 165
    iget-boolean v7, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    if-eqz v7, :cond_0

    move v5, v9

    .line 166
    .local v5, "xPercentage":F
    :goto_0
    iget-boolean v7, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    if-eqz v7, :cond_1

    move v6, v8

    .line 167
    .local v6, "yPercentage":F
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v1, v7

    .line 168
    .local v1, "desiredWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v0, v7

    .line 171
    .local v0, "desiredHeight":I
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 172
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 175
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 176
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 177
    const/16 v7, 0x100

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 179
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 181
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v7, v4}, Lcom/voxel/sdk/view/AppDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void

    .end local v0    # "desiredHeight":I
    .end local v1    # "desiredWidth":I
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "xPercentage":F
    .end local v6    # "yPercentage":F
    :cond_0
    move v5, v8

    .line 165
    goto :goto_0

    .restart local v5    # "xPercentage":F
    :cond_1
    move v6, v9

    .line 166
    goto :goto_1
.end method

.method private launchAppStore()V
    .locals 4

    .prologue
    const-string v2, "market://details?id="

    .line 312
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    if-nez v2, :cond_0

    .line 333
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v1, 0x0

    .line 317
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo;->getSuccessURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo;->getSuccessURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo;->getSuccessURL()Ljava/lang/String;

    move-result-object v1

    .line 325
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    invoke-virtual {v3}, Lcom/voxel/api/model/AppInfo;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    .local v0, "storeIntent":Landroid/content/Intent;
    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    .end local v0    # "storeIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo;->getStoreId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo;->getStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private updateViewSize(II)V
    .locals 20
    .param p1, "contentWidth"    # I
    .param p2, "contentHeight"    # I

    .prologue
    .line 196
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L

    mul-double v16, v16, v18

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v2, v16, v18

    .line 197
    .local v2, "contentAspect":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v14

    .line 198
    .local v14, "voxelView":Lcom/voxel/sdk/VoxelAppView;
    invoke-virtual {v14}, Lcom/voxel/sdk/VoxelAppView;->getWidth()I

    move-result v16

    invoke-virtual {v14}, Lcom/voxel/sdk/VoxelAppView;->getHeight()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 199
    .local v13, "viewWidth":I
    invoke-virtual {v14}, Lcom/voxel/sdk/VoxelAppView;->getWidth()I

    move-result v16

    invoke-virtual {v14}, Lcom/voxel/sdk/VoxelAppView;->getHeight()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 201
    .local v11, "viewHeight":I
    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L

    mul-double v16, v16, v18

    move v0, v11

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v4, v16, v18

    .line 203
    .local v4, "currentAspect":D
    cmpg-double v16, v2, v4

    if-gez v16, :cond_0

    .line 205
    move v6, v11

    .line 206
    .local v6, "desiredHeight":I
    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v7, v0

    .line 215
    .local v7, "desiredWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/voxel/sdk/view/AppDialogView;->getTopBar()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v10, v16

    .line 218
    .local v10, "topBarHeight":I
    :goto_1
    move v9, v7

    .line 219
    .local v9, "dialogShort":I
    add-int v8, v6, v10

    .line 222
    .local v8, "dialogLong":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/voxel/sdk/view/AppDialogView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 223
    .local v12, "viewParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 224
    .local v15, "windowParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 225
    iput v8, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v8, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    iput v9, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 234
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void

    .line 209
    .end local v6    # "desiredHeight":I
    .end local v7    # "desiredWidth":I
    .end local v8    # "dialogLong":I
    .end local v9    # "dialogShort":I
    .end local v10    # "topBarHeight":I
    .end local v12    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move v7, v13

    .line 210
    .restart local v7    # "desiredWidth":I
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v6, v0

    .restart local v6    # "desiredHeight":I
    goto :goto_0

    .line 215
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/voxel/sdk/view/AppDialogView;->getTopBar()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v10, v16

    goto :goto_1

    .line 228
    .restart local v8    # "dialogLong":I
    .restart local v9    # "dialogShort":I
    .restart local v10    # "topBarHeight":I
    .restart local v12    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iput v9, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 229
    iput v8, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method


# virtual methods
.method protected cleanupDialog()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mDelayEnableCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/view/AppDialogView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 351
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/voxel/sdk/VoxelAppDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Exception during dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 132
    sget-object v0, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {p0, v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->stopWithReason(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;)V

    .line 133
    return-void
.end method

.method public onSessionFailed(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->FAILED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;->onSessionFinished(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;I)Z

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->cleanupDialog()V

    .line 388
    return-void
.end method

.method public onSessionFinished(I)V
    .locals 7
    .param p1, "duration"    # I

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "isHandled":Z
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    if-nez v2, :cond_0

    .line 395
    sget-object v2, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->INSTALL_REQUESTED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    iput-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    .line 397
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v2, "reason"

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {v3}, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v2}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v2

    const-string v3, "session finished after %d with %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {v6}, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/voxel/sdk/VoxelAppView;->logSessionEvent(Ljava/lang/String;)V

    .line 403
    const-string v2, "play_finished"

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-static {v2, v3, v1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;Ljava/util/Map;)V

    .line 404
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-interface {v2, v3, p1}, Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;->onSessionFinished(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;I)Z

    move-result v0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->cleanupDialog()V

    .line 410
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    sget-object v3, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    if-eq v2, v3, :cond_2

    .line 411
    const-string v2, "show_app_store"

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-static {v2, v3, v1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;Ljava/util/Map;)V

    .line 413
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    sget-object v3, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->USER_CLOSED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    if-ne v2, v3, :cond_4

    .line 417
    :cond_3
    :goto_0
    return-void

    .line 416
    :cond_4
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->launchAppStore()V

    goto :goto_0
.end method

.method public onSessionStarted(Lcom/voxel/api/model/AppInfo;Lcom/voxel/api/model/CampaignInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/voxel/api/model/AppInfo;
    .param p2, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    invoke-interface {v0}, Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;->onSessionStarted()V

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    .line 368
    iput-object p2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    .line 371
    invoke-virtual {p1}, Lcom/voxel/api/model/AppInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/voxel/api/model/AppInfo;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->updateViewSize(II)V

    .line 374
    iget-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBlurredPreroll:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->getPrerollCloseDelay()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->configureCloseButtonWithDelay(I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->startSession()V

    goto :goto_0
.end method

.method public setAppConfig(I)V
    .locals 1
    .param p1, "campaignId"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/VoxelAppView;->setAppConfig(I)V

    .line 109
    return-void
.end method

.method public setAppConfig(Lcom/voxel/sdk/VoxelAppConfig;)V
    .locals 1
    .param p1, "appConfig"    # Lcom/voxel/sdk/VoxelAppConfig;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/VoxelAppView;->setAppConfig(Lcom/voxel/sdk/VoxelAppConfig;)V

    .line 114
    return-void
.end method

.method public setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .line 119
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBlurredPreroll:Z

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->setBlurEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppView;->start()V

    .line 125
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 126
    return-void
.end method

.method public showBlurredPreroll(Lcom/voxel/api/model/CampaignInfo;)V
    .locals 4
    .param p1, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBlurredPreroll:Z

    .line 137
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    .line 140
    new-instance v0, Lcom/voxel/sdk/PrerollOverlayView;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    iget-boolean v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/sdk/PrerollOverlayView;-><init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Z)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mPrerollOverlay:Lcom/voxel/sdk/PrerollOverlayView;

    .line 142
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mPrerollOverlay:Lcom/voxel/sdk/PrerollOverlayView;

    new-instance v1, Lcom/voxel/sdk/VoxelAppDialogImpl$3;

    invoke-direct {v1, p0}, Lcom/voxel/sdk/VoxelAppDialogImpl$3;-><init>(Lcom/voxel/sdk/VoxelAppDialogImpl;)V

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PrerollOverlayView;->setOnButtonClickedListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollAudioEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->setAudioEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mPrerollOverlay:Lcom/voxel/sdk/PrerollOverlayView;

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->show()V

    .line 154
    return-void
.end method

.method protected startSession()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 244
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mSessionStarted:Z

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iput-boolean v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mSessionStarted:Z

    .line 248
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/voxel/sdk/VoxelAppView;->setBlurEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->setAudioEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->getDuration()I

    move-result v0

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getProgressContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->getCloseDelay()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->configureCloseButtonWithDelay(I)V

    .line 264
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->shouldDisplayStoreButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getInstallButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->getCloseDelay()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->shouldDisplayStoreButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getInstallButton()Landroid/widget/Button;

    move-result-object v7

    .line 273
    .local v7, "installButton":Landroid/widget/Button;
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z

    if-eqz v0, :cond_5

    .line 276
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 277
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    .end local v7    # "installButton":Landroid/widget/Button;
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppView;->getControlRotation()I

    move-result v6

    .line 287
    .local v6, "desiredRotation":I
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0, v6}, Lcom/voxel/sdk/view/AppDialogView;->setUIRotation(I)V

    goto :goto_0

    .line 254
    .end local v6    # "desiredRotation":I
    :cond_4
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/sdk/view/AppDialogView;->setProgress(FLjava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getProgressContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    new-instance v0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getDuration()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;-><init>(Lcom/voxel/sdk/VoxelAppDialogImpl;JJ)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAdTimer:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    .line 258
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAdTimer:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 279
    .restart local v7    # "installButton":Landroid/widget/Button;
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 280
    const/16 v0, 0xf

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2
.end method

.method protected stopWithReason(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAdTimer:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAdTimer:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->cancel()V

    .line 339
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelAppDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping session for reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mReason:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    .line 341
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppView;->stop()V

    .line 343
    iget-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mBlurredPreroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mSessionStarted:Z

    if-nez v0, :cond_1

    .line 345
    const-string v0, "will_not_play"

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-static {v0, v1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V

    .line 347
    :cond_1
    return-void
.end method

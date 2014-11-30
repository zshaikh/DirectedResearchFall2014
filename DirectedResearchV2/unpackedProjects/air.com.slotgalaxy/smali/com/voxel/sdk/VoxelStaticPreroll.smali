.class public Lcom/voxel/sdk/VoxelStaticPreroll;
.super Landroid/app/Dialog;
.source "VoxelStaticPreroll.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final BUTTON_SIZE_DP:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

.field private mCloseButton:Landroid/widget/Button;

.field private mDialogView:Landroid/widget/RelativeLayout;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEnableCloseRunnable:Ljava/lang/Runnable;

.field private mLandscape:Z

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/voxel/sdk/VoxelStaticPreroll;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/VoxelStaticPreroll;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/voxel/api/model/CampaignInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/voxel/sdk/VoxelStaticPreroll$1;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/VoxelStaticPreroll$1;-><init>(Lcom/voxel/sdk/VoxelStaticPreroll;)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mEnableCloseRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p2, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    .line 58
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->setupViews()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/sdk/VoxelStaticPreroll;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelStaticPreroll;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/voxel/sdk/VoxelStaticPreroll;)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelStaticPreroll;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->onInterstitialClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/sdk/VoxelStaticPreroll;)Lcom/voxel/api/model/CampaignInfo;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelStaticPreroll;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    return-object v0
.end method

.method private adjustViewSize()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000

    const v11, 0x3f733333

    const v10, 0x3f51eb85

    .line 187
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 188
    .local v3, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 190
    iget-boolean v9, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mLandscape:Z

    if-eqz v9, :cond_0

    move v7, v11

    .line 191
    .local v7, "xPercentage":F
    :goto_0
    iget-boolean v9, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mLandscape:Z

    if-eqz v9, :cond_1

    move v8, v10

    .line 192
    .local v8, "yPercentage":F
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v2, v9

    .line 193
    .local v2, "desiredWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v1, v9

    .line 195
    .local v1, "desiredHeight":I
    iget-object v9, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v12

    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 197
    .local v4, "imageAspect":F
    int-to-float v9, v2

    mul-float/2addr v9, v12

    int-to-float v10, v1

    div-float v0, v9, v10

    .line 198
    .local v0, "desiredAspect":F
    cmpg-float v9, v4, v0

    if-gez v9, :cond_2

    .line 200
    int-to-float v9, v1

    mul-float/2addr v9, v4

    float-to-int v2, v9

    .line 205
    :goto_2
    iget-object v9, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 206
    .local v5, "viewParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 207
    .local v6, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 211
    iget-object v9, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void

    .end local v0    # "desiredAspect":F
    .end local v1    # "desiredHeight":I
    .end local v2    # "desiredWidth":I
    .end local v4    # "imageAspect":F
    .end local v5    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "xPercentage":F
    .end local v8    # "yPercentage":F
    :cond_0
    move v7, v10

    .line 190
    goto :goto_0

    .restart local v7    # "xPercentage":F
    :cond_1
    move v8, v11

    .line 191
    goto :goto_1

    .line 202
    .restart local v0    # "desiredAspect":F
    .restart local v1    # "desiredHeight":I
    .restart local v2    # "desiredWidth":I
    .restart local v4    # "imageAspect":F
    .restart local v8    # "yPercentage":F
    :cond_2
    int-to-float v9, v2

    div-float/2addr v9, v4

    float-to-int v1, v9

    goto :goto_2
.end method

.method private onInterstitialClicked()V
    .locals 4

    .prologue
    .line 90
    const-string v1, "will_play"

    iget-object v2, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-static {v1, v2}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V

    .line 92
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v2}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/voxel/sdk/VoxelSDK;->createSessionDialog(Landroid/content/Context;J)Lcom/voxel/sdk/ad/VoxelAppDialog;

    move-result-object v0

    .line 94
    .local v0, "dialog":Lcom/voxel/sdk/ad/VoxelAppDialog;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->dismiss()V

    .line 96
    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    invoke-interface {v0, v1}, Lcom/voxel/sdk/ad/VoxelAppDialog;->setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V

    .line 97
    invoke-interface {v0}, Lcom/voxel/sdk/ad/VoxelAppDialog;->show()V

    .line 98
    return-void
.end method

.method private setupViews()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0, v13}, Lcom/voxel/sdk/VoxelStaticPreroll;->setCanceledOnTouchOutside(Z)V

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 107
    .local v5, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 108
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v10, v11, :cond_1

    move v10, v12

    :goto_0
    iput-boolean v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mLandscape:Z

    .line 111
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    iget-boolean v11, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mLandscape:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/voxel/sdk/Config$Orientation;->LANDSCAPE:Lcom/voxel/sdk/Config$Orientation;

    :goto_1
    invoke-virtual {v10, v11}, Lcom/voxel/api/model/CampaignInfo;->getCreativeByOrientation(Lcom/voxel/sdk/Config$Orientation;)Lcom/voxel/api/model/CampaignInfo$Creative;

    move-result-object v4

    .line 114
    .local v4, "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    if-nez v4, :cond_0

    .line 116
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v10}, Lcom/voxel/api/model/CampaignInfo;->getCreatives()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    check-cast v4, Lcom/voxel/api/model/CampaignInfo$Creative;

    .line 118
    .restart local v4    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    :cond_0
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v10

    invoke-virtual {v4}, Lcom/voxel/api/model/CampaignInfo$Creative;->getAssetKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 120
    .local v8, "image":Ljava/io/File;
    if-nez v8, :cond_3

    .line 121
    sget-object v10, Lcom/voxel/sdk/VoxelStaticPreroll;->TAG:Ljava/lang/String;

    const-string v11, "Could not create dialog, creative not loaded"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find asset "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/voxel/api/model/CampaignInfo$Creative;->getAssetKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v4    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    .end local v8    # "image":Ljava/io/File;
    :cond_1
    move v10, v13

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    sget-object v11, Lcom/voxel/sdk/Config$Orientation;->PORTRAIT:Lcom/voxel/sdk/Config$Orientation;

    goto :goto_1

    .line 126
    .restart local v4    # "creative":Lcom/voxel/api/model/CampaignInfo$Creative;
    .restart local v8    # "image":Ljava/io/File;
    :cond_3
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    const/high16 v10, 0x41f00000

    invoke-virtual {p0, v10}, Lcom/voxel/sdk/VoxelStaticPreroll;->dpToPixels(F)I

    move-result v1

    .line 133
    .local v1, "closeButtonSize":I
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDialogView:Landroid/widget/RelativeLayout;

    .line 134
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v6, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v7, "frameParams":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v10, v1, 0x2

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 139
    div-int/lit8 v10, v1, 0x2

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 140
    div-int/lit8 v10, v1, 0x2

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    div-int/lit8 v10, v1, 0x2

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 142
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 144
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v10, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mButton:Landroid/widget/Button;

    .line 147
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v9, "mainParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mButton:Landroid/widget/Button;

    new-instance v11, Lcom/voxel/sdk/VoxelStaticPreroll$2;

    invoke-direct {v11, p0}, Lcom/voxel/sdk/VoxelStaticPreroll$2;-><init>(Lcom/voxel/sdk/VoxelStaticPreroll;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance v10, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    .line 160
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v10

    sget-object v11, Lcom/voxel/sdk/StaticAsset;->INTERSTITIAL_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

    invoke-virtual {v11}, Lcom/voxel/sdk/StaticAsset;->getAssetKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "closeButtonFile":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 163
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 165
    .local v2, "closeDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .end local v2    # "closeDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v3, "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xb

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    new-instance v11, Lcom/voxel/sdk/VoxelStaticPreroll$3;

    invoke-direct {v11, p0}, Lcom/voxel/sdk/VoxelStaticPreroll$3;-><init>(Lcom/voxel/sdk/VoxelStaticPreroll;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDialogView:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v10, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v10}, Lcom/voxel/sdk/VoxelStaticPreroll;->setContentView(Landroid/view/View;)V

    .line 183
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->adjustViewSize()V

    .line 184
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mEnableCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method protected dpToPixels(F)I
    .locals 2
    .param p1, "dp"    # F

    .prologue
    .line 215
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelStaticPreroll;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mMetrics:Landroid/util/DisplayMetrics;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 86
    const-string v0, "will_not_play"

    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-static {v0, v1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V

    .line 87
    return-void
.end method

.method public setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mStateListener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .line 63
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 75
    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollCloseDelay()I

    move-result v0

    .line 76
    .local v0, "closeDelay":I
    if-nez v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mEnableCloseRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    if-lez v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/voxel/sdk/VoxelStaticPreroll;->mEnableCloseRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

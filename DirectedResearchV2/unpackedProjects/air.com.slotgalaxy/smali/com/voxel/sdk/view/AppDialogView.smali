.class public Lcom/voxel/sdk/view/AppDialogView;
.super Landroid/widget/LinearLayout;
.source "AppDialogView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final OVERLAY_HEIGHT:I = 0x1e

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseButton:Landroid/widget/Button;

.field private mInstallButton:Landroid/widget/Button;

.field protected mLandscape:Z

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mProgressContainer:Landroid/widget/FrameLayout;

.field private mProgressText:Landroid/widget/TextView;

.field private mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

.field private mTextOverlay:Landroid/widget/TextView;

.field private mTopBar:Landroid/widget/RelativeLayout;

.field private mUIRotation:I

.field private mVoxelView:Lcom/voxel/sdk/VoxelAppView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/voxel/sdk/view/AppDialogView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/view/AppDialogView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/voxel/sdk/view/AppDialogView;-><init>(Landroid/content/Context;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean p2, p0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    .line 66
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->createSubviews()V

    .line 67
    return-void
.end method


# virtual methods
.method protected createSubviews()V
    .locals 27

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->setOrientation(I)V

    .line 74
    new-instance v22, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    .line 75
    const/high16 v22, 0x42000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v5

    .line 76
    .local v5, "barHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move/from16 v21, v5

    .line 77
    .local v21, "width":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/16 v22, -0x1

    move/from16 v9, v22

    .line 78
    .local v9, "height":I
    :goto_2
    const/high16 v22, 0x40800000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v12

    .line 79
    .local v12, "padding":I
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    move/from16 v1, v21

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v18, "topBarParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move v2, v12

    move/from16 v3, v24

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 87
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const-string v23, "#393939"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v22, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    .line 92
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v15

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v15, "progressContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 95
    const/16 v22, 0xc

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    const/16 v22, 0xe

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v22, Lcom/todddavies/components/progressbar/ProgressWheel;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/todddavies/components/progressbar/ProgressWheel;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    .line 107
    const/high16 v22, 0x42000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v16

    .line 108
    .local v16, "size":I
    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v20, "wheelParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v22, 0x11

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/todddavies/components/progressbar/ProgressWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/todddavies/components/progressbar/ProgressWheel;->setBarLength(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v22, v0

    const-string v23, "#00A5DD"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/todddavies/components/progressbar/ProgressWheel;->setBarColor(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v22, v0

    const/high16 v23, 0x40000000

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/todddavies/components/progressbar/ProgressWheel;->setBarWidth(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/todddavies/components/progressbar/ProgressWheel;->setRimWidth(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v22, v0

    const-string v23, "#393939"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/todddavies/components/progressbar/ProgressWheel;->setRimColor(I)V

    .line 118
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    .line 119
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v17, "textParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v22, 0x11

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const-string v23, "#FFFFFF"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/high16 v24, 0x41300000

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v22, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    .line 132
    const/high16 v22, 0x41b00000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v16

    .line 133
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v11, "installParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xd

    move-object v0, v11

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setGravity(I)V

    .line 139
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v22

    sget-object v23, Lcom/voxel/sdk/StaticAsset;->GOOGLE_PLAY_ICON:Lcom/voxel/sdk/StaticAsset;

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/sdk/StaticAsset;->getAssetKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 141
    .local v10, "iconFile":Ljava/io/File;
    if-eqz v10, :cond_0

    .line 142
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 144
    .local v13, "playIcon":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .end local v13    # "playIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    new-instance v22, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    .line 149
    const/high16 v22, 0x41c80000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v16

    .line 150
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, v7

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v7, "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 154
    const/16 v22, 0xa

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    const/16 v22, 0xe

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setGravity(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/widget/Button;->setPadding(IIII)V

    .line 164
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v22

    sget-object v23, Lcom/voxel/sdk/StaticAsset;->DIALOG_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/sdk/StaticAsset;->getAssetKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 166
    .local v8, "dialogCloseFile":Ljava/io/File;
    if-eqz v8, :cond_1

    .line 167
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 169
    .local v6, "closeIcon":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .end local v6    # "closeIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v22, Lcom/voxel/sdk/VoxelAppView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/voxel/sdk/VoxelAppView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    .line 175
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v19, "voxelParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v22, 0x40a00000

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/VoxelAppView;->setGravity(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/VoxelAppView;->setKeepScreenOn(Z)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/VoxelAppView;->setClipChildren(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->addView(Landroid/view/View;)V

    .line 185
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    .line 186
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/high16 v23, 0x41f00000

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v23

    move-object v0, v14

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v14, "postrollParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xa

    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41700000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const-string v23, "#BB393939"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/VoxelAppView;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/view/AppDialogView;->requestLayout()V

    .line 199
    return-void

    .line 71
    .end local v5    # "barHeight":I
    .end local v7    # "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "dialogCloseFile":Ljava/io/File;
    .end local v9    # "height":I
    .end local v10    # "iconFile":Ljava/io/File;
    .end local v11    # "installParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "padding":I
    .end local v14    # "postrollParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "progressContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "size":I
    .end local v17    # "textParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "topBarParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "voxelParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "wheelParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "width":I
    :cond_2
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 76
    .restart local v5    # "barHeight":I
    :cond_3
    const/16 v22, -0x1

    move/from16 v21, v22

    goto/16 :goto_1

    .restart local v21    # "width":I
    :cond_4
    move v9, v5

    .line 77
    goto/16 :goto_2

    .line 85
    .restart local v9    # "height":I
    .restart local v12    # "padding":I
    .restart local v18    # "topBarParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move v1, v12

    move/from16 v2, v23

    move v3, v12

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_3

    .line 98
    .restart local v15    # "progressContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v22, 0x9

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    const/16 v22, 0xf

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    .line 157
    .restart local v7    # "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10    # "iconFile":Ljava/io/File;
    .restart local v11    # "installParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16    # "size":I
    .restart local v17    # "textParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v20    # "wheelParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/16 v22, 0xb

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    const/16 v22, 0xf

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5
.end method

.method protected dpToPixels(F)I
    .locals 2
    .param p1, "dp"    # F

    .prologue
    .line 302
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mMetrics:Landroid/util/DisplayMetrics;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCloseButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getInstallButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getProgressContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getProgressText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProgressWheel()Lcom/todddavies/components/progressbar/ProgressWheel;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    return-object v0
.end method

.method public getTopBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mTopBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getVoxelView()Lcom/voxel/sdk/VoxelAppView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    return-object v0
.end method

.method protected rotateTextOverlay()V
    .locals 12

    .prologue
    const/16 v4, 0xc

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->getWidth()I

    move-result v11

    .line 260
    .local v11, "width":I
    const/high16 v1, 0x41f00000

    invoke-virtual {p0, v1}, Lcom/voxel/sdk/view/AppDialogView;->dpToPixels(F)I

    move-result v7

    .line 261
    .local v7, "height":I
    const/4 v9, 0x0

    .line 262
    .local v9, "pivotX":I
    div-int/lit8 v10, v7, 0x2

    .line 263
    .local v10, "pivotY":I
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v8, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mUIRotation:I

    sparse-switch v1, :sswitch_data_0

    .line 288
    :goto_0
    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 289
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 290
    iget-object v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mUIRotation:I

    int-to-float v1, v1

    iget v2, p0, Lcom/voxel/sdk/view/AppDialogView;->mUIRotation:I

    int-to-float v2, v2

    int-to-float v4, v9

    int-to-float v6, v10

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 294
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 296
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 298
    iget-object v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    return-void

    .line 268
    .end local v0    # "rotate":Landroid/view/animation/RotateAnimation;
    :sswitch_0
    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 272
    :sswitch_1
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    iget-object v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    invoke-virtual {v1}, Lcom/voxel/sdk/VoxelAppView;->getHeight()I

    move-result v11

    .line 274
    sub-int v9, v11, v10

    .line 275
    goto :goto_0

    .line 277
    :sswitch_2
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    div-int/lit8 v9, v11, 0x2

    .line 280
    goto :goto_0

    .line 282
    :sswitch_3
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    iget-object v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mVoxelView:Lcom/voxel/sdk/VoxelAppView;

    invoke-virtual {v1}, Lcom/voxel/sdk/VoxelAppView;->getHeight()I

    move-result v11

    .line 285
    move v9, v10

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOverlayText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mTextOverlay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->rotateTextOverlay()V

    goto :goto_0
.end method

.method public setProgress(FLjava/lang/String;)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->getProgressWheel()Lcom/todddavies/components/progressbar/ProgressWheel;

    move-result-object v0

    const/high16 v1, 0x43b40000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/todddavies/components/progressbar/ProgressWheel;->setProgress(I)V

    .line 239
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->getProgressWheel()Lcom/todddavies/components/progressbar/ProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/todddavies/components/progressbar/ProgressWheel;->invalidate()V

    .line 240
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppDialogView;->getProgressText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    iget v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mUIRotation:I

    invoke-static {v0, v1}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 243
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    iget v1, p0, Lcom/voxel/sdk/view/AppDialogView;->mUIRotation:I

    invoke-static {v0, v1}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 244
    return-void
.end method

.method public setUIRotation(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/voxel/sdk/view/AppDialogView;->mUIRotation:I

    .line 231
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressWheel:Lcom/todddavies/components/progressbar/ProgressWheel;

    invoke-static {v0, p1}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 232
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mProgressText:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 233
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mInstallButton:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 234
    iget-object v0, p0, Lcom/voxel/sdk/view/AppDialogView;->mCloseButton:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 235
    return-void
.end method

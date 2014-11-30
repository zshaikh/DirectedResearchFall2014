.class public Lcom/voxel/sdk/PostrollOverlayView;
.super Lcom/voxel/sdk/view/AppOverlayView;
.source "PostrollOverlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppName:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mHeading:Landroid/widget/TextView;

.field private mLandscape:Z

.field private mListener:Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;

.field private mMessage:Landroid/widget/TextView;

.field mSpinner:Lcom/todddavies/components/progressbar/ProgressWheel;

.field private mSpinnerContainer:Landroid/widget/LinearLayout;

.field private mUIRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/voxel/sdk/PostrollOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/PostrollOverlayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/voxel/sdk/view/AppOverlayView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This constructor is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/api/model/AppInfo;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;
    .param p3, "appInfo"    # Lcom/voxel/api/model/AppInfo;
    .param p4, "landscape"    # Z
    .param p5, "rotation"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/sdk/view/AppOverlayView;-><init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/api/model/AppInfo;)V

    .line 64
    if-eqz p5, :cond_0

    const/16 v0, 0xb4

    if-ne p5, v0, :cond_1

    :cond_0
    move v0, p4

    :goto_0
    iput-boolean v0, p0, Lcom/voxel/sdk/PostrollOverlayView;->mLandscape:Z

    .line 66
    iput p5, p0, Lcom/voxel/sdk/PostrollOverlayView;->mUIRotation:I

    .line 68
    invoke-virtual {p0}, Lcom/voxel/sdk/PostrollOverlayView;->createSubviews()V

    .line 69
    return-void

    .line 64
    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createSubviews()V
    .locals 24

    .prologue
    .line 78
    invoke-super/range {p0 .. p0}, Lcom/voxel/sdk/view/AppOverlayView;->createSubviews()V

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mLandscape:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 82
    const/high16 v22, 0x43af0000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v6

    .line 83
    .local v6, "containerWidth":I
    const/high16 v22, 0x41700000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v20

    .line 84
    .local v20, "textItemMargin":I
    const/high16 v22, 0x41f00000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v3

    .line 92
    .local v3, "actionItemMargin":I
    :goto_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    move-object v0, v5

    move v1, v6

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v5, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 98
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/PostrollOverlayView;->mHeading:Landroid/widget/TextView;

    .line 99
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v9

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v9, "headingParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object v1, v9

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mHeading:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mHeading:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getTextColor()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mHeading:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41980000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mHeading:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const-string v23, "Thanks for playing"

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mHeading:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    .line 109
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v16, "nameParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 112
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getTextColor()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41980000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/api/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v22, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/PostrollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    .line 121
    const/high16 v22, 0x428c0000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v13

    .line 122
    .local v13, "iconSize":I
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v12, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v20

    move-object v1, v12

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    iput v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/voxel/api/model/AppInfo;->getIcon()Lcom/voxel/api/model/AppIcon;

    move-result-object v10

    .line 129
    .local v10, "icon":Lcom/voxel/api/model/AppIcon;
    if-eqz v10, :cond_1

    .line 130
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v22

    invoke-virtual {v10}, Lcom/voxel/api/model/AppIcon;->getAssetKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 132
    .local v11, "iconFile":Ljava/io/File;
    if-eqz v11, :cond_0

    .line 133
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 135
    .local v7, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .end local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    .end local v11    # "iconFile":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/voxel/api/model/CampaignInfo;->getPostrollType()Lcom/voxel/api/model/CampaignInfo$PostrollType;

    move-result-object v21

    .line 142
    .local v21, "type":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    sget-object v22, Lcom/voxel/api/model/CampaignInfo$PostrollType;->TIMER:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 143
    new-instance v22, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    .line 144
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v19, "spinContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 150
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v8, "gPlayIcon":Landroid/widget/ImageView;
    const/high16 v22, 0x41c80000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v14

    .line 152
    .local v14, "imageSize":I
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    move v1, v14

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v18, "playParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v22

    sget-object v23, Lcom/voxel/sdk/StaticAsset;->GOOGLE_PLAY_ICON:Lcom/voxel/sdk/StaticAsset;

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/sdk/StaticAsset;->getAssetKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 157
    .restart local v11    # "iconFile":Ljava/io/File;
    if-eqz v11, :cond_2

    .line 158
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 160
    .local v17, "playIcon":Landroid/graphics/drawable/BitmapDrawable;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .end local v17    # "playIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    sget-object v22, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/PostrollOverlayView;->mMessage:Landroid/widget/TextView;

    .line 182
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v15

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v15, "messageParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v22, 0x41000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v22

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 185
    const/high16 v22, 0x40000000

    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mMessage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mMessage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getTextColor()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mMessage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41980000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mMessage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/api/model/CampaignInfo;->getPostrollOverlayText()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mMessage:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->startTimer()V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mSpinnerContainer:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    .end local v8    # "gPlayIcon":Landroid/widget/ImageView;
    .end local v11    # "iconFile":Ljava/io/File;
    .end local v14    # "imageSize":I
    .end local v15    # "messageParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "playParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "spinContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/voxel/api/model/CampaignInfo;->isTappableCreative()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 215
    new-instance v22, Lcom/voxel/sdk/PostrollOverlayView$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView$2;-><init>(Lcom/voxel/sdk/PostrollOverlayView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mUIRotation:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/voxel/util/RotationUtils;->applyRotation(Landroid/view/View;I)Z

    .line 224
    return-void

    .line 87
    .end local v3    # "actionItemMargin":I
    .end local v5    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "containerWidth":I
    .end local v9    # "headingParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "icon":Lcom/voxel/api/model/AppIcon;
    .end local v12    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "iconSize":I
    .end local v16    # "nameParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "textItemMargin":I
    .end local v21    # "type":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    :cond_4
    const/high16 v22, 0x43960000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v6

    .line 88
    .restart local v6    # "containerWidth":I
    const/high16 v22, 0x41a00000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v20

    .line 89
    .restart local v20    # "textItemMargin":I
    const/high16 v22, 0x42200000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v3

    .restart local v3    # "actionItemMargin":I
    goto/16 :goto_0

    .line 196
    .restart local v5    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "headingParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "icon":Lcom/voxel/api/model/AppIcon;
    .restart local v12    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "iconSize":I
    .restart local v16    # "nameParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "type":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    :cond_5
    new-instance v22, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    .line 197
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v22, 0x43480000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->dpToPixels(F)I

    move-result v22

    const/16 v23, -0x2

    move-object v0, v4

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v4, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/sdk/PostrollOverlayView;->createButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setTextColor(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/api/model/CampaignInfo;->getPostrollOverlayText()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/high16 v23, 0x41900000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setTextSize(F)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/voxel/sdk/PostrollOverlayView$1;

    invoke-direct/range {v23 .. v24}, Lcom/voxel/sdk/PostrollOverlayView$1;-><init>(Lcom/voxel/sdk/PostrollOverlayView;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected dispatchCompletion()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/voxel/sdk/PostrollOverlayView;->mListener:Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/voxel/sdk/PostrollOverlayView;->mListener:Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;

    invoke-interface {v0}, Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;->onPostrollCompleted()V

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxel/sdk/PostrollOverlayView;->mListener:Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;

    .line 239
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 243
    invoke-super {p0, p1}, Lcom/voxel/sdk/view/AppOverlayView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    iget v2, p0, Lcom/voxel/sdk/PostrollOverlayView;->mUIRotation:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_1

    :cond_0
    move v2, v5

    .line 276
    :goto_0
    return v2

    .line 248
    :cond_1
    new-array v0, v3, [I

    .line 249
    .local v0, "buttonLocation":[I
    iget-object v2, p0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->getLocationOnScreen([I)V

    .line 253
    new-array v1, v3, [I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v5

    .line 254
    .local v1, "point":[I
    invoke-virtual {p0, v1}, Lcom/voxel/sdk/PostrollOverlayView;->translatePoint([I)V

    .line 255
    aget v2, v1, v6

    aget v3, v0, v6

    if-le v2, v3, :cond_2

    aget v2, v1, v5

    aget v3, v0, v5

    if-le v2, v3, :cond_2

    aget v2, v1, v6

    aget v3, v0, v6

    iget-object v4, p0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    aget v2, v1, v5

    aget v3, v0, v5

    iget-object v4, p0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setPressed(Z)V

    :cond_2
    :goto_1
    move v2, v5

    .line 276
    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 263
    iget-object v2, p0, Lcom/voxel/sdk/PostrollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setPressed(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/voxel/sdk/PostrollOverlayView;->dispatchCompletion()V

    goto :goto_1
.end method

.method public setCompletionListener(Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/voxel/sdk/PostrollOverlayView;->mListener:Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;

    .line 73
    return-void
.end method

.method protected startTimer()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lcom/voxel/sdk/PostrollOverlayView$3;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/PostrollOverlayView$3;-><init>(Lcom/voxel/sdk/PostrollOverlayView;)V

    iget-object v1, p0, Lcom/voxel/sdk/PostrollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPostrollOverlayDuration()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/sdk/PostrollOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    return-void
.end method

.method protected translatePoint([I)V
    .locals 13
    .param p1, "points"    # [I

    .prologue
    .line 281
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 282
    .local v4, "location":[I
    invoke-virtual {p0, v4}, Lcom/voxel/sdk/PostrollOverlayView;->getLocationInWindow([I)V

    .line 285
    const/4 v9, 0x0

    aget v10, p1, v9

    const/4 v11, 0x0

    aget v11, v4, v11

    sub-int/2addr v10, v11

    aput v10, p1, v9

    .line 286
    const/4 v9, 0x1

    aget v10, p1, v9

    const/4 v11, 0x1

    aget v11, v4, v11

    sub-int/2addr v10, v11

    aput v10, p1, v9

    .line 289
    iget v9, p0, Lcom/voxel/sdk/PostrollOverlayView;->mUIRotation:I

    if-lez v9, :cond_0

    .line 290
    const/4 v9, 0x0

    iget v10, p0, Lcom/voxel/sdk/PostrollOverlayView;->mUIRotation:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Lcom/voxel/util/RotationUtils;->normalizeDegrees(I)I

    move-result v9

    int-to-float v3, v9

    .line 291
    .local v3, "deg":F
    invoke-virtual {p0}, Lcom/voxel/sdk/PostrollOverlayView;->getWidth()I

    move-result v9

    div-int/lit8 v0, v9, 0x2

    .line 292
    .local v0, "centerX":I
    invoke-virtual {p0}, Lcom/voxel/sdk/PostrollOverlayView;->getHeight()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    .line 293
    .local v1, "centerY":I
    float-to-double v9, v3

    const-wide v11, 0x400921fb54442d18L

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double/2addr v9, v11

    double-to-float v5, v9

    .line 294
    .local v5, "rad":F
    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v6, v9

    .line 295
    .local v6, "sin":F
    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v2, v9

    .line 296
    .local v2, "cos":F
    const/4 v9, 0x0

    aget v10, p1, v9

    sub-int/2addr v10, v0

    aput v10, p1, v9

    .line 297
    const/4 v9, 0x1

    aget v10, p1, v9

    sub-int/2addr v10, v1

    aput v10, p1, v9

    .line 299
    const/4 v9, 0x0

    aget v9, p1, v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    const/4 v10, 0x1

    aget v10, p1, v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float v7, v9, v10

    .line 300
    .local v7, "tmpX":F
    const/4 v9, 0x1

    aget v9, p1, v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    aget v10, p1, v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float v8, v9, v10

    .line 301
    .local v8, "tmpY":F
    const/4 v9, 0x0

    float-to-int v10, v7

    add-int/2addr v10, v0

    aput v10, p1, v9

    .line 302
    const/4 v9, 0x1

    float-to-int v10, v8

    add-int/2addr v10, v1

    aput v10, p1, v9

    .line 306
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "cos":F
    .end local v3    # "deg":F
    .end local v5    # "rad":F
    .end local v6    # "sin":F
    .end local v7    # "tmpX":F
    .end local v8    # "tmpY":F
    :cond_0
    const/4 v9, 0x0

    aget v10, p1, v9

    const/4 v11, 0x0

    aget v11, v4, v11

    add-int/2addr v10, v11

    aput v10, p1, v9

    .line 307
    const/4 v9, 0x1

    aget v10, p1, v9

    const/4 v11, 0x1

    aget v11, v4, v11

    add-int/2addr v10, v11

    aput v10, p1, v9

    .line 309
    return-void
.end method

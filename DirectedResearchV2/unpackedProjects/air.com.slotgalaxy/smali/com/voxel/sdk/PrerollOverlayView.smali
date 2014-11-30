.class public Lcom/voxel/sdk/PrerollOverlayView;
.super Lcom/voxel/sdk/view/AppOverlayView;
.source "PrerollOverlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final APP_ICON_ID:I = 0x1

.field private static final APP_NAME_ID:I = 0x2

.field private static final ICON_SIZE:I = 0x50


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppName:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mLandscape:Z

.field private mTopRow:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;
    .param p3, "landscape"    # Z

    .prologue
    .line 39
    invoke-virtual {p2}, Lcom/voxel/api/model/CampaignInfo;->getAppInfo()Lcom/voxel/api/model/AppInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/sdk/view/AppOverlayView;-><init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/api/model/AppInfo;)V

    .line 41
    iput-boolean p3, p0, Lcom/voxel/sdk/PrerollOverlayView;->mLandscape:Z

    .line 43
    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->createSubviews()V

    .line 44
    return-void
.end method

.method private configureLandscape()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, -0x2

    .line 120
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v1, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41400000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v0

    .line 123
    .local v0, "containerPadding":I
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    div-int/lit8 v8, v0, 0x2

    invoke-virtual {v7, v0, v0, v0, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43960000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v6, "topRowParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    const/high16 v8, 0x438c0000

    invoke-virtual {p0, v8}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 130
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    const/high16 v7, 0x42a00000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v4

    .line 133
    .local v4, "iconSize":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v3, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    const/high16 v7, 0x41700000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 138
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v5, "nameParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    invoke-virtual {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    const/high16 v7, 0x40a00000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 145
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v2, "descParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    const/4 v7, 0x3

    const/4 v8, 0x2

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    const/high16 v7, 0x41200000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 152
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-void
.end method

.method private configurePortrait()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0xe

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 156
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41f00000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v0

    .line 159
    .local v0, "containerPadding":I
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v6, "topRowParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    const/high16 v8, 0x438c0000

    invoke-virtual {p0, v8}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 166
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 169
    const/high16 v7, 0x42a00000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v4

    .line 170
    .local v4, "iconSize":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v3, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    const/high16 v7, 0x41700000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 175
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v5, "nameParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/high16 v7, 0x40a00000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 182
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v2, "descParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x2

    invoke-virtual {v2, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const/high16 v7, 0x41200000

    invoke-virtual {p0, v7}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 190
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v7, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    return-void
.end method


# virtual methods
.method protected createSubviews()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/high16 v8, 0x41700000

    .line 56
    invoke-super {p0}, Lcom/voxel/sdk/view/AppOverlayView;->createSubviews()V

    .line 59
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "icon":Lcom/voxel/api/model/AppIcon;
    const/4 v0, 0x0

    .line 63
    .local v0, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    invoke-virtual {v5}, Lcom/voxel/api/model/AppInfo;->getIcon()Lcom/voxel/api/model/AppIcon;

    move-result-object v3

    .line 65
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    invoke-virtual {v5}, Lcom/voxel/api/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    .line 69
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 70
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    if-eqz v3, :cond_1

    .line 73
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getAssetManager()Lcom/voxel/sdk/AssetManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/voxel/api/model/AppIcon;->getAssetKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 75
    .local v4, "iconFile":Ljava/io/File;
    if-eqz v4, :cond_1

    .line 76
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 78
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "iconFile":Ljava/io/File;
    :cond_1
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    .line 83
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setId(I)V

    .line 84
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    const/high16 v6, 0x41980000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    .line 90
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v6}, Lcom/voxel/api/model/CampaignInfo;->getPrerollDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x3f99999a

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 94
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 97
    new-instance v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    .line 98
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v1, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v8}, Lcom/voxel/sdk/PrerollOverlayView;->dpToPixels(F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 101
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v6}, Lcom/voxel/api/model/CampaignInfo;->getPrerollButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 104
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    const/high16 v6, 0x41800000

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 105
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/voxel/sdk/PrerollOverlayView;->createButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-boolean v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mLandscape:Z

    if-eqz v5, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/voxel/sdk/PrerollOverlayView;->configureLandscape()V

    .line 112
    :goto_0
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mTopRow:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v5, p0, Lcom/voxel/sdk/PrerollOverlayView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    return-void

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/voxel/sdk/PrerollOverlayView;->configurePortrait()V

    goto :goto_0
.end method

.method public setOnButtonClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/voxel/sdk/PrerollOverlayView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/voxel/sdk/PrerollOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/CampaignInfo;->isTappableCreative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/PrerollOverlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    return-void
.end method

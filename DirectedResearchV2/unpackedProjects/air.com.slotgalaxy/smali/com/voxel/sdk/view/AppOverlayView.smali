.class public Lcom/voxel/sdk/view/AppOverlayView;
.super Landroid/widget/LinearLayout;
.source "AppOverlayView.java"


# static fields
.field protected static final DARK_STYLE:Ljava/lang/String; = "dark"


# instance fields
.field protected mAppInfo:Lcom/voxel/api/model/AppInfo;

.field protected mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

.field protected mContainer:Landroid/widget/LinearLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/api/model/AppInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;
    .param p3, "appInfo"    # Lcom/voxel/api/model/AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/voxel/sdk/view/AppOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    .line 38
    iput-object p3, p0, Lcom/voxel/sdk/view/AppOverlayView;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    .line 41
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/voxel/sdk/view/AppOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/voxel/sdk/view/AppOverlayView;->setGravity(I)V

    .line 47
    const-string v2, "dark"

    iget-object v3, p0, Lcom/voxel/sdk/view/AppOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v3}, Lcom/voxel/api/model/CampaignInfo;->getPrerollOverlayStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v0, "#7F000000"

    .line 52
    .local v0, "overlayColor":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/voxel/sdk/view/AppOverlayView;->setBackgroundColor(I)V

    .line 53
    return-void

    .line 50
    .end local v0    # "overlayColor":Ljava/lang/String;
    :cond_0
    const-string v0, "#A5FFFFFF"

    .restart local v0    # "overlayColor":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected createButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/high16 v5, 0x40400000

    .line 68
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 69
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 70
    .local v1, "normal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0, v5}, Lcom/voxel/sdk/view/AppOverlayView;->dpToPixels(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 71
    const-string v4, "#DD6DCD50"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 74
    .local v2, "pressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0, v5}, Lcom/voxel/sdk/view/AppOverlayView;->dpToPixels(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 75
    const-string v4, "#DD539440"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 77
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    .line 79
    .local v3, "pressedState":[I
    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 80
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 82
    return-object v0
.end method

.method protected createSubviews()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/sdk/view/AppOverlayView;->mContainer:Landroid/widget/LinearLayout;

    .line 57
    iget-object v0, p0, Lcom/voxel/sdk/view/AppOverlayView;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    iget-object v0, p0, Lcom/voxel/sdk/view/AppOverlayView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/voxel/sdk/view/AppOverlayView;->addView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method protected dpToPixels(F)I
    .locals 2
    .param p1, "dp"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lcom/voxel/sdk/view/AppOverlayView;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/voxel/sdk/view/AppOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/view/AppOverlayView;->mMetrics:Landroid/util/DisplayMetrics;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/view/AppOverlayView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTextColor()I
    .locals 2

    .prologue
    .line 86
    const-string v0, "dark"

    iget-object v1, p0, Lcom/voxel/sdk/view/AppOverlayView;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollOverlayStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    const/4 v0, 0x1

    return v0
.end method

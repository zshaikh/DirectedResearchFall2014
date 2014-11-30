.class public Lcom/nativex/monetization/theme/OriginalTheme;
.super Lcom/nativex/monetization/theme/ThemeFromAssets;
.source "OriginalTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/theme/OriginalTheme$1;,
        Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;
    }
.end annotation


# static fields
.field private static final SHADER_ID_BANNER:I = 0x1bb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nativex/monetization/theme/ThemeFromAssets;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/nativex/monetization/theme/OriginalTheme;)Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/theme/OriginalTheme;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nativex/monetization/theme/OriginalTheme;->createShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method private createShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 108
    const/16 v2, 0xa

    .line 109
    .local v2, "roundEdge":I
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000

    invoke-static {v3, v4}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v2

    .line 112
    :cond_0
    const/16 v3, 0x8

    new-array v0, v3, [F

    const/4 v3, 0x0

    sub-int v4, v2, v5

    int-to-float v4, v4

    aput v4, v0, v3

    int-to-float v3, v2

    aput v3, v0, v5

    const/4 v3, 0x2

    sub-int v4, v2, v5

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x3

    int-to-float v4, v2

    aput v4, v0, v3

    const/4 v3, 0x4

    sub-int v4, v2, v5

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x5

    int-to-float v4, v2

    aput v4, v0, v3

    const/4 v3, 0x6

    sub-int v4, v2, v5

    int-to-float v4, v4

    aput v4, v0, v3

    const/4 v3, 0x7

    int-to-float v4, v2

    aput v4, v0, v3

    .line 121
    .local v0, "outerRadii":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 122
    .local v1, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    return-object v1
.end method

.method private initAnimations()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x190

    const-wide/16 v8, 0xc8

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    .line 85
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v3, "videoControlsShowAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 88
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v3}, Lcom/nativex/monetization/theme/OriginalTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 90
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    .local v2, "videoControlsHintShowAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 93
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v2}, Lcom/nativex/monetization/theme/OriginalTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 95
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 96
    .local v1, "videoControlsHintHideAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 98
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 100
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 101
    .local v0, "videoControlsHideAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 103
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v0}, Lcom/nativex/monetization/theme/OriginalTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 105
    return-void
.end method

.method private initColors()V
    .locals 10

    .prologue
    const/16 v9, 0xc8

    const/16 v7, 0x88

    const/16 v6, 0xd0

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 69
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_TITLE_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 70
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 71
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 72
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_DURATION_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 73
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_ELAPSED_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 74
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_TITLE_CONGRATULATIONS_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 75
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_TITLE_REWARD_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/16 v1, 0xff

    const/16 v2, 0xd5

    const/16 v4, 0xdd

    invoke-static {v1, v6, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 76
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_TITLE_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v3}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 77
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_SCROLLBAR_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v3}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 78
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_NAME_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 79
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_DESCRIPTION_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 80
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/16 v1, 0xf9

    invoke-static {v9, v7, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 81
    sget-object v8, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    new-instance v0, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;

    const/16 v1, 0xf9

    invoke-static {v9, v7, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v1, 0x64

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v5, 0x40400000

    invoke-direct {p0}, Lcom/nativex/monetization/theme/OriginalTheme;->createShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nativex/monetization/theme/OriginalTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/OriginalTheme;IIIFLandroid/graphics/drawable/shapes/Shape;Lcom/nativex/monetization/theme/OriginalTheme$1;)V

    invoke-virtual {p0, v8, v0}, Lcom/nativex/monetization/theme/OriginalTheme;->setDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method private initFilenames()V
    .locals 4

    .prologue
    const-string v3, "cta_dialog_bg.9.png"

    const-string v2, "cta_close_x2.png"

    .line 51
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_DEFAULT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "mraid_CloseButton.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_bg.9.png"

    invoke-virtual {p0, v0, v3}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_close_x2.png"

    invoke-virtual {p0, v0, v2}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_offer_bg.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_button.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_button_down.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "close_button.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_WATCHED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "progress_bar_progress.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_EMPTY:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "progress_bar_empty.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_BUFFERED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "progress_bar_buffer.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_offer_bg_x2.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_SCROLLBAR_SELECTED_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dot-active@2x.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_SCROLLBAR_EMPTY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dot-inactive@2x.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_close_x2.png"

    invoke-virtual {p0, v0, v2}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_bg.9.png"

    invoke-virtual {p0, v0, v3}, Lcom/nativex/monetization/theme/OriginalTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nativex/monetization/theme/OriginalTheme;->initFilenames()V

    .line 44
    invoke-direct {p0}, Lcom/nativex/monetization/theme/OriginalTheme;->initColors()V

    .line 45
    invoke-direct {p0}, Lcom/nativex/monetization/theme/OriginalTheme;->initAnimations()V

    .line 46
    invoke-super {p0}, Lcom/nativex/monetization/theme/ThemeFromAssets;->initialize()V

    .line 47
    return-void
.end method

.class public Lcom/nativex/monetization/theme/DarkTheme;
.super Lcom/nativex/monetization/theme/ThemeFromAssets;
.source "DarkTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/theme/DarkTheme$1;,
        Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;
    }
.end annotation


# static fields
.field private static final ASSETS_FOLDER:Ljava/lang/String; = "Themes/DarkTheme/"

.field private static final SHADER_INDEX_FEATURED_BANNER:I = 0x2

.field private static final SHADER_INDEX_HISTORY:I = 0x0

.field private static final SHADER_INDEX_HISTORY_COMPLETE:I = 0x1

.field private static final SHADER_INDEX_VIDEO_PLAYER_HINT:I = 0x3

.field private static final SHAPE_INDEX_FEATURED_BANNER:I = 0x2

.field private static final SHAPE_INDEX_HISTORY:I = 0x0

.field private static final SHAPE_INDEX_HISTORY_COMPLETE:I = 0x1

.field private static final SHAPE_INDEX_VIDEO_PLAYER_HINT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nativex/monetization/theme/ThemeFromAssets;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/nativex/monetization/theme/DarkTheme;I)Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/theme/DarkTheme;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/nativex/monetization/theme/DarkTheme;->createShape(I)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nativex/monetization/theme/DarkTheme;II[II)Landroid/graphics/Shader;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/theme/DarkTheme;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nativex/monetization/theme/DarkTheme;->createShader(II[II)Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method private createFeaturedBannerShader(II[I)Landroid/graphics/Shader;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "colors"    # [I

    .prologue
    .line 242
    new-instance v0, Landroid/graphics/RadialGradient;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, p1

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 243
    .local v0, "gradient":Landroid/graphics/RadialGradient;
    return-object v0
.end method

.method private createFeaturedBannerShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 180
    const/16 v2, 0xa

    .line 181
    .local v2, "roundEdge":I
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 182
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000

    invoke-static {v3, v4}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v2

    .line 184
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

    .line 193
    .local v0, "outerRadii":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 194
    .local v1, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    return-object v1
.end method

.method private createHistoryCompleteShader(II[I)Landroid/graphics/Shader;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "colors"    # [I

    .prologue
    const/4 v1, 0x0

    .line 223
    mul-int/lit8 v2, p1, 0x2

    div-int/lit8 v8, v2, 0x3

    .line 224
    .local v8, "gradientX":I
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, v8

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 225
    .local v0, "gradient":Landroid/graphics/LinearGradient;
    return-object v0
.end method

.method private createHistoryCompleteShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 202
    const/16 v2, 0xa

    .line 203
    .local v2, "roundEdge":I
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 204
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000

    invoke-static {v3, v4}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v2

    .line 206
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

    .line 215
    .local v0, "outerRadii":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 216
    .local v1, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    return-object v1
.end method

.method private createHistoryShader(II[I)Landroid/graphics/Shader;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "colors"    # [I

    .prologue
    const/4 v1, 0x0

    .line 233
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x41a00000

    const/4 v2, 0x2

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000
        0x3e4ccccd
    .end array-data
.end method

.method private createHistoryShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method private createShader(II[II)Landroid/graphics/Shader;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "colors"    # [I
    .param p4, "shaderIndex"    # I

    .prologue
    .line 164
    packed-switch p4, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nativex/monetization/theme/DarkTheme;->createHistoryShader(II[I)Landroid/graphics/Shader;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nativex/monetization/theme/DarkTheme;->createHistoryCompleteShader(II[I)Landroid/graphics/Shader;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/nativex/monetization/theme/DarkTheme;->createFeaturedBannerShader(II[I)Landroid/graphics/Shader;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/nativex/monetization/theme/DarkTheme;->createVideoPlayerHintShader(II[I)Landroid/graphics/Shader;

    move-result-object v0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createShape(I)Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .param p1, "shapeIndex"    # I

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_0

    .line 156
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    :goto_0
    return-object v0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->createHistoryShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->createHistoryCompleteShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->createFeaturedBannerShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private createVideoPlayerHintShader(II[I)Landroid/graphics/Shader;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "colors"    # [I

    .prologue
    .line 250
    new-instance v0, Landroid/graphics/RadialGradient;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x3

    int-to-float v3, v3

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 251
    .local v0, "gradient":Landroid/graphics/RadialGradient;
    return-object v0
.end method

.method private initAnimations()V
    .locals 14

    .prologue
    .line 112
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    invoke-direct {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 113
    .local v13, "videoControlsHintShowAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 115
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v13}, Lcom/nativex/monetization/theme/DarkTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 117
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v12, "videoControlsHintHideAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x190

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 120
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v12}, Lcom/nativex/monetization/theme/DarkTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 122
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 123
    .local v0, "videoControlsProgressShowAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 125
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAYER_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v0}, Lcom/nativex/monetization/theme/DarkTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 127
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 128
    .local v1, "videoControlsProgressHideAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 130
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAYER_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v1}, Lcom/nativex/monetization/theme/DarkTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 132
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 133
    .local v2, "videoControlsCloseShowAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 134
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 135
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_CLOSE_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v2}, Lcom/nativex/monetization/theme/DarkTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 137
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, -0x40800000

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 138
    .local v3, "videoControlsCloseHideAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 139
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 140
    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_CLOSE_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v4, v3}, Lcom/nativex/monetization/theme/DarkTheme;->setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V

    .line 142
    return-void
.end method

.method private initColors()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xaa

    const/4 v5, -0x1

    .line 92
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_TITLE_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 93
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 94
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 95
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_DURATION_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 96
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_ELAPSED_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 97
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_TITLE_CONGRATULATIONS_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 98
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_TITLE_REWARD_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/16 v1, 0xff

    const/16 v2, 0xd0

    const/16 v3, 0xd5

    const/16 v4, 0xdd

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 99
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_TITLE_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v7}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 100
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_SCROLLBAR_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v7}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 101
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_NAME_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 102
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_DESCRIPTION_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p0, v0, v5}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 103
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const/16 v1, 0x78

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V

    .line 105
    return-void
.end method

.method private initDrawables()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/16 v2, 0xaa

    const/4 v3, 0x0

    .line 108
    sget-object v9, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    new-instance v0, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;

    const/16 v1, 0x78

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v1, 0x64

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v5, 0x40400000

    const/4 v8, 0x0

    move-object v1, p0

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/nativex/monetization/theme/DarkTheme$CustomShapeDrawable;-><init>(Lcom/nativex/monetization/theme/DarkTheme;IIIFIILcom/nativex/monetization/theme/DarkTheme$1;)V

    invoke-virtual {p0, v9, v0}, Lcom/nativex/monetization/theme/DarkTheme;->setDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method private initFilenames()V
    .locals 5

    .prologue
    const-string v4, "cta_offer_bg.png"

    const-string v3, "cta_dialog_bg.9.png"

    const-string v2, "cta_close_x2.png"

    .line 57
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_bg.9.png"

    invoke-super {p0, v0, v3}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_close_x2.png"

    invoke-super {p0, v0, v2}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "close_button.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_WATCHED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "progress_bar_progress.9.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_EMPTY:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "progress_bar_empty.9.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_BACKGROUND_BUFFERED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "progress_bar_buffer.9.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_SCROLLBAR_SELECTED_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dot-active@2x.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_SCROLLBAR_EMPTY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dot-inactive@2x.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_close_x2.png"

    invoke-super {p0, v0, v2}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAY_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "video_player_controls_play.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PAUSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "video_player_controls_pause.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_DEFAULT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "mraid_CloseButton.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDeviceScreenSize()Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    if-ne v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "featured_offer_button_normal_small.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "featured_offer_button_pressed_small.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "featured_offer_offer_layout_small.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "dialog_background_small.9.png"

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/theme/DarkTheme;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_bg.9.png"

    invoke-super {p0, v0, v3}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_ACTION_DIALOG_OFFER_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_offer_bg.png"

    invoke-super {p0, v0, v4}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_BODY_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_offer_bg.png"

    invoke-super {p0, v0, v4}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_PRESSED:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_button_down.9.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MESSAGE_DIALOG_OK_BUTTON_BACKGROUND_NORMAL:Lcom/nativex/monetization/theme/ThemeElementTypes;

    const-string v1, "cta_dialog_button.9.png"

    invoke-super {p0, v0, v1}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Themes/DarkTheme/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/nativex/monetization/theme/ThemeFromAssets;->addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->initFilenames()V

    .line 49
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->initColors()V

    .line 50
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->initDrawables()V

    .line 51
    invoke-direct {p0}, Lcom/nativex/monetization/theme/DarkTheme;->initAnimations()V

    .line 52
    invoke-super {p0}, Lcom/nativex/monetization/theme/ThemeFromAssets;->initialize()V

    .line 53
    return-void
.end method

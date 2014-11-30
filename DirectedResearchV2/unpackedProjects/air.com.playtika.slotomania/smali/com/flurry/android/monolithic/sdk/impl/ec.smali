.class public Lcom/flurry/android/monolithic/sdk/impl/ec;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ec;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ec;->setFocusable(Z)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;II)Lcom/mobclix/android/sdk/MobclixAdView;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 38
    const/16 v0, 0x140

    if-lt p3, v0, :cond_0

    const/16 v0, 0x32

    if-lt p2, v0, :cond_0

    .line 40
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ec;->a:Ljava/lang/String;

    const-string v1, "Determined Mobclix AdSize as BANNER"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;-><init>(Landroid/content/Context;)V

    .line 51
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const/16 v0, 0x12c

    if-lt p3, v0, :cond_1

    const/16 v0, 0xfa

    if-lt p2, v0, :cond_1

    .line 45
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ec;->a:Ljava/lang/String;

    const-string v1, "Determined Mobclix AdSize as IAB_RECT"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/mobclix/android/sdk/MobclixIABRectangleMAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/mobclix/android/sdk/MobclixIABRectangleMAdView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ec;->a:Ljava/lang/String;

    const-string v1, "Could not find Mobclix AdSize that matches size"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ec;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout()V
    .locals 7

    .prologue
    const/16 v5, 0x12c

    const/16 v3, 0x32

    const/high16 v4, 0x3f000000

    .line 58
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ec;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ec;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ec;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a(Landroid/content/Context;II)Lcom/mobclix/android/sdk/MobclixAdView;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ed;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ed;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ec;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z

    .line 122
    instance-of v1, v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    if-eqz v1, :cond_1

    move v1, v3

    move v2, v5

    .line 127
    :goto_0
    instance-of v3, v0, Lcom/mobclix/android/sdk/MobclixIABRectangleMAdView;

    if-eqz v3, :cond_0

    .line 129
    const/16 v1, 0x140

    .line 130
    const/16 v2, 0xfa

    move v6, v2

    move v2, v1

    move v1, v6

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ec;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 134
    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 135
    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 136
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/MobclixAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ec;->setGravity(I)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ec;->addView(Landroid/view/View;)V

    .line 143
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 144
    return-void

    :cond_1
    move v1, v3

    move v2, v5

    goto :goto_0
.end method

.class public final Lcom/flurry/android/monolithic/sdk/impl/dg;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/dg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/dg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;)V

    .line 35
    const-string v0, "com.flurry.admob.MY_AD_UNIT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->f:Ljava/lang/String;

    .line 36
    const-string v0, "com.flurry.admob.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->g:Ljava/lang/String;

    .line 37
    const-string v0, "com.flurry.admob.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->h:Z

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/dg;->setFocusable(Z)V

    .line 39
    return-void
.end method

.method private a(II)Lcom/google/ads/AdSize;
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x2d8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-lt p2, v0, :cond_0

    .line 45
    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    .line 62
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/16 v0, 0x1d4

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_1

    .line 49
    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_0

    .line 51
    :cond_1
    const/16 v0, 0x140

    if-lt p1, v0, :cond_2

    const/16 v0, 0x32

    if-lt p2, v0, :cond_2

    .line 53
    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    goto :goto_0

    .line 55
    :cond_2
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_3

    const/16 v0, 0xfa

    if-lt p2, v0, :cond_3

    .line 57
    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_0

    .line 61
    :cond_3
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/dg;->a:Ljava/lang/String;

    const-string v2, "Could not find AdMob AdSize that matches size"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;II)Lcom/google/ads/AdSize;
    .locals 3

    .prologue
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 137
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 139
    if-lez p2, :cond_0

    if-le p2, v0, :cond_2

    .line 140
    :cond_0
    :goto_0
    if-lez p3, :cond_1

    if-le p3, v1, :cond_3

    .line 142
    :cond_1
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a(II)Lcom/google/ads/AdSize;

    move-result-object v0

    .line 144
    return-object v0

    :cond_2
    move v0, p2

    .line 139
    goto :goto_0

    :cond_3
    move v1, p3

    .line 140
    goto :goto_1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dg;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout()V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const-string v9, "}"

    .line 68
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dg;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dg;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    .line 70
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dg;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v3

    .line 71
    invoke-direct {p0, v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a(Landroid/content/Context;II)Lcom/google/ads/AdSize;

    move-result-object v4

    .line 72
    if-nez v4, :cond_0

    .line 73
    const/4 v2, 0x6

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/dg;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find Admob AdSize that matches {width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", height "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/dg;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Determined Admob AdSize as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that best matches {width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", height = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v5, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v3, Lcom/google/ads/AdView;

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->f:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/di;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/flurry/android/monolithic/sdk/impl/di;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dg;Lcom/flurry/android/monolithic/sdk/impl/dh;)V

    invoke-virtual {v3, v1}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 84
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->setGravity(I)V

    .line 85
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v2}, Lcom/google/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v2}, Lcom/google/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    .line 90
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->h:Z

    if-eqz v2, :cond_1

    .line 91
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/dg;->a:Ljava/lang/String;

    const-string v4, "Admob AdView set to Test Mode."

    invoke-static {v8, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 94
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dg;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 99
    :cond_1
    invoke-virtual {v3, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_0
.end method

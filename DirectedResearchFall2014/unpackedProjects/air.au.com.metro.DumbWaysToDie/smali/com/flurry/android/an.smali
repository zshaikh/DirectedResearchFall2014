.class final Lcom/flurry/android/an;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final P:Z

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/android/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;)V

    .line 28
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/an;->g:Ljava/lang/String;

    .line 29
    const-string v0, "com.flurry.inmobi.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/an;->P:Z

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/an;->setFocusable(Z)V

    .line 31
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/16 v7, 0xa

    const/high16 v6, 0x3f00

    const/16 v4, 0x140

    const/16 v3, 0x32

    const/4 v5, -0x1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 72
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 81
    const/16 v2, 0x2d8

    if-lt v0, v2, :cond_4

    const/16 v2, 0x5a

    if-lt v1, v2, :cond_4

    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 728x90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 83
    :goto_0
    if-eq v0, v5, :cond_9

    .line 86
    new-instance v1, Lcom/inmobi/androidsdk/IMAdView;

    check-cast p1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/an;->g:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 91
    const/16 v2, 0xf

    if-ne v0, v2, :cond_b

    move v2, v3

    move v3, v4

    .line 96
    :goto_1
    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    .line 98
    const/16 v2, 0x2d8

    .line 99
    const/16 v3, 0x5a

    move v8, v3

    move v3, v2

    move v2, v8

    .line 101
    :cond_0
    const/16 v4, 0xc

    if-ne v0, v4, :cond_1

    .line 103
    const/16 v2, 0x1d4

    .line 104
    const/16 v3, 0x3c

    move v8, v3

    move v3, v2

    move v2, v8

    .line 106
    :cond_1
    if-ne v0, v7, :cond_2

    .line 108
    const/16 v2, 0x12c

    .line 109
    const/16 v3, 0xfa

    move v8, v3

    move v3, v2

    move v2, v8

    .line 111
    :cond_2
    const/16 v4, 0xd

    if-ne v0, v4, :cond_a

    .line 113
    const/16 v0, 0x78

    .line 114
    const/16 v2, 0x258

    move v8, v2

    move v2, v0

    move v0, v8

    .line 118
    :goto_2
    invoke-virtual {p0}, Lcom/flurry/android/an;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 119
    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 120
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 121
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/inmobi/androidsdk/IMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Lcom/flurry/android/as;

    invoke-direct {v0, p0}, Lcom/flurry/android/as;-><init>(Lcom/flurry/android/an;)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V

    .line 162
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/an;->setGravity(I)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/flurry/android/an;->addView(Landroid/view/View;)V

    .line 167
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 168
    iget-boolean v2, p0, Lcom/flurry/android/an;->P:Z

    if-eqz v2, :cond_3

    .line 170
    sget-object v2, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v3, "InMobi AdView set to Test Mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 173
    :cond_3
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 176
    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 179
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 185
    :goto_3
    return-void

    .line 81
    :cond_4
    const/16 v2, 0x1d4

    if-lt v0, v2, :cond_5

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_5

    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 468x60"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_5
    if-lt v0, v4, :cond_6

    if-lt v1, v3, :cond_6

    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 320x50"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_7

    const/16 v2, 0xfa

    if-lt v1, v2, :cond_7

    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 300x250"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x78

    if-lt v0, v2, :cond_8

    const/16 v0, 0x258

    if-lt v1, v0, :cond_8

    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 120x600"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "Could not find InMobi AdSize that matches size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto/16 :goto_0

    .line 183
    :cond_9
    sget-object v0, Lcom/flurry/android/an;->d:Ljava/lang/String;

    const-string v1, "**********Could not load InMobi Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move v0, v2

    move v2, v3

    goto/16 :goto_2

    :cond_b
    move v2, v3

    move v3, v4

    goto/16 :goto_1
.end method

.class public Lcom/inmobi/activity/InMobiAdActivity;
.super Landroid/app/Activity;
.source "InMobiAdActivity.java"


# instance fields
.field private a:Lcom/inmobi/androidsdk/IMAdView;

.field private b:Lcom/inmobi/androidsdk/IMAdInterstitial;

.field private c:Lcom/inmobi/androidsdk/IMAdRequest;

.field private d:Lcom/inmobi/androidsdk/IMAdListener;

.field private e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    new-instance v0, Lcom/inmobi/activity/InMobiAdActivity$1;

    invoke-direct {v0, p0}, Lcom/inmobi/activity/InMobiAdActivity$1;-><init>(Lcom/inmobi/activity/InMobiAdActivity;)V

    iput-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->d:Lcom/inmobi/androidsdk/IMAdListener;

    .line 156
    new-instance v0, Lcom/inmobi/activity/InMobiAdActivity$2;

    invoke-direct {v0, p0}, Lcom/inmobi/activity/InMobiAdActivity$2;-><init>(Lcom/inmobi/activity/InMobiAdActivity;)V

    iput-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/inmobi/activity/InMobiAdActivity;)Lcom/inmobi/androidsdk/IMAdView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/activity/InMobiAdActivity;)Lcom/inmobi/androidsdk/IMAdInterstitial;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->b:Lcom/inmobi/androidsdk/IMAdInterstitial;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/activity/InMobiAdActivity;)Lcom/inmobi/androidsdk/IMAdRequest;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->c:Lcom/inmobi/androidsdk/IMAdRequest;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/InMobiAdActivity;->setContentView(I)V

    .line 34
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->c:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 35
    sget-object v0, Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/IMCommonUtil;->setLogLevel(Lcom/inmobi/commons/IMCommonUtil$LOG_LEVEL;)V

    .line 36
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/InMobiAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/IMAdView;

    iput-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 37
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    const-string v1, "#00ff00"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->setAdBackgroundColor(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    const-string v1, "#000"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->setAdTextColor(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/activity/InMobiAdActivity;->d:Lcom/inmobi/androidsdk/IMAdListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V

    .line 41
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->c:Lcom/inmobi/androidsdk/IMAdRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 43
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/activity/InMobiAdActivity;->c:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 46
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 48
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->a:Lcom/inmobi/androidsdk/IMAdView;

    const-string v1, "hELLO"

    const-string v2, "World"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "InMobiAdActivity onCreate Exit"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 52
    const-string v1, "4028cba630724cd9013167ce6d340e9c"

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 51
    iput-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->b:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 53
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->b:Lcom/inmobi/androidsdk/IMAdInterstitial;

    iget-object v1, p0, Lcom/inmobi/activity/InMobiAdActivity;->e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V

    .line 79
    return-void
.end method

.method public onGetInAd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/inmobi/activity/InMobiAdActivity$4;

    invoke-direct {v0, p0}, Lcom/inmobi/activity/InMobiAdActivity$4;-><init>(Lcom/inmobi/activity/InMobiAdActivity;)V

    .line 96
    invoke-virtual {v0}, Lcom/inmobi/activity/InMobiAdActivity$4;->start()V

    .line 98
    return-void
.end method

.method public onRefreshAd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/inmobi/activity/InMobiAdActivity$3;

    invoke-direct {v0, p0}, Lcom/inmobi/activity/InMobiAdActivity$3;-><init>(Lcom/inmobi/activity/InMobiAdActivity;)V

    .line 87
    invoke-virtual {v0}, Lcom/inmobi/activity/InMobiAdActivity$3;->start()V

    .line 89
    return-void
.end method

.method public onShowInAd(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/activity/InMobiAdActivity;->b:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

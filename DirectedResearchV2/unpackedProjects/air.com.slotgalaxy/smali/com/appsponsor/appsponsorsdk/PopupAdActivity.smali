.class public Lcom/appsponsor/appsponsorsdk/PopupAdActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;,
        Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x12c

.field private static final DEFAULT_WIDTH:I = 0x12c

.field public static final EXTRA_CLICK_URL:Ljava/lang/String; = "click_url"

.field public static final EXTRA_CUSTOM_FRAME:Ljava/lang/String; = "custom_frame"

.field public static final EXTRA_EXTERNAL_ARGS:Ljava/lang/String; = "external_args"

.field public static final EXTRA_FORCE_ROTATE:Ljava/lang/String; = "force_rotate"

.field public static final EXTRA_HEIGHT:Ljava/lang/String; = "height"

.field public static final EXTRA_HTML:Ljava/lang/String; = "html"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_ROTATION:Ljava/lang/String; = "rotation"

.field public static final EXTRA_WIDTH:Ljava/lang/String; = "width"

.field public static final EXTRA_WIN_URL:Ljava/lang/String; = "win_url"

.field private static final MAX_SMALL_SIZE:I = 0x186

.field public static final RESULT_AD_FINISHED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PopupAdActivity"


# instance fields
.field private adUrl:Ljava/lang/String;

.field private clickThroughUrl:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private external_args:Ljava/lang/String;

.field private forceRotate:Z

.field private frameEncoded:Ljava/lang/String;

.field private orientation:I

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private rotation:I

.field private voxelCampaignID:I

.field private voxelInterstitialEnabled:I

.field private webview:Landroid/webkit/WebView;

.field private winUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->orientation:I

    iput v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->rotation:I

    iput-boolean v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->forceRotate:Z

    const-string v0, ""

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->winUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->external_args:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickThroughUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    iput v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    iput v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelInterstitialEnabled:I

    return-void
.end method

.method static synthetic access$100(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->winUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSub4String()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finishPopup()V

    return-void
.end method

.method static synthetic access$400(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)I
    .locals 1

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    return v0
.end method

.method static synthetic access$600(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;

    return-object p1
.end method

.method private finishPopup()V
    .locals 2

    const/4 v0, 0x3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->setResult(ILandroid/content/Intent;)V

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->popupAdListener:Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;

    invoke-interface {v0}, Lcom/appsponsor/appsponsorsdk/PopupAd$PopupAdListener;->willDisappear()V

    :cond_0
    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->autoDisplay:Z

    sget-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;->MNGAdStateCreated:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/PopupAd;->state:Lcom/appsponsor/appsponsorsdk/PopupAd$AdState;

    return-void
.end method

.method private getSub4String()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    if-lez v1, :cond_1

    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->canDisplayAd()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sub4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lockOrientation()V
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFJWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    move v0, v3

    move v1, v2

    :goto_0
    iget v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->orientation:I

    packed-switch v2, :pswitch_data_0

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->orientation:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->setRequestedOrientation(I)V

    return-void

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->rotation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->rotation:I

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1

    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_6

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->rotation:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->rotation:I

    if-ne v1, v0, :cond_5

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    move v1, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    const/high16 v1, 0x43960000

    const/high16 v2, 0x43960000

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_14

    const-string v0, "html"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    const/16 v2, 0x12c

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const-string v2, "height"

    const/16 v4, 0x12c

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const-string v4, "orientation"

    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->orientation:I

    const-string v4, "rotation"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->rotation:I

    const-string v4, "force_rotate"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->forceRotate:Z

    const-string v4, "win_url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->winUrl:Ljava/lang/String;

    const-string v4, "external_args"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->external_args:Ljava/lang/String;

    const-string v4, "click_url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->clickUrl:Ljava/lang/String;

    const-string v4, "custom_frame"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->external_args:Ljava/lang/String;

    const-string v4, ""

    if-eq v3, v4, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->external_args:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "VXLClientConnectionOptionCampaignId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    const-string v4, "VXLInterstitialEnabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelInterstitialEnabled:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finish()V

    :goto_2
    return-void

    :cond_3
    iget v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelInterstitialEnabled:I

    if-lez v3, :cond_4

    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->canDisplayAd()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->voxelCampaignID:I

    int-to-long v0, v0

    new-instance v2, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;

    invoke-direct {v2, p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;JLcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->forceRotate:Z

    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->lockOrientation()V

    :goto_3
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x1000000

    const/high16 v7, 0x1000000

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v5, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    const v7, -0xbbbbbc

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v5, v7, :cond_9

    const v5, 0x3f4ccccd

    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    iget-object v5, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x101

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    const/high16 v7, 0x43c30000

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    if-le v7, v6, :cond_a

    const/4 v6, 0x1

    :goto_5
    cmpl-float v7, v3, v4

    if-lez v7, :cond_b

    const/4 v7, 0x1

    :goto_6
    if-eqz v6, :cond_d

    if-eqz v7, :cond_c

    sget-object v6, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->FRAME_LANDSCAPE:Lcom/appsponsor/appsponsorsdk/resource/Drawables;

    invoke-virtual {v6, p0}, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    const/16 v7, 0x2ee

    const/16 v8, 0x230

    move v12, v8

    move-object v8, v6

    move v6, v12

    :goto_7
    iget-object v9, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    :cond_6
    iget-object v9, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_10

    iget-object v8, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->frameEncoded:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/appsponsor/appsponsorsdk/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-nez v8, :cond_7

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_f

    :cond_7
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    int-to-float v7, v7

    div-float v7, v1, v7

    mul-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v6, v6

    div-float v6, v0, v6

    mul-float/2addr v6, v9

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v6, v9

    const/4 v9, 0x0

    invoke-static {v8, v7, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v3, v1

    mul-float/2addr v1, v7

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v4, v0

    mul-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v0, v7

    const/4 v7, 0x0

    invoke-static {v6, v1, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_8
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$2;

    invoke-direct {v1, p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$2;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    :goto_a
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const-string v0, "<img[^>]+src\\s*=\\s*[\'\"]([^\'\"]+)[\'\"][^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_13

    sget-object v6, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Lcom/appsponsor/appsponsorsdk/PopupAd;->adImageMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    if-eq p1, v1, :cond_13

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data:image;base64,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const-string v5, "text/html; charset=utf-8"

    const-string v6, "base64"

    invoke-virtual {v2, v1, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_c
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, -0xf

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0xf

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v1, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->CLOSE_BUTTON_SMALL:Lcom/appsponsor/appsponsorsdk/resource/Drawables;

    invoke-virtual {v1, p0}, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$3;

    invoke-direct {v1, p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$3;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->winUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->getSub4String()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$WinURLPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;

    invoke-direct {v1, p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$4;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_8
    iget v3, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->orientation:I

    invoke-virtual {p0, v3}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    :cond_9
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const v8, 0x3f4ccccd

    invoke-direct {v5, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x3

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_4

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_c
    sget-object v6, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->FRAME_PORTRAIT:Lcom/appsponsor/appsponsorsdk/resource/Drawables;

    invoke-virtual {v6, p0}, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    const/16 v7, 0x230

    const/16 v8, 0x2ee

    move v12, v8

    move-object v8, v6

    move v6, v12

    goto/16 :goto_7

    :cond_d
    if-eqz v7, :cond_e

    sget-object v6, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->FRAME_SMALL_LANDSCAPE:Lcom/appsponsor/appsponsorsdk/resource/Drawables;

    invoke-virtual {v6, p0}, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    const/16 v7, 0x186

    const/16 v8, 0xc8

    move v12, v8

    move-object v8, v6

    move v6, v12

    goto/16 :goto_7

    :cond_e
    sget-object v6, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->FRAME_SMALL_PORTRAIT:Lcom/appsponsor/appsponsorsdk/resource/Drawables;

    invoke-virtual {v6, p0}, Lcom/appsponsor/appsponsorsdk/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    const/16 v7, 0xf0

    const/16 v8, 0x15e

    move v12, v8

    move-object v8, v6

    move v6, v12

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v3, v1

    mul-float/2addr v1, v7

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v4, v0

    mul-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v0, v7

    const/4 v7, 0x0

    invoke-static {v6, v1, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42100000

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42100000

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_9

    :cond_11
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto/16 :goto_a

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v5, "utf-8"

    invoke-virtual {v1, v0, v2, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12
    new-instance v0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Landroid/app/Activity;Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_1

    :cond_13
    move-object v0, v2

    goto/16 :goto_b

    :cond_14
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->webview:Landroid/webkit/WebView;

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "PopupAdActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.class abstract Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;
.super Landroid/app/Activity;
.source "BaseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
    }
.end annotation


# static fields
.field public static final ACTION_INTERSTITIAL_CLICK:Ljava/lang/String; = "com.mopub.action.interstitial.click"

.field public static final ACTION_INTERSTITIAL_DISMISS:Ljava/lang/String; = "com.mopub.action.interstitial.dismiss"

.field public static final ACTION_INTERSTITIAL_FAIL:Ljava/lang/String; = "com.mopub.action.interstitial.fail"

.field public static final ACTION_INTERSTITIAL_SHOW:Ljava/lang/String; = "com.mopub.action.interstitial.show"

.field private static final CLOSE_BUTTON_PADDING:F = 8.0f

.field private static final CLOSE_BUTTON_SIZE:F = 50.0f

.field public static final HTML_INTERSTITIAL_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mButtonPadding:I

.field private mButtonSize:I

.field private mCloseButton:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->createHtmlInterstitialIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->HTML_INTERSTITIAL_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 78
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static createHtmlInterstitialIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "com.mopub.action.interstitial.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method private createInterstitialCloseButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 147
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 148
    .local v1, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v5, [I

    const v3, -0x10100a7

    aput v3, v2, v4

    sget-object v3, Lcom/fusepowered/m2/m2l/resource/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v3, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    sget-object v3, Lcom/fusepowered/m2/m2l/resource/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v3, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$1;

    invoke-direct {v3, p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$1;-><init>(Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mButtonSize:I

    iget v3, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mButtonSize:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, "buttonLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mButtonPadding:I

    iget v3, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mButtonPadding:I

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected broadcastInterstitialAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 124
    return-void
.end method

.method protected getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;
    .locals 4

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Ad-Configuration"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/m2l/AdConfiguration;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .local v0, "adConfiguration":Lcom/fusepowered/m2/m2l/AdConfiguration;
    :goto_0
    return-object v0

    .line 130
    .end local v0    # "adConfiguration":Lcom/fusepowered/m2/m2l/AdConfiguration;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 131
    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    .restart local v0    # "adConfiguration":Lcom/fusepowered/m2/m2l/AdConfiguration;
    goto :goto_0
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method protected hideInterstitialCloseButton()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 94
    const/high16 v1, 0x42480000

    invoke-static {v1, p0}, Lcom/fusepowered/m2/m2l/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mButtonSize:I

    .line 95
    const/high16 v1, 0x41000000

    invoke-static {v1, p0}, Lcom/fusepowered/m2/m2l/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mButtonPadding:I

    .line 97
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 98
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, "adViewLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 104
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->createInterstitialCloseButton()V

    .line 105
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    return-void
.end method

.method protected showInterstitialCloseButton()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    return-void
.end method

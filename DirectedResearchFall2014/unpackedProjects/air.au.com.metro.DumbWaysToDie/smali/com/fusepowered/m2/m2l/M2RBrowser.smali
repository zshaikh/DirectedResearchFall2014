.class public Lcom/fusepowered/m2/m2l/M2RBrowser;
.super Landroid/app/Activity;
.source "MraidBrowser.java"


# static fields
.field public static final INNER_LAYOUT_ID:I = 0x1

.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mRefreshButton:Landroid/widget/ImageButton;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/M2RBrowser;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/M2RBrowser;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mBackButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/M2RBrowser;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private enableCookies()V
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 203
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 204
    return-void
.end method

.method private getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, -0x2

    .line 257
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "imageButton":Landroid/widget/ImageButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 260
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-object v0
.end method

.method private getMraidBrowserView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v7, -0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 219
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v4, "mraidBrowserView":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v0, "browserLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .local v5, "outerLayout":Landroid/widget/RelativeLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v6, "outerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    .local v1, "innerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 231
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v2, "innerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    sget-object v7, Lcom/fusepowered/m2/m2l/resource/Drawables;->BACKGROUND:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v7, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 237
    sget-object v7, Lcom/fusepowered/m2/m2l/resource/Drawables;->LEFT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v7, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mBackButton:Landroid/widget/ImageButton;

    .line 238
    sget-object v7, Lcom/fusepowered/m2/m2l/resource/Drawables;->RIGHT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v7, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;

    .line 239
    sget-object v7, Lcom/fusepowered/m2/m2l/resource/Drawables;->REFRESH:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v7, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    .line 240
    sget-object v7, Lcom/fusepowered/m2/m2l/resource/Drawables;->CLOSE:Lcom/fusepowered/m2/m2l/resource/Drawables;

    invoke-virtual {v7, p0}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mCloseButton:Landroid/widget/ImageButton;

    .line 242
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    .line 248
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 253
    return-object v4
.end method

.method private initializeButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 173
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidBrowser$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidBrowser$3;-><init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 180
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidBrowser$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidBrowser$4;-><init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 187
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidBrowser$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidBrowser$5;-><init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 194
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidBrowser$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidBrowser$6;-><init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 96
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 106
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    const-string v2, "extra_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/fusepowered/m2/m2l/MraidBrowser$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/m2l/MraidBrowser$1;-><init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 161
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/M2RBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/fusepowered/m2/m2l/MraidBrowser$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/m2/m2l/MraidBrowser$2;-><init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 85
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getMraidBrowserView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/M2RBrowser;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->initializeWebView(Landroid/content/Intent;)V

    .line 89
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->initializeButtons()V

    .line 90
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->enableCookies()V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 209
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 215
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 216
    return-void
.end method

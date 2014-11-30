.class public Lcom/facebook/widget/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# static fields
.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final USER_AGENT:Ljava/lang/String; = "user_agent"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private isDetached:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 82
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 120
    iput-object p2, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 82
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 135
    if-nez p3, :cond_0

    .line 136
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 140
    :cond_0
    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "display"

    const-string v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/WebDialog;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private calculateSize()V
    .locals 6

    .prologue
    const/16 v5, 0x320

    .line 250
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 251
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 256
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 257
    :goto_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 259
    :goto_1
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/facebook/widget/WebDialog;->getScaledSize(IFII)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 262
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/facebook/widget/WebDialog;->getScaledSize(IFII)I

    move-result v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 266
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 267
    return-void

    .line 256
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 257
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method private createCrossImage()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 322
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/widget/WebDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/WebDialog$3;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$drawable;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    return-void
.end method

.method private getScaledSize(IFII)I
    .locals 6

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L

    .line 278
    int-to-float v2, p1

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 280
    if-gt v2, p3, :cond_1

    .line 281
    const-wide/high16 v0, 0x3ff0000000000000L

    .line 292
    :cond_0
    :goto_0
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 282
    :cond_1
    if-ge v2, p4, :cond_0

    .line 287
    sub-int v2, p4, v2

    int-to-double v2, v2

    sub-int v4, p4, p3

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private sendCancelToListener()V
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 317
    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 306
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 307
    check-cast p1, Lcom/facebook/FacebookException;

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 313
    :cond_0
    return-void

    .line 309
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 298
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 300
    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 339
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 340
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    .line 341
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 342
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 343
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/widget/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 344
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 345
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 350
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 352
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    const/high16 v1, -0x34000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 355
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 356
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 181
    :cond_2
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 192
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 197
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 199
    new-instance v0, Lcom/facebook/widget/WebDialog$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/WebDialog$1;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 206
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 207
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 208
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$string;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/widget/WebDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/WebDialog$2;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/facebook/widget/WebDialog;->requestWindowFeature(I)Z

    .line 218
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 221
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->calculateSize()V

    .line 222
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 225
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 231
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->createCrossImage()V

    .line 236
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 238
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/widget/WebDialog;->setUpWebView(I)V

    .line 243
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog;->setContentView(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 186
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 187
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .line 159
    return-void
.end method

.class public Lcom/facebook/widget/WebDialog;
.super Lcom/facebook/ane/AneDialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/WebDialog$Builder;,
        Lcom/facebook/widget/WebDialog$BuilderBase;,
        Lcom/facebook/widget/WebDialog$DialogWebViewClient;,
        Lcom/facebook/widget/WebDialog$FeedDialogBuilder;,
        Lcom/facebook/widget/WebDialog$OnCompleteListener;,
        Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    }
.end annotation


# static fields
.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_BUFFER_SCREEN_WIDTH:I = 0x400

.field private static final MIN_SCALE_FACTOR:D = 0.6

.field private static final NO_BUFFER_SCREEN_WIDTH:I = 0x200

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p3}, Lcom/facebook/ane/AneDialog;-><init>(Landroid/content/Context;I)V

    .line 88
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 89
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 125
    iput-object p2, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "theme"    # I
    .param p5, "listener"    # Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p4}, Lcom/facebook/ane/AneDialog;-><init>(Landroid/content/Context;I)V

    .line 88
    iput-boolean v1, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 89
    iput-boolean v1, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 140
    if-nez p3, :cond_0

    .line 141
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 143
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_0
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dialog/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .line 149
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/widget/WebDialog;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$4(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCrossImage()V
    .locals 4

    .prologue
    .line 300
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 302
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/facebook/widget/WebDialog$3;

    invoke-direct {v2, p0}, Lcom/facebook/widget/WebDialog$3;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 311
    sget-object v1, Lcom/facebook/widget/WebDialog;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/widget/WebDialog;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "drawable.com_facebook_close"

    invoke-virtual {v1, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 310
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 312
    .local v0, "crossDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    return-void

    .line 311
    .end local v0    # "crossDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v1, 0x7f02000a

    goto :goto_0
.end method

.method private getMargins()Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 250
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 251
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 252
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 253
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 254
    .local v8, "width":I
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 257
    .local v1, "height":I
    int-to-float v10, v8

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 258
    .local v6, "scaledWidth":I
    const/16 v10, 0x200

    if-gt v6, v10, :cond_0

    .line 259
    const-wide/high16 v4, 0x3ff0000000000000L

    .line 269
    .local v4, "scaleFactor":D
    :goto_0
    int-to-double v10, v8

    const-wide/high16 v12, 0x3ff0000000000000L

    sub-double/2addr v12, v4

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L

    div-double/2addr v10, v12

    double-to-int v2, v10

    .line 270
    .local v2, "leftRightMargin":I
    int-to-double v10, v1

    const-wide/high16 v12, 0x3ff0000000000000L

    sub-double/2addr v12, v4

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L

    div-double/2addr v10, v12

    double-to-int v7, v10

    .line 272
    .local v7, "topBottomMargin":I
    new-instance v10, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    .line 260
    .end local v2    # "leftRightMargin":I
    .end local v4    # "scaleFactor":D
    .end local v7    # "topBottomMargin":I
    :cond_0
    const/16 v10, 0x400

    if-lt v6, v10, :cond_1

    .line 261
    const-wide v4, 0x3fe3333333333333L

    .line 262
    .restart local v4    # "scaleFactor":D
    goto :goto_0

    .line 265
    .end local v4    # "scaleFactor":D
    :cond_1
    const-wide v10, 0x3fe3333333333333L

    rsub-int v12, v6, 0x400

    int-to-double v12, v12

    const-wide/high16 v14, 0x4080000000000000L

    div-double/2addr v12, v14

    .line 266
    const-wide v14, 0x3fd999999999999aL

    mul-double/2addr v12, v14

    .line 265
    add-double v4, v10, v12

    .restart local v4    # "scaleFactor":D
    goto :goto_0
.end method

.method private sendCancelToListener()V
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v1, :cond_0

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "facebookException":Lcom/facebook/FacebookException;
    instance-of v1, p1, Lcom/facebook/FacebookException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/facebook/FacebookException;

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 293
    .end local v0    # "facebookException":Lcom/facebook/FacebookException;
    :cond_0
    return-void

    .line 289
    .restart local v0    # "facebookException":Lcom/facebook/FacebookException;
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    .end local v0    # "facebookException":Lcom/facebook/FacebookException;
    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .restart local v0    # "facebookException":Lcom/facebook/FacebookException;
    goto :goto_0
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 278
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 280
    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 6
    .param p1, "margin"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 321
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    .line 323
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 324
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 325
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/widget/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$DialogWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 326
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 327
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 332
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 333
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    const/high16 v1, -0x34000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 335
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 336
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 178
    :cond_1
    invoke-super {p0}, Lcom/facebook/ane/AneDialog;->dismiss()V

    .line 180
    :cond_2
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 191
    invoke-super {p0}, Lcom/facebook/ane/AneDialog;->onAttachedToWindow()V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 196
    invoke-super {p0, p1}, Lcom/facebook/ane/AneDialog;->onCreate(Landroid/os/Bundle;)V

    .line 198
    new-instance v2, Lcom/facebook/widget/WebDialog$1;

    invoke-direct {v2, p0}, Lcom/facebook/widget/WebDialog$1;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {p0, v2}, Lcom/facebook/widget/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 206
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 207
    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 208
    iget-object v3, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v2, Lcom/facebook/widget/WebDialog;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/facebook/widget/WebDialog;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v5, "string.com_facebook_loading"

    invoke-virtual {v2, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/facebook/widget/WebDialog$2;

    invoke-direct {v3, p0}, Lcom/facebook/widget/WebDialog$2;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 218
    invoke-virtual {p0, v6}, Lcom/facebook/widget/WebDialog;->requestWindowFeature(I)Z

    .line 219
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 222
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->getMargins()Landroid/util/Pair;

    move-result-object v1

    .line 223
    .local v1, "margins":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 229
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->createCrossImage()V

    .line 234
    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 236
    .local v0, "crossWidth":I
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/facebook/widget/WebDialog;->setUpWebView(I)V

    .line 241
    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/facebook/widget/WebDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 246
    return-void

    .line 208
    .end local v0    # "crossWidth":I
    .end local v1    # "margins":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    const v2, 0x7f070011

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 185
    invoke-super {p0}, Lcom/facebook/ane/AneDialog;->onDetachedFromWindow()V

    .line 186
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    .line 158
    return-void
.end method

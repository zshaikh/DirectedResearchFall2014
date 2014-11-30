.class public Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
.super Landroid/app/Dialog;
.source "FbSdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$Builder;,
        Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;,
        Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;,
        Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$FeedDialogBuilder;,
        Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;,
        Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;
    }
.end annotation


# static fields
.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final USER_AGENT:Ljava/lang/String; = "user_agent"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private isDetached:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private final url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 74
    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->listenerCalled:Z

    .line 75
    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z

    .line 124
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->url:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "theme"    # I
    .param p5, "listener"    # Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 74
    iput-boolean v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->listenerCalled:Z

    .line 75
    iput-boolean v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z

    .line 145
    if-nez p3, :cond_0

    .line 146
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 148
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_0
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "m.facebook.com"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dialog/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->url:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    .line 154
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$4(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCrossImage()V
    .locals 3

    .prologue
    .line 278
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 280
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$3;

    invoke-direct {v2, p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$3;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    .local v0, "crossDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    return-void
.end method

.method private sendCancelToListener()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 275
    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 261
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->listenerCalled:Z

    if-nez v2, :cond_0

    .line 262
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->listenerCalled:Z

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "facebookException":Lcom/facebook/FacebookException;
    instance-of v2, p1, Lcom/facebook/FacebookException;

    if-eqz v2, :cond_1

    .line 265
    move-object v0, p1

    check-cast v0, Lcom/facebook/FacebookException;

    move-object v1, v0

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 271
    .end local v1    # "facebookException":Lcom/facebook/FacebookException;
    :cond_0
    return-void

    .line 267
    .restart local v1    # "facebookException":Lcom/facebook/FacebookException;
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    .end local v1    # "facebookException":Lcom/facebook/FacebookException;
    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .restart local v1    # "facebookException":Lcom/facebook/FacebookException;
    goto :goto_0
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->listenerCalled:Z

    .line 256
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 258
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

    .line 301
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    .line 303
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 304
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 306
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 307
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 309
    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 308
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 313
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 314
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 186
    :cond_2
    return-void
.end method

.method public getOnCompleteListener()Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z

    .line 198
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 199
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 203
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 205
    new-instance v1, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$1;

    invoke-direct {v1, p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$1;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V

    invoke-virtual {p0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 213
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 214
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 215
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$2;

    invoke-direct {v2, p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$2;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 226
    invoke-virtual {p0, v6}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->requestWindowFeature(I)Z

    .line 227
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 234
    invoke-direct {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->createCrossImage()V

    .line 240
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 241
    .local v0, "crossWidth":I
    div-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->setUpWebView(I)V

    .line 247
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 248
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 247
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 250
    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 249
    invoke-virtual {p0, v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    .line 192
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 193
    return-void
.end method

.method public setOnCompleteListener(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCompleteListener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    .line 164
    return-void
.end method

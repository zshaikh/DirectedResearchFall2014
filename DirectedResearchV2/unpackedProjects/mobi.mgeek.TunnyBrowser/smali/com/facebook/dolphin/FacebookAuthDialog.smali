.class public Lcom/facebook/dolphin/FacebookAuthDialog;
.super Landroid/app/Dialog;
.source "FacebookAuthDialog.java"


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F

.field static final DIMENSIONS_DIFF_PORTRAIT:[F

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mHasCanceled:Z

.field private mListener:Lcom/facebook/dolphin/Facebook$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Lcom/dolphin/browser/core/IWebView;

.field private mWebViewCallback:Lcom/dolphin/browser/core/WebViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 46
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 47
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->sHandler:Landroid/os/Handler;

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x41a00000
        0x42700000
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x42200000
        0x42700000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/dolphin/Facebook$DialogListener;)V
    .locals 1

    .prologue
    .line 67
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mHasCanceled:Z

    .line 187
    new-instance v0, Lcom/facebook/dolphin/FacebookAuthDialog$5;

    invoke-direct {v0, p0}, Lcom/facebook/dolphin/FacebookAuthDialog$5;-><init>(Lcom/facebook/dolphin/FacebookAuthDialog;)V

    iput-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebViewCallback:Lcom/dolphin/browser/core/WebViewCallback;

    .line 68
    iput-object p2, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mUrl:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    .line 70
    sget-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->sHandler:Landroid/os/Handler;

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/dolphin/FacebookAuthDialog;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mHasCanceled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/facebook/dolphin/FacebookAuthDialog;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mHasCanceled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/facebook/dolphin/FacebookAuthDialog;)Lcom/facebook/dolphin/Facebook$DialogListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/dolphin/FacebookAuthDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/dolphin/FacebookAuthDialog;->notifySucceed(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/dolphin/FacebookAuthDialog;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/dolphin/FacebookAuthDialog;->notifyCancel()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/dolphin/FacebookAuthDialog;Lcom/facebook/dolphin/FacebookError;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/dolphin/FacebookAuthDialog;->notifyFailed(Lcom/facebook/dolphin/FacebookError;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/dolphin/FacebookAuthDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/dolphin/FacebookAuthDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/dolphin/FacebookAuthDialog;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private notifyCancel()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/dolphin/FacebookAuthDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/dolphin/FacebookAuthDialog$3;-><init>(Lcom/facebook/dolphin/FacebookAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    return-void
.end method

.method private notifyFailed(Lcom/facebook/dolphin/FacebookError;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/dolphin/FacebookAuthDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/dolphin/FacebookAuthDialog$4;-><init>(Lcom/facebook/dolphin/FacebookAuthDialog;Lcom/facebook/dolphin/FacebookError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_0
    return-void
.end method

.method private notifySucceed(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/facebook/dolphin/FacebookAuthDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/dolphin/FacebookAuthDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/dolphin/FacebookAuthDialog$2;-><init>(Lcom/facebook/dolphin/FacebookAuthDialog;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/dolphin/FacebookAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;

    .line 135
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;

    iget-object v2, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebViewCallback:Lcom/dolphin/browser/core/WebViewCallback;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 136
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1, v4}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 139
    sget-object v2, Lcom/facebook/dolphin/FacebookAuthDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v2}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v2

    .line 142
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 143
    invoke-interface {v2, v4}, Lcom/dolphin/browser/core/IWebSettings;->setSavePassword(Z)V

    .line 144
    iget-object v2, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;

    iget-object v3, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/dolphin/FacebookAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 80
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 82
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/dolphin/FacebookAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/dolphin/Util;->getLoadingText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/dolphin/FacebookAuthDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/dolphin/FacebookAuthDialog$1;-><init>(Lcom/facebook/dolphin/FacebookAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/facebook/dolphin/FacebookAuthDialog;->requestWindowFeature(I)Z

    .line 93
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/dolphin/FacebookAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mContent:Landroid/widget/FrameLayout;

    .line 105
    invoke-direct {p0, v3}, Lcom/facebook/dolphin/FacebookAuthDialog;->setUpWebView(I)V

    .line 111
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method

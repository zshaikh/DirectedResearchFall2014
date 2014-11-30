.class public Lcom/dolphin/browser/q/b/y;
.super Landroid/app/Dialog;
.source "EvernoteAuthDialog.java"


# static fields
.field private static final a:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private b:Landroid/app/ProgressDialog;

.field private c:Lcom/dolphin/browser/core/IWebView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/lang/String;

.field private f:Lorg/d/e/c;

.field private g:Lcom/dolphin/browser/q/b/e;

.field private h:Landroid/content/Context;

.field private i:Lcom/dolphin/browser/q/b/ac;

.field private j:Lorg/d/d/i;

.field private k:Lcom/dolphin/browser/core/WebViewCallback;

.field private l:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/dolphin/browser/q/b/y;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/q/b/e;)V
    .locals 1

    .prologue
    .line 71
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->j:Lorg/d/d/i;

    .line 292
    new-instance v0, Lcom/dolphin/browser/q/b/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/b/z;-><init>(Lcom/dolphin/browser/q/b/y;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->k:Lcom/dolphin/browser/core/WebViewCallback;

    .line 353
    new-instance v0, Lcom/dolphin/browser/q/b/aa;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/b/aa;-><init>(Lcom/dolphin/browser/q/b/y;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->l:Landroid/content/DialogInterface$OnCancelListener;

    .line 72
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->a()Lorg/d/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->f:Lorg/d/e/c;

    .line 73
    iput-object p2, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/q/b/y;->h:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/y;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/c/a/b/a;
    .locals 4

    .prologue
    .line 164
    const-string v0, "RegisterDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieveAccessToken url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "RegisterDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveAccessToken verifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/q/b/y;->j:Lorg/d/d/i;

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Lorg/d/d/k;

    invoke-direct {v1, v0}, Lorg/d/d/k;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->f:Lorg/d/e/c;

    iget-object v2, p0, Lcom/dolphin/browser/q/b/y;->j:Lorg/d/d/i;

    invoke-interface {v0, v2, v1}, Lorg/d/e/c;->a(Lorg/d/d/i;Lorg/d/d/k;)Lorg/d/d/i;

    move-result-object v1

    .line 178
    new-instance v0, Lcom/c/a/b/a;

    invoke-direct {v0, v1}, Lcom/c/a/b/a;-><init>(Lorg/d/d/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/q/b/y;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()Lorg/d/e/c;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/dolphin/browser/q/b/ae;

    invoke-direct {v0}, Lcom/dolphin/browser/q/b/ae;-><init>()V

    .line 80
    new-instance v1, Lorg/d/a/a;

    invoke-direct {v1}, Lorg/d/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ae;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/d/a/a;->a(Ljava/lang/Class;)Lorg/d/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ae;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/d/a/a;->b(Ljava/lang/String;)Lorg/d/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ae;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/d/a/a;->c(Ljava/lang/String;)Lorg/d/a/a;

    move-result-object v0

    const-string v1, "evernote://callback"

    invoke-virtual {v0, v1}, Lorg/d/a/a;->a(Ljava/lang/String;)Lorg/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/d/a/a;->a()Lorg/d/e/c;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->c:Lcom/dolphin/browser/core/IWebView;

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 127
    sget-object v1, Lcom/dolphin/browser/q/b/y;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/q/b/y;->c:Lcom/dolphin/browser/core/IWebView;

    iget-object v2, p0, Lcom/dolphin/browser/q/b/y;->k:Lcom/dolphin/browser/core/WebViewCallback;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/q/b/y;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    .line 131
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 132
    invoke-interface {v1, v3}, Lcom/dolphin/browser/core/IWebSettings;->setSavePassword(Z)V

    .line 133
    const-string v2, "utf-8"

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/q/b/y;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->requestFocus()Z

    .line 136
    return-void
.end method

.method private a(Lcom/c/a/b/a;)V
    .locals 2

    .prologue
    .line 224
    const-string v0, "RegisterDialog"

    const-string v1, "[RestoreDialog] notifySucceed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->c()V

    .line 226
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->b()V

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/e;->a(Lorg/d/d/i;)V

    .line 230
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/y;Lcom/c/a/b/a;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/c/a/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/y;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/y;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 212
    const-string v0, "RegisterDialog"

    const-string v1, "[RestoreDialog] notifyFailed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->c()V

    .line 214
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->b()V

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/e;->a(Ljava/lang/Throwable;)V

    .line 218
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/q/b/y;Ljava/lang/String;)Lcom/c/a/b/a;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/y;->a(Ljava/lang/String;)Lcom/c/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/b/y;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "RegisterDialog"

    const-string v1, "[EvernoteDialog] dismissDialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/q/b/y;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 145
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/q/b/y;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->c:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const-string v0, "RegisterDialog"

    const-string v1, "getAuthUrl begin ... "

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/y;->f:Lorg/d/e/c;

    invoke-interface {v1}, Lorg/d/e/c;->a()Lorg/d/d/i;

    move-result-object v1

    .line 153
    iput-object v1, p0, Lcom/dolphin/browser/q/b/y;->j:Lorg/d/d/i;

    .line 154
    iget-object v2, p0, Lcom/dolphin/browser/q/b/y;->f:Lorg/d/e/c;

    invoke-interface {v2, v1}, Lorg/d/e/c;->a(Lorg/d/d/i;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    const-string v1, "RegisterDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthUrl url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "RegisterDialog"

    const-string v1, "[RestoreDialog] notifyCanceled"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->i:Lcom/dolphin/browser/q/b/ac;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->i:Lcom/dolphin/browser/q/b/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ac;->b(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->c()V

    .line 202
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->b()V

    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->g:Lcom/dolphin/browser/q/b/e;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/e;->a()V

    .line 206
    :cond_1
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/q/b/y;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->e()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/q/b/y;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/q/b/y;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/q/b/y;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/y;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0348

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/y;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/q/b/y;->requestWindowFeature(I)Z

    .line 97
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->d:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    invoke-direct {p0, v3}, Lcom/dolphin/browser/q/b/y;->a(I)V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/q/b/y;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->i:Lcom/dolphin/browser/q/b/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->i:Lcom/dolphin/browser/q/b/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ac;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-ne v0, v1, :cond_1

    .line 106
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/q/b/ac;-><init>(Lcom/dolphin/browser/q/b/y;Lcom/dolphin/browser/q/b/z;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/y;->i:Lcom/dolphin/browser/q/b/ac;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/y;->i:Lcom/dolphin/browser/q/b/ac;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ac;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 109
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

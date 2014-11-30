.class public Lcom/dolphin/browser/q/d/s;
.super Landroid/app/Dialog;
.source "TwitterAuthDialog.java"


# static fields
.field static final a:[F

.field static final b:[F

.field static final c:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/dolphin/browser/share/g;

.field private f:Landroid/app/ProgressDialog;

.field private g:Lcom/dolphin/browser/core/IWebView;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/content/Context;

.field private j:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private k:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field private l:Landroid/content/DialogInterface$OnCancelListener;

.field private m:Lcom/dolphin/browser/core/WebViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 55
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/q/d/s;->a:[F

    .line 56
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolphin/browser/q/d/s;->b:[F

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/dolphin/browser/q/d/s;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 55
    :array_0
    .array-data 4
        0x43e60000
        0x43820000
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x438c0000
        0x43d20000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;Lcom/dolphin/browser/share/g;)V
    .locals 1

    .prologue
    .line 77
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 204
    new-instance v0, Lcom/dolphin/browser/q/d/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/d/t;-><init>(Lcom/dolphin/browser/q/d/s;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/s;->l:Landroid/content/DialogInterface$OnCancelListener;

    .line 269
    new-instance v0, Lcom/dolphin/browser/q/d/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/d/u;-><init>(Lcom/dolphin/browser/q/d/s;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/s;->m:Lcom/dolphin/browser/core/WebViewCallback;

    .line 78
    iput-object p2, p0, Lcom/dolphin/browser/q/d/s;->k:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    .line 79
    iput-object p3, p0, Lcom/dolphin/browser/q/d/s;->j:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 80
    iput-object p4, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    .line 81
    iput-object p1, p0, Lcom/dolphin/browser/q/d/s;->i:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 131
    const-string v0, "Twitter"

    const-string v1, "[TwDialog] retrieveAccessToken"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    iget-object v2, p0, Lcom/dolphin/browser/q/d/s;->k:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v3, p0, Lcom/dolphin/browser/q/d/s;->j:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v2, v3, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    .line 137
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/dolphin/browser/q/d/s;->j:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "secret_token"

    iget-object v2, p0, Lcom/dolphin/browser/q/d/s;->j:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    const-string v0, "Twitter"

    const-string v1, "[TwDialog] retrieveRequestToken"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->k:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/s;->j:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v2, "twitter://callback"

    invoke-virtual {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/q/d/s;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    iget-object v2, p0, Lcom/dolphin/browser/q/d/s;->m:Lcom/dolphin/browser/core/WebViewCallback;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    .line 121
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 122
    invoke-interface {v1, v3}, Lcom/dolphin/browser/core/IWebSettings;->setSavePassword(Z)V

    .line 123
    sget-object v1, Lcom/dolphin/browser/q/d/s;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/dolphin/browser/q/d/s;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->requestFocus()Z

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/s;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 175
    const-string v0, "Twitter"

    const-string v1, "[TwDialog] notifySucceed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->d()V

    .line 177
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->c()V

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/s;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->b()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/s;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/s;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/s;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/s;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 157
    const-string v0, "Twitter"

    const-string v1, "[TwDialog] notifyFailed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->d()V

    .line 159
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->c()V

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Throwable;)V

    .line 163
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/q/d/s;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/d/s;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/s;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "Twitter"

    const-string v1, "[TwDialog] notifyCanceled"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->d()V

    .line 168
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->c()V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->e:Lcom/dolphin/browser/share/g;

    new-instance v1, Lcom/dolphin/browser/q/d/y;

    const-string v2, "User canceled login."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/g;->a(Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/q/d/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "Twitter"

    const-string v1, "[TwDialog] dismissDialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/s;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/q/d/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/q/d/s;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->g:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/q/d/s;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/q/d/s;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/s;->d()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/s;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0348

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/s;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/q/d/s;->requestWindowFeature(I)Z

    .line 95
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/s;->h:Landroid/widget/FrameLayout;

    .line 97
    invoke-direct {p0, v3}, Lcom/dolphin/browser/q/d/s;->a(I)V

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/q/d/s;->h:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/q/d/s;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v0, Lcom/dolphin/browser/q/d/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/q/d/w;-><init>(Lcom/dolphin/browser/q/d/s;Lcom/dolphin/browser/q/d/t;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 102
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

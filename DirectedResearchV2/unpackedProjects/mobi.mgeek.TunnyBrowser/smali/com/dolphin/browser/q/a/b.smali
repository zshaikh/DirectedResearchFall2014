.class public Lcom/dolphin/browser/q/a/b;
.super Landroid/app/Dialog;
.source "BoxAuthDialog.java"


# static fields
.field static final a:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private b:Lcom/b/a/a;

.field private c:Lcom/dolphin/browser/core/IWebView;

.field private d:Z

.field private e:Lcom/dolphin/browser/q/a/a;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/dolphin/browser/q/a/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a;Landroid/content/Context;Lcom/dolphin/browser/q/a/a;)V
    .locals 1

    .prologue
    .line 50
    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/q/a/b;->d:Z

    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/q/a/b;->b:Lcom/b/a/a;

    .line 52
    iput-object p3, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    .line 53
    iput-object p2, p0, Lcom/dolphin/browser/q/a/b;->h:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->b()V

    .line 183
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/a/b;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/q/a/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://m.box.net/api/1.0/auth/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 118
    invoke-virtual {v1, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 119
    sget-object v2, Lcom/dolphin/browser/q/a/b;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/q/a/f;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/q/a/f;-><init>(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->g:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 175
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->d()V

    .line 228
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/q/a/b;->b:Lcom/b/a/a;

    new-instance v2, Lcom/dolphin/browser/q/a/g;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/dolphin/browser/q/a/g;-><init>(Lcom/dolphin/browser/q/a/b;Landroid/os/Handler;Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Lcom/b/a/a;->a(Ljava/lang/String;Lcom/b/a/c/d;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/a/b;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    invoke-interface {v0}, Lcom/dolphin/browser/q/a/a;->a()V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->d()V

    .line 256
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/dolphin/browser/q/a/b;->d:Z

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/q/a/b;->d:Z

    .line 241
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/a/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    invoke-interface {v0}, Lcom/dolphin/browser/q/a/a;->b()V

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->d()V

    .line 263
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/q/a/b;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->a()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->e:Lcom/dolphin/browser/q/a/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/a/a;->a(Ljava/lang/String;)V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->d()V

    .line 249
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/q/a/b;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->c:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 267
    invoke-static {p0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 268
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/q/a/b;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/b;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0348

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/dolphin/browser/q/a/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/a/c;-><init>(Lcom/dolphin/browser/q/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/q/a/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/a/d;-><init>(Lcom/dolphin/browser/q/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/q/a/b;->requestWindowFeature(I)Z

    .line 78
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/a/b;->g:Landroid/widget/FrameLayout;

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->g:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/q/a/b;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/q/a/b;->b:Lcom/b/a/a;

    new-instance v1, Lcom/dolphin/browser/q/a/e;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/a/e;-><init>(Lcom/dolphin/browser/q/a/b;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a;->a(Lcom/b/a/c/e;)V

    .line 101
    return-void
.end method

.class public Lcom/dolphin/browser/addons/WebViewImpl;
.super Lcom/dolphin/browser/addons/at;
.source "WebViewImpl.java"


# instance fields
.field private final a:Lcom/dolphin/browser/core/IWebView;

.field private b:Lcom/dolphin/browser/addons/ap;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dolphin/browser/addons/at;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/addons/WebViewImpl;->a:Lcom/dolphin/browser/core/IWebView;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/WebViewImpl;Lcom/dolphin/browser/addons/ap;)Lcom/dolphin/browser/addons/ap;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/addons/WebViewImpl;->b:Lcom/dolphin/browser/addons/ap;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/addons/WebViewImpl;->a:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/addons/ap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/addons/WebViewImpl;->b:Lcom/dolphin/browser/addons/ap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/dolphin/browser/addons/bz;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/bz;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public a(Lcom/dolphin/browser/addons/ad;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.RUN_JAVASCRIPT"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/dolphin/browser/addons/bk;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/addons/bk;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Lcom/dolphin/browser/addons/ad;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.RUN_JAVASCRIPT"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 269
    :cond_0
    new-instance v0, Lcom/dolphin/browser/addons/bu;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/addons/bu;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/dolphin/browser/addons/bs;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/addons/bs;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 256
    new-instance v0, Lcom/dolphin/browser/addons/bt;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/addons/bt;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dolphin/browser/addons/ce;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/addons/ce;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;I)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/dolphin/browser/addons/bx;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/addons/bx;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/dolphin/browser/addons/by;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/by;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/dolphin/browser/addons/bq;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/addons/bq;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;I)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.RUN_JAVASCRIPT"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/dolphin/browser/addons/bv;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/addons/bv;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public b(Z)Z
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/dolphin/browser/addons/bw;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/addons/bw;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dolphin/browser/addons/cd;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/cd;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/dolphin/browser/addons/bp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/bp;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/dolphin/browser/addons/cf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/cf;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/dolphin/browser/addons/br;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/br;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public g()F
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/dolphin/browser/addons/bm;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/bm;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/dolphin/browser/addons/bo;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/bo;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/dolphin/browser/addons/cj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/cj;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/dolphin/browser/addons/bn;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/bn;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/dolphin/browser/addons/ci;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/ci;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/dolphin/browser/addons/bl;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/bl;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/dolphin/browser/addons/ch;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/ch;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public n()Lcom/dolphin/browser/addons/am;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/dolphin/browser/addons/cg;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/cg;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/am;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/dolphin/browser/addons/ca;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/ca;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/dolphin/browser/addons/cb;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/cb;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/addons/WebViewImpl;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public r()Lcom/dolphin/browser/addons/ap;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/addons/WebViewImpl;->b:Lcom/dolphin/browser/addons/ap;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/addons/WebViewImpl;->b:Lcom/dolphin/browser/addons/ap;

    .line 362
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/addons/cc;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/cc;-><init>(Lcom/dolphin/browser/addons/WebViewImpl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/ap;

    goto :goto_0
.end method

.class public Lcom/dolphin/browser/t/l;
.super Ljava/lang/Object;
.source "TabUIManager.java"


# static fields
.field private static c:Lcom/dolphin/browser/t/l;

.field private static p:Z


# instance fields
.field private final A:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

.field private final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/t/ap;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/dolphin/browser/core/ay;

.field private final D:Lcom/dolphin/browser/core/m;

.field private E:Lcom/dolphin/browser/w/a;

.field private F:I

.field private G:Lcom/dolphin/browser/core/al;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/o/a;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/app/AlertDialog;

.field private J:Lcom/dolphin/browser/core/ITab;

.field private K:Ljava/lang/Boolean;

.field private L:Landroid/app/AlertDialog;

.field private M:Lcom/dolphin/browser/core/IWebView;

.field private N:Lcom/dolphin/browser/core/ISslErrorHandler;

.field private O:Landroid/net/http/SslError;

.field private P:Landroid/app/AlertDialog;

.field private Q:Lcom/dolphin/browser/core/ITab;

.field private R:Landroid/app/AlertDialog;

.field private S:Lcom/dolphin/browser/core/IHttpAuthHandler;

.field a:Lcom/dolphin/browser/core/ITabListener;

.field protected b:Z

.field private d:Lcom/dolphin/browser/core/TabManager;

.field private e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private f:Lcom/dolphin/browser/titlebar/q;

.field private g:Lcom/dolphin/browser/extensions/ThemeManager;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/Toast;

.field private k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Lmobi/mgeek/TunnyBrowser/ew;

.field private u:Z

.field private v:I

.field private final w:Lcom/dolphin/browser/core/l;

.field private x:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final y:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

.field private final z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/t/l;->m:Z

    .line 255
    new-instance v0, Lcom/dolphin/browser/t/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/m;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->a:Lcom/dolphin/browser/core/ITabListener;

    .line 405
    new-instance v0, Lcom/dolphin/browser/t/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/x;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->w:Lcom/dolphin/browser/core/l;

    .line 444
    new-instance v0, Lcom/dolphin/browser/t/ai;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/ai;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->y:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    .line 491
    new-instance v0, Lcom/dolphin/browser/t/aj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/aj;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    .line 507
    new-instance v0, Lcom/dolphin/browser/t/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/ak;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->A:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->B:Ljava/util/ArrayList;

    .line 679
    new-instance v0, Lcom/dolphin/browser/t/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/ao;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->C:Lcom/dolphin/browser/core/ay;

    .line 688
    new-instance v0, Lcom/dolphin/browser/t/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/n;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->D:Lcom/dolphin/browser/core/m;

    .line 1940
    new-instance v0, Lcom/dolphin/browser/t/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/t;-><init>(Lcom/dolphin/browser/t/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->G:Lcom/dolphin/browser/core/al;

    .line 204
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ib;

    invoke-direct {v0, p1}, Lmobi/mgeek/TunnyBrowser/ib;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->x:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 205
    invoke-static {p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/content/Context;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    .line 207
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->a:Lcom/dolphin/browser/core/ITabListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->addTabListener(Lcom/dolphin/browser/core/ITabListener;)V

    .line 208
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->w:Lcom/dolphin/browser/core/l;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/l;)V

    .line 209
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->x:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->setWebViewCallbackHandler(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 210
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 211
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->y:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    .line 212
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->A:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V

    .line 213
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->C:Lcom/dolphin/browser/core/ay;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ay;)V

    .line 214
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V

    .line 215
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->D:Lcom/dolphin/browser/core/m;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/m;)V

    .line 216
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/k;)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/j;)V

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-static {p1, v0}, Lcom/dolphin/browser/titlebar/q;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    .line 220
    iput-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    .line 222
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 223
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 225
    invoke-static {}, Lcom/dolphin/browser/h/e;->a()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/t/l;->v:I

    .line 226
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 728
    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 729
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getProgress()I

    move-result v1

    .line 730
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;I)V

    .line 731
    return-void
.end method

.method private L()Z
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/w/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M()V
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/w/a;->e()V

    .line 992
    :cond_0
    return-void
.end method

.method private N()V
    .locals 0

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->i()V

    .line 1473
    return-void
.end method

.method private O()V
    .locals 4

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2121
    :cond_0
    return-void

    .line 2111
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2112
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/o/a;

    .line 2113
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/o/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolphin/browser/t/l;->p(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2118
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/o/a;

    .line 2119
    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/o/a;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->I:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->O:Landroid/net/http/SslError;

    return-object p1
.end method

.method private a(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2573
    if-nez p1, :cond_0

    .line 2635
    :goto_0
    return-object v0

    .line 2577
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2579
    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f0300f6

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2580
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v6

    .line 2582
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080361

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2583
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_1
    if-ltz v5, :cond_4

    .line 2584
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2585
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 2586
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2583
    :cond_1
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    goto :goto_1

    .line 2587
    :cond_2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 2588
    check-cast v1, Landroid/view/ViewGroup;

    .line 2589
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_2
    if-ltz v4, :cond_1

    .line 2590
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2591
    instance-of v7, v2, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 2592
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2589
    :cond_3
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_2

    .line 2599
    :cond_4
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    .line 2600
    if-eqz v4, :cond_5

    .line 2601
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080364

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2602
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080366

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2603
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080368

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2604
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2605
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2606
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2610
    :cond_5
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    .line 2611
    if-eqz v4, :cond_6

    .line 2612
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08036a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2613
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08036c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2614
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08036e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2615
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2616
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2617
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2622
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    .line 2623
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2625
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 2632
    :goto_3
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080371

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2633
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080373

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v3

    .line 2635
    goto/16 :goto_0

    .line 2628
    :cond_7
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2630
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)Lcom/dolphin/browser/core/IHttpAuthHandler;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->S:Lcom/dolphin/browser/core/IHttpAuthHandler;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ISslErrorHandler;)Lcom/dolphin/browser/core/ISslErrorHandler;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->N:Lcom/dolphin/browser/core/ISslErrorHandler;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/IWebView;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->M:Lcom/dolphin/browser/core/IWebView;

    return-object p1
.end method

.method public static a()Lcom/dolphin/browser/t/l;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/dolphin/browser/t/l;->c:Lcom/dolphin/browser/t/l;

    return-object v0
.end method

.method public static a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/dolphin/browser/t/l;->c:Lcom/dolphin/browser/t/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/t/l;->c:Lcom/dolphin/browser/t/l;

    iget-object v0, v0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eq v0, p0, :cond_1

    .line 195
    :cond_0
    new-instance v0, Lcom/dolphin/browser/t/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/t/l;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    sput-object v0, Lcom/dolphin/browser/t/l;->c:Lcom/dolphin/browser/t/l;

    .line 198
    :cond_1
    sget-object v0, Lcom/dolphin/browser/t/l;->c:Lcom/dolphin/browser/t/l;

    iput-object p0, v0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 199
    sget-object v0, Lcom/dolphin/browser/t/l;->c:Lcom/dolphin/browser/t/l;

    return-object v0
.end method

.method private a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2648
    const/4 v0, 0x0

    .line 2650
    if-eqz p1, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2654
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2153
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2159
    :goto_0
    return-void

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2158
    invoke-static {p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/net/http/SslError;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const v11, 0x7f080375

    const v10, 0x7f0300f8

    .line 2515
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2517
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2519
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    .line 2520
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2521
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    invoke-virtual {v3, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2523
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2524
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2525
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2528
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2529
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    invoke-virtual {v3, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2531
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2532
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2533
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2536
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2537
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    invoke-virtual {v3, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2539
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2540
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2541
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c5

    .line 2542
    invoke-virtual {p2}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v5

    .line 2543
    if-eqz v5, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_2

    .line 2545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2546
    invoke-virtual {v5}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 2547
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c8

    .line 2550
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2553
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2554
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    invoke-virtual {v3, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2556
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2557
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2558
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2560
    :cond_4
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/util/al;)V
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/util/al;Z)V

    .line 1423
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/bh;)V
    .locals 2

    .prologue
    .line 968
    if-eqz p1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    if-nez v0, :cond_1

    .line 970
    new-instance v0, Lcom/dolphin/browser/w/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/w/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/core/bh;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    .line 971
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    new-instance v1, Lcom/dolphin/browser/t/o;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/t/o;-><init>(Lcom/dolphin/browser/t/l;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/w/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/w/a;->c()V

    .line 985
    :cond_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/w/a;->a(Lcom/dolphin/browser/core/bh;)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/o/a;)V
    .locals 1

    .prologue
    .line 2145
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->a(Landroid/view/View;)V

    .line 2146
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2149
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/t/ap;)V
    .locals 3

    .prologue
    .line 663
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e018e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020170

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e018f

    new-instance v2, Lcom/dolphin/browser/t/an;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/t/an;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/t/ap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0320

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 677
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->M()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->e(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;Z)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/core/ITab;Z)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/t/ap;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/ap;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->k(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1776
    const/4 v0, 0x0

    .line 1777
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    invoke-static {}, Lcom/dolphin/browser/j/b/g;->a()Lcom/dolphin/browser/j/b/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/j/b/g;->a(Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v1

    .line 1779
    if-eqz v1, :cond_0

    .line 1780
    const/4 p2, 0x0

    .line 1782
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1806
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1807
    return-void

    .line 1784
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1785
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->r:Landroid/graphics/drawable/Drawable;

    .line 1787
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1790
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1791
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->q:Landroid/graphics/drawable/Drawable;

    .line 1794
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1797
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->s:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 1798
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->s:Landroid/graphics/drawable/Drawable;

    .line 1800
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->s:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/dolphin/browser/t/l;Z)Z
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/dolphin/browser/t/l;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->P:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private b(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 1732
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/util/al;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dolphin://home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1733
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->F()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1741
    :goto_0
    return-object v0

    .line 1735
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->l()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1736
    if-eqz p2, :cond_2

    .line 1737
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/util/al;->a(Lcom/dolphin/browser/core/IWebView;)V

    goto :goto_0

    .line 1739
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/t/l;Ljava/lang/String;)Lcom/dolphin/browser/o/a;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->m(Ljava/lang/String;)Lcom/dolphin/browser/o/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/titlebar/q;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/core/ITab;Z)V
    .locals 1

    .prologue
    .line 399
    :try_start_0
    invoke-interface {p1, p2}, Lcom/dolphin/browser/core/ITab;->setNetworkAvailable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2163
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->L:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private c(Lcom/dolphin/browser/core/ITab;Z)V
    .locals 5

    .prologue
    .line 2261
    if-nez p1, :cond_0

    .line 2364
    :goto_0
    return-void

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2266
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2273
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 2275
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->h:Ljava/lang/String;

    .line 2276
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->i:Ljava/lang/String;

    .line 2282
    :goto_1
    if-nez v1, :cond_5

    .line 2283
    const-string v1, ""

    move-object v2, v1

    .line 2285
    :goto_2
    if-nez v0, :cond_4

    .line 2286
    const-string v0, ""

    move-object v1, v0

    .line 2288
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0044

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    .line 2289
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2290
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2291
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2292
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2293
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2294
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08026d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2296
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2298
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->J:Lcom/dolphin/browser/core/ITab;

    .line 2299
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->K:Ljava/lang/Boolean;

    .line 2301
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/t/y;

    invoke-direct {v2, p0, p2}, Lcom/dolphin/browser/t/y;-><init>(Lcom/dolphin/browser/t/l;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/w;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/t/w;-><init>(Lcom/dolphin/browser/t/l;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2336
    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2338
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e067a

    new-instance v2, Lcom/dolphin/browser/t/z;

    invoke-direct {v2, p0, p2, p1, p1}, Lcom/dolphin/browser/t/z;-><init>(Lcom/dolphin/browser/t/l;ZLcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ITab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2363
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->I:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2278
    :cond_3
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 2279
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_3

    :cond_5
    move-object v2, v1

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->K()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->m(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method private c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2500
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2503
    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f0300f7

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2504
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->g:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    .line 2505
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080374

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2506
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2507
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2508
    return-void
.end method

.method private d(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 253
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->l(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method private e(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/dolphin/browser/t/l;->l:Z

    if-eqz v0, :cond_0

    .line 388
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/dolphin/browser/t/l;->m:Z

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/core/ITab;Z)V

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->o:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/dolphin/browser/core/ITab;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/t/l;->l:Z

    .line 394
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->k(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method private e(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v0, 0x1

    .line 1227
    const/4 v1, 0x0

    .line 1228
    const-string v2, "dolphin:bookmarks"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showLeftPageView(Z)V

    .line 1273
    :goto_0
    return v0

    .line 1231
    :cond_0
    const-string v2, "dolphin:freememory"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onLowMemory()V

    goto :goto_0

    .line 1234
    :cond_1
    const-string v2, "dolphin:log"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1235
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/Browser;->a()V

    goto :goto_0

    .line 1237
    :cond_2
    const-string v2, "dolphin:metrics"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1238
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDownloadDir()Ljava/io/File;

    move-result-object v1

    .line 1239
    invoke-static {}, Lcom/dolphin/browser/test/a/g;->a()Lcom/dolphin/browser/test/a/g;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "DolphinMetrics"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/test/a/g;->a(Ljava/io/File;)V

    goto :goto_0

    .line 1241
    :cond_3
    const-string v2, "dolphin://proxy"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1242
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1, p2}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1245
    :cond_4
    const-string v2, "dolphin://home"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1246
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->F()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1247
    iget-object v2, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v3}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/dolphin/browser/core/TabManager;->a(ILcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 1249
    :cond_5
    const-string v2, "dolphin://jcrash"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1250
    new-instance v1, Lcom/dolphin/browser/t/p;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/t/p;-><init>(Lcom/dolphin/browser/t/l;)V

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1257
    :cond_6
    const-string v2, "dolphin://ncrash"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1258
    new-instance v1, Lcom/dolphin/browser/t/q;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/t/q;-><init>(Lcom/dolphin/browser/t/l;)V

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1266
    :cond_7
    const-string v2, "dolphin://feedback"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1267
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSendFeedback()Z

    goto/16 :goto_0

    .line 1269
    :cond_8
    const-string v2, "dolphin://netDiagnotics"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1270
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionNetDiagnotics(Lcom/dolphin/browser/core/ITab;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/t/l;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/dolphin/browser/t/l;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/t/l;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/dolphin/browser/t/l;->v:I

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->J:Lcom/dolphin/browser/core/ITab;

    return-object p1
.end method

.method private f(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 736
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/t/l;->a(Landroid/graphics/Bitmap;)V

    .line 737
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;)V

    .line 738
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 740
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->G()V

    .line 741
    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/t/l;)I
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/dolphin/browser/t/l;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/t/l;->v:I

    return v0
.end method

.method static synthetic g(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->Q:Lcom/dolphin/browser/core/ITab;

    return-object p1
.end method

.method private g(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->h(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/titlebar/q;->j()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 818
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/j;->b(Z)V

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/j;->b(Z)V

    goto :goto_0
.end method

.method private h(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 826
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getFirstChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 827
    if-nez v0, :cond_0

    .line 828
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getRightSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 829
    if-nez v0, :cond_0

    .line 830
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 831
    if-nez v0, :cond_0

    .line 832
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 836
    :cond_0
    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/TabManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    return-object v0
.end method

.method private i(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->j(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/bh;)V

    .line 916
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->O()V

    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/t/l;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j(Lcom/dolphin/browser/core/ITab;)Z
    .locals 4

    .prologue
    .line 920
    const/4 v0, 0x0

    .line 921
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;

    move-result-object v1

    .line 922
    if-eqz v1, :cond_0

    .line 923
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-virtual {v1}, Lcom/dolphin/browser/core/bh;->a()Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 929
    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 930
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 933
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 934
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 935
    if-nez v0, :cond_0

    .line 936
    invoke-static {v1}, Lcom/dolphin/browser/f/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-static {v2}, Lcom/dolphin/browser/f/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 940
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 944
    :catch_0
    move-exception v1

    .line 945
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic k(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->M:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private k(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 954
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;

    move-result-object v0

    .line 955
    if-nez v0, :cond_0

    .line 956
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->M()V

    .line 960
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->i(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 622
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eu;->a()Ljava/util/List;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 624
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/et;

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v2, v3, v0}, Lmobi/mgeek/TunnyBrowser/et;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v3, Lcom/dolphin/browser/t/al;

    invoke-direct {v3, p0, v0, p1}, Lcom/dolphin/browser/t/al;-><init>(Lcom/dolphin/browser/t/l;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 658
    :goto_0
    const-string v0, "TabUIManager"

    const-string v1, "show textSelectionDialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->B:Ljava/util/ArrayList;

    new-instance v1, Lcom/dolphin/browser/t/ap;

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e022c

    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobi.mgeek.DolphinTranslate"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/dolphin/browser/t/ap;-><init>(Lcom/dolphin/browser/t/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/aq;

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->B:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/dolphin/browser/t/aq;-><init>(Lcom/dolphin/browser/t/l;Landroid/content/Context;Ljava/util/List;)V

    new-instance v2, Lcom/dolphin/browser/t/am;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/t/am;-><init>(Lcom/dolphin/browser/t/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic l(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/ISslErrorHandler;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->N:Lcom/dolphin/browser/core/ISslErrorHandler;

    return-object v0
.end method

.method private l(Lcom/dolphin/browser/core/ITab;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1493
    if-nez p1, :cond_0

    .line 1513
    :goto_0
    return-void

    .line 1499
    :cond_0
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/ITab;->getView(Z)Landroid/view/View;

    move-result-object v1

    .line 1500
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1501
    if-eqz v0, :cond_1

    .line 1502
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1507
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 1508
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 1510
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->requestFocus()Z

    .line 1511
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 1512
    const-string v0, "TabUIManager"

    const-string v1, "attacheTab %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1753
    if-eqz v0, :cond_0

    .line 1754
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->resetLockIcon(Ljava/lang/String;)V

    .line 1755
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getSecureStatus()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;I)V

    .line 1757
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/dolphin/browser/t/l;)Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->O:Landroid/net/http/SslError;

    return-object v0
.end method

.method private m(Ljava/lang/String;)Lcom/dolphin/browser/o/a;
    .locals 2

    .prologue
    .line 2074
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->n(Ljava/lang/String;)Lcom/dolphin/browser/o/a;

    move-result-object v0

    .line 2075
    if-nez v0, :cond_0

    .line 2076
    new-instance v0, Lcom/dolphin/browser/o/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/o/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2077
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_0
    return-object v0
.end method

.method private m(Lcom/dolphin/browser/core/ITab;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1519
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->H()V

    .line 1520
    if-nez p1, :cond_0

    .line 1532
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1, v3}, Lcom/dolphin/browser/core/ITab;->getView(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1525
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/ITab;->setTitleBar(Landroid/view/View;)V

    .line 1526
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/ITab;->setBottomBar(Landroid/view/View;)V

    .line 1528
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->af()V

    .line 1530
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->o(Ljava/lang/String;)V

    .line 1531
    const-string v0, "TabUIManager"

    const-string v1, "detachTab %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic n(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->x:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method

.method private n(Ljava/lang/String;)Lcom/dolphin/browser/o/a;
    .locals 4

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    .line 2088
    :cond_0
    const/4 v1, 0x0

    .line 2089
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/o/a;

    .line 2090
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/o/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    .line 2091
    goto :goto_0

    .line 2094
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2099
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->n(Ljava/lang/String;)Lcom/dolphin/browser/o/a;

    move-result-object v0

    .line 2100
    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2101
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/o/a;->setVisibility(I)V

    .line 2103
    :cond_0
    return-void
.end method

.method private p(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2125
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    if-nez v0, :cond_1

    move v1, v2

    .line 2134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 2128
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v3}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2129
    iget-object v3, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 2130
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2128
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2134
    goto :goto_0
.end method

.method private q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2667
    .line 2669
    if-eqz p1, :cond_0

    .line 2672
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2677
    :goto_0
    if-eqz v1, :cond_0

    .line 2678
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2682
    :cond_0
    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_1
    :goto_1
    return-object p1

    .line 2673
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 2674
    goto :goto_0

    .line 2682
    :cond_2
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->e()V

    .line 1639
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->f()V

    .line 1644
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1689
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1690
    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1691
    const/4 v0, 0x0

    .line 1693
    :cond_0
    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1699
    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/core/IWebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/dolphin/browser/core/ITab;
    .locals 5

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h()V

    .line 1705
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ae()V

    .line 1706
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0395

    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/core/TabManager;->a(ILandroid/view/View;Ljava/lang/String;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public F()Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    .line 1722
    new-instance v0, Lcom/dolphin/browser/f/e/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->E()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/f/e/a;-><init>(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;)V

    return-object v0
.end method

.method public G()V
    .locals 2

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1765
    if-eqz v0, :cond_0

    .line 1766
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getSecureStatus()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;I)V

    .line 1768
    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ew;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ew;->dismiss()V

    .line 1830
    :cond_0
    return-void
.end method

.method public I()V
    .locals 4

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1881
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->o()V

    .line 1883
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/s;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/t/s;-><init>(Lcom/dolphin/browser/t/l;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1893
    :cond_1
    return-void
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onSearchRequested()Z

    .line 2186
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/dolphin/browser/util/al;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 1727
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 1923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;ZZ)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/util/al;ZZ)Lcom/dolphin/browser/core/ITab;
    .locals 4

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->f()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1930
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 1932
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1933
    invoke-interface {v0, p2}, Lcom/dolphin/browser/core/ITab;->setCloseOnExit(Z)V

    .line 1934
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1935
    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/dolphin/browser/core/ITab;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dolphin/browser/core/ITab;"
        }
    .end annotation

    .prologue
    .line 1712
    new-instance v0, Lcom/mgeek/android/ui/e;

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1, p1}, Lcom/mgeek/android/ui/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1713
    new-instance v1, Lcom/dolphin/browser/t/ar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/t/ar;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/t/m;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/e;->a(Lcom/mgeek/android/ui/j;)V

    .line 1714
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    const/16 v2, 0x68

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e052a

    invoke-virtual {v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/t/l;->G:Lcom/dolphin/browser/core/al;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/core/TabManager;->a(ILandroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/al;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1716
    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/e;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 1717
    return-object v1
.end method

.method public a(Lcom/dolphin/browser/util/al;ZLjava/lang/String;)Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Tab;->a(Lcom/dolphin/browser/core/ITab;)Lmobi/mgeek/TunnyBrowser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/t/l;->b(I)V

    .line 787
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->removeTab(I)Lcom/dolphin/browser/core/ITab;

    .line 788
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2191
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->I:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->I:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2193
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->J:Lcom/dolphin/browser/core/ITab;

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->K:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/core/ITab;Z)V

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->P:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2196
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->P:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2197
    iget-object v3, p0, Lcom/dolphin/browser/t/l;->Q:Lcom/dolphin/browser/core/ITab;

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->K:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Z)V

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->L:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 2200
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->L:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2201
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->M:Lcom/dolphin/browser/core/IWebView;

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->N:Lcom/dolphin/browser/core/ISslErrorHandler;

    iget-object v4, p0, Lcom/dolphin/browser/t/l;->O:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v3, v4}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 2204
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 2205
    const-string v4, ""

    .line 2206
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    instance-of v0, v0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    if-eqz v0, :cond_3

    .line 2207
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2210
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080254

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2212
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080256

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2214
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2215
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 2216
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2217
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->S:Lcom/dolphin/browser/core/IHttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2219
    :cond_4
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2220
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->E:Lcom/dolphin/browser/w/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/w/a;->d()V

    .line 2222
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 2197
    goto :goto_0

    :cond_7
    move v7, v1

    .line 2215
    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->a(Landroid/graphics/Bitmap;)V

    .line 777
    return-void
.end method

.method public a(Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 1987
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    .line 1988
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/os/Bundle;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1989
    if-nez v0, :cond_1

    .line 1999
    :goto_1
    return-void

    .line 1988
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1992
    :cond_1
    new-instance v2, Lcom/dolphin/browser/t/u;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/dolphin/browser/t/u;-><init>(Lcom/dolphin/browser/t/l;Ljava/util/ArrayList;Lcom/dolphin/browser/core/TabManager;Z)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2694
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2695
    if-eqz p5, :cond_0

    .line 2696
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080254

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2698
    :cond_0
    if-eqz p6, :cond_1

    .line 2699
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080256

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2703
    :cond_1
    if-nez p4, :cond_2

    .line 2704
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05a5

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s1"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s2"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 2708
    :cond_2
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->S:Lcom/dolphin/browser/core/IHttpAuthHandler;

    .line 2709
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v7, 0x7f0e000a

    new-instance v0, Lcom/dolphin/browser/t/ah;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/t/ah;-><init>(Lcom/dolphin/browser/t/l;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IHttpAuthHandler;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v3, Lcom/dolphin/browser/t/ag;

    invoke-direct {v3, p0, p1}, Lcom/dolphin/browser/t/ag;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/af;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/t/af;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2757
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2758
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 2759
    if-eqz p7, :cond_3

    .line 2760
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2764
    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/t/l;->R:Landroid/app/AlertDialog;

    .line 2765
    return-void

    .line 2762
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080254

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 746
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;I)V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/titlebar/q;->b(I)V

    .line 1279
    iget v0, p0, Lcom/dolphin/browser/t/l;->F:I

    if-eq v0, p2, :cond_2

    .line 1280
    iput p2, p0, Lcom/dolphin/browser/t/l;->F:I

    .line 1282
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 1283
    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v0

    .line 1284
    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1286
    sget-object v0, Lcom/dolphin/browser/util/cx;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/Object;)V

    .line 1295
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 1297
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->N()V

    .line 1299
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ah()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->B()V

    .line 1323
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->y()V

    .line 1325
    :cond_2
    return-void

    .line 1304
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1309
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->N()V

    .line 1317
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1319
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->A()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/util/al;Z)V
    .locals 1

    .prologue
    .line 1427
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1428
    invoke-virtual {p2}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Z)V

    .line 1430
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 883
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 885
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 887
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->G()V

    .line 889
    sget-boolean v0, Lcom/dolphin/browser/t/l;->p:Z

    if-eqz v0, :cond_0

    .line 890
    sput-boolean v3, Lcom/dolphin/browser/t/l;->p:Z

    .line 891
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 893
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;I)V

    .line 894
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v0

    .line 895
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v3, v1, v2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;)Z

    .line 905
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Z)V

    .line 906
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->m()V

    .line 907
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->i(Lcom/dolphin/browser/core/ITab;)V

    .line 908
    sget-object v0, Lcom/dolphin/browser/util/cx;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/Object;)V

    .line 909
    return-void

    .line 899
    :cond_2
    invoke-static {p1}, Lcom/dolphin/browser/core/TabManager;->getTab(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 900
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lcom/dolphin/browser/core/ITab;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 868
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 869
    invoke-direct {p0, p2}, Lcom/dolphin/browser/t/l;->l(Ljava/lang/String;)V

    .line 870
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getSecureStatus()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;I)V

    .line 871
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/t/l;->a(Landroid/graphics/Bitmap;)V

    .line 872
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 876
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 878
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->H()V

    .line 879
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1378
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    invoke-interface {p1, p2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Z)V
    .locals 4

    .prologue
    .line 2377
    if-nez p1, :cond_1

    .line 2427
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 2381
    if-eqz v0, :cond_0

    .line 2385
    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->a(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v1

    .line 2386
    if-eqz v1, :cond_0

    .line 2392
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->hasSSLError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2393
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getSSLError()Landroid/net/http/SslError;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/t/l;->a(Landroid/view/View;Landroid/net/http/SslError;)V

    .line 2394
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02016c

    .line 2400
    :goto_1
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->Q:Lcom/dolphin/browser/core/ITab;

    .line 2401
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05c2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/t/ab;

    invoke-direct {v2, p0, p2, p1}, Lcom/dolphin/browser/t/ab;-><init>(Lcom/dolphin/browser/t/l;ZLcom/dolphin/browser/core/ITab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/aa;

    invoke-direct {v1, p0, p2, p1}, Lcom/dolphin/browser/t/aa;-><init>(Lcom/dolphin/browser/t/l;ZLcom/dolphin/browser/core/ITab;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->P:Landroid/app/AlertDialog;

    goto :goto_0

    .line 2396
    :cond_2
    invoke-direct {p0, v1}, Lcom/dolphin/browser/t/l;->d(Landroid/view/View;)V

    .line 2397
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02016d

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 2442
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2495
    :cond_0
    :goto_0
    return-void

    .line 2445
    :cond_1
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->a(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 2446
    if-eqz v0, :cond_0

    .line 2450
    invoke-direct {p0, v0, p3}, Lcom/dolphin/browser/t/l;->a(Landroid/view/View;Landroid/net/http/SslError;)V

    .line 2452
    iput-object p2, p0, Lcom/dolphin/browser/t/l;->N:Lcom/dolphin/browser/core/ISslErrorHandler;

    .line 2453
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->M:Lcom/dolphin/browser/core/IWebView;

    .line 2454
    iput-object p3, p0, Lcom/dolphin/browser/t/l;->O:Landroid/net/http/SslError;

    .line 2455
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02016c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/t/ae;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/dolphin/browser/t/ae;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03de

    new-instance v2, Lcom/dolphin/browser/t/ad;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/t/ad;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/ac;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dolphin/browser/t/ac;-><init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->L:Landroid/app/AlertDialog;

    .line 2494
    const-string v0, "TabUIManager"

    const-string v1, "show SSL error dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 755
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->h:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->a(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 758
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 759
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->G()V

    .line 760
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 761
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 358
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->n:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/dolphin/browser/t/l;->o:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1666
    if-eqz p2, :cond_0

    .line 1667
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;Z)Lcom/dolphin/browser/core/ITab;

    .line 1671
    :goto_0
    return-void

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/util/al;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/util/al;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/dolphin/browser/t/l;->m:Z

    .line 374
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/core/ITab;Z)V

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/t/l;->l:Z

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/t/l;->l:Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/dolphin/browser/core/TabManager;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->g(Lcom/dolphin/browser/core/ITab;)V

    .line 812
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->g(Lcom/dolphin/browser/core/ITab;)V

    .line 793
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 794
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/dolphin/browser/t/l;->i:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    .line 1861
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1863
    if-eqz p2, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->I()V

    .line 1867
    :cond_0
    invoke-static {v1, p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1868
    invoke-static {v1, p2}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Z)V

    .line 1874
    :goto_0
    return-void

    .line 1870
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->o()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 1871
    invoke-virtual {v0, v1, v2, p2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1872
    invoke-virtual {p0, v2, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const v6, 0x7f0e0226

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1032
    const-string v0, "wtai://wp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wtai://wp/mc;"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1038
    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1219
    :goto_0
    return v0

    .line 1043
    :cond_0
    const-string v0, "wtai://wp/sd;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1045
    goto :goto_0

    .line 1050
    :cond_1
    const-string v0, "wtai://wp/ap;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1051
    goto :goto_0

    .line 1059
    :cond_2
    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 1060
    goto :goto_0

    .line 1063
    :cond_4
    const-string v0, "dolphin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/t/l;->e(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1064
    goto :goto_0

    .line 1067
    :cond_5
    invoke-static {p2}, Lcom/dolphin/browser/util/URIUtil;->isDolphinGameUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1068
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/t/l;->f(Ljava/lang/String;)V

    .line 1069
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_7

    .line 1074
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    :cond_7
    move v0, v1

    .line 1076
    goto :goto_0

    .line 1086
    :cond_8
    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "smsto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "mms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "mmsto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1088
    :cond_9
    const-string v0, "?body="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1089
    const/4 v3, -0x1

    if-eq v3, v0, :cond_b

    .line 1090
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1091
    const-string v4, "?body="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1092
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1093
    const-string v3, "sms_body"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1095
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v6}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    :goto_1
    move v0, v1

    .line 1107
    goto/16 :goto_0

    .line 1097
    :cond_a
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1100
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1101
    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1102
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v6}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 1104
    :cond_c
    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1113
    :cond_d
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1121
    iget-object v3, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1122
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 1123
    if-eqz v4, :cond_e

    .line 1124
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-nez v5, :cond_e

    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://search?q=pname:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1127
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move v0, v1

    .line 1129
    goto/16 :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    const-string v1, "Browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1116
    goto/16 :goto_0

    .line 1137
    :cond_e
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    iget-object v4, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v4, v0, p2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1140
    const-string v4, "eat_url"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1142
    :try_start_1
    iget-object v4, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v4, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 1143
    goto/16 :goto_0

    .line 1148
    :catch_1
    move-exception v0

    .line 1149
    const-string v4, "TabUIManager"

    const-string v5, "Failed to start activity."

    invoke-static {v4, v5, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    :cond_f
    :goto_2
    invoke-virtual {p0, p2, v3}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 1155
    goto/16 :goto_0

    .line 1158
    :cond_10
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1161
    :cond_11
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 1169
    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/dolphin/browser/t/l;->x:Lcom/dolphin/browser/core/IWebViewCallback;

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ib;

    invoke-virtual {v0, v3}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1170
    const-string v0, "TabUIManager"

    const-string v3, "Bypass URL \"%s\", because it might be a redirect."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1206
    :cond_12
    invoke-static {}, Lcom/dolphin/browser/x/d;->a()Lcom/dolphin/browser/x/d;

    move-result-object v0

    .line 1207
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/x/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1208
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1209
    if-nez v0, :cond_17

    move v0, v2

    .line 1210
    goto/16 :goto_0

    .line 1175
    :cond_13
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->closeOptionsMenu()V

    .line 1176
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1177
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e064e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e064d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3
    move v0, v1

    .line 1195
    goto/16 :goto_0

    .line 1183
    :cond_14
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_16

    .line 1190
    :cond_15
    invoke-interface {v3, p2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 1192
    :cond_16
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->k:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1213
    :cond_17
    if-eqz v0, :cond_18

    .line 1214
    invoke-interface {v0, p2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 1215
    goto/16 :goto_0

    :cond_18
    move v0, v2

    .line 1219
    goto/16 :goto_0

    .line 1145
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1389
    const-string v1, "dolphin"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/t/l;->e(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return v0

    .line 1393
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1395
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v2, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1398
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    const-string v2, "eat_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1402
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 1410
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Z)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 1908
    new-instance v0, Lcom/dolphin/browser/util/al;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/titlebar/q;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/t/l;->b(I)V

    .line 852
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->removeOtherTab(I)V

    .line 853
    return-void
.end method

.method public c(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->g(Lcom/dolphin/browser/core/ITab;)V

    .line 858
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->removeOtherTab(Lcom/dolphin/browser/core/ITab;)V

    .line 859
    return-void
.end method

.method public c(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1356
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1357
    invoke-static {p2}, Lcom/dolphin/browser/util/BrowserUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->x:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v1, p1, v0}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1359
    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 1362
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1648
    invoke-static {p1}, Lcom/dolphin/browser/util/BrowserUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1650
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;Z)V

    .line 1651
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    .line 718
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->G()V

    .line 719
    invoke-direct {p0}, Lcom/dolphin/browser/t/l;->K()V

    .line 720
    return-void
.end method

.method public d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Z)V

    .line 1374
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/util/al;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/util/al;)V

    .line 1681
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/o/b;->a()Lcom/dolphin/browser/o/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/o/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 2038
    if-nez v0, :cond_0

    .line 2042
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/l;->m(Ljava/lang/String;)Lcom/dolphin/browser/o/a;

    move-result-object v0

    .line 2044
    invoke-direct {p0, v0}, Lcom/dolphin/browser/t/l;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2048
    if-eqz p2, :cond_2

    .line 2049
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/o/a;->a(Z)V

    .line 2052
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/o/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/o/a;->setVisibility(I)V

    .line 2057
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Landroid/view/View;)Z

    .line 2058
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/v;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/t/v;-><init>(Lcom/dolphin/browser/t/l;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 798
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e04f5

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0658

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e001e

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 1823
    :goto_0
    return-void

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    if-nez v0, :cond_1

    .line 1816
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ew;

    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1}, Lmobi/mgeek/TunnyBrowser/ew;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    .line 1818
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1819
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/ew;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 1820
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->t:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/ew;->a(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(I)V

    .line 1822
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->removeAllTab()V

    .line 864
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    .line 1898
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1899
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->n()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 1900
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1901
    invoke-virtual {p0, v2, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 1902
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1331
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->stopLoading()V

    .line 1338
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->h()V

    .line 1340
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05e9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->j:Landroid/widget/Toast;

    .line 1341
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1342
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2023
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/t/l;->d(Ljava/lang/String;Z)V

    .line 2024
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->j:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/t/l;->j:Landroid/widget/Toast;

    .line 1350
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2028
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/t/l;->d(Ljava/lang/String;Z)V

    .line 2029
    return-void
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1450
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v4

    .line 1451
    if-nez v4, :cond_1

    move v1, v2

    .line 1452
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/m;

    .line 1454
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/m;->a(Z)V

    .line 1455
    if-nez v4, :cond_2

    move v1, v2

    .line 1456
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/n;

    .line 1458
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/n;->a(Z)V

    .line 1460
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/p;

    .line 1462
    if-nez v4, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/p;->a(Z)V

    .line 1463
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/p;->b(Z)V

    .line 1464
    return-void

    .line 1451
    :cond_1
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->canGoBack()Z

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1455
    :cond_2
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->canGoForward()Z

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1462
    :cond_3
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_2
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 2174
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 1478
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/t/r;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/t/r;-><init>(Lcom/dolphin/browser/t/l;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1485
    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2179
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;Z)V

    .line 2180
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 1536
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->A()V

    .line 1537
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->s()V

    .line 1542
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->t()V

    .line 1547
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->u()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->i()V

    .line 1557
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->n()V

    .line 1562
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->o()V

    .line 1567
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v0

    return v0
.end method

.method public s()Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 1576
    const/4 v0, 0x0

    .line 1579
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    .line 1580
    if-eqz v1, :cond_0

    .line 1581
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1586
    :cond_0
    :goto_0
    return-object v0

    .line 1583
    :catch_0
    move-exception v1

    .line 1584
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public t()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1591
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->F()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1592
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->d:Lcom/dolphin/browser/core/TabManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1593
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->closeOptionsMenu()V

    .line 1594
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w()V

    .line 1595
    return v3
.end method

.method public u()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1600
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e001e

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 1605
    :goto_0
    return v0

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->startSelectText()V

    .line 1605
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 1610
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/t/l;->e(Ljava/lang/String;)V

    .line 1611
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->closeCurrentWindow()V

    .line 1618
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->r()Z

    move-result v0

    return v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->a()V

    .line 1629
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/dolphin/browser/t/l;->f:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->b()V

    .line 1634
    return-void
.end method

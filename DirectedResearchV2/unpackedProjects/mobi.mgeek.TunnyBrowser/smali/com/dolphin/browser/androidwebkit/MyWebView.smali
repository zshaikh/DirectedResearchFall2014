.class public abstract Lcom/dolphin/browser/androidwebkit/MyWebView;
.super Landroid/webkit/WebView;
.source "MyWebView.java"


# static fields
.field private static d:Z

.field private static final f:Z


# instance fields
.field private final A:[I

.field private B:I

.field private C:Lcom/dolphin/browser/core/IWebViewCallback;

.field private D:Lcom/dolphin/browser/core/IWebSettings;

.field private E:Landroid/view/View;

.field private F:Ljava/lang/String;

.field private G:Lcom/dolphin/browser/ui/ActionDetector;

.field private H:Lcom/dolphin/browser/l/l;

.field private I:Ljava/lang/Object;

.field private J:Ljava/lang/Object;

.field private K:Ljava/lang/String;

.field private L:[Ljava/lang/String;

.field private M:Ljava/lang/reflect/Method;

.field private N:Ljava/lang/reflect/Method;

.field private O:Ljava/lang/reflect/Method;

.field a:Landroid/text/ClipboardManager;

.field b:Ljava/lang/Runnable;

.field protected c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

.field private e:Landroid/graphics/Paint;

.field private g:Lcom/dolphin/browser/androidwebkit/m;

.field private h:Lcom/dolphin/browser/androidwebkit/k;

.field private i:Z

.field private j:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

.field private k:I

.field private l:I

.field private m:Lcom/dolphin/browser/androidwebkit/n;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/View$OnCreateContextMenuListener;

.field private r:Lcom/dolphin/browser/androidwebkit/p;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

.field private z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 96
    sput-boolean v0, Lcom/dolphin/browser/androidwebkit/MyWebView;->d:Z

    .line 881
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/androidwebkit/MyWebView;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 978
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 891
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->i:Z

    .line 905
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->n:Z

    .line 911
    new-instance v0, Lcom/dolphin/browser/androidwebkit/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/f;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    .line 952
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->A:[I

    .line 1729
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    .line 1730
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1731
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1733
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->K:Ljava/lang/String;

    .line 979
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Landroid/content/Context;)V

    .line 980
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 990
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 891
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->i:Z

    .line 905
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->n:Z

    .line 911
    new-instance v0, Lcom/dolphin/browser/androidwebkit/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/f;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    .line 952
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->A:[I

    .line 1729
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    .line 1730
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1731
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1733
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->K:Ljava/lang/String;

    .line 991
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Landroid/content/Context;)V

    .line 992
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1003
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 891
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->i:Z

    .line 905
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->n:Z

    .line 911
    new-instance v0, Lcom/dolphin/browser/androidwebkit/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/f;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    .line 952
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->A:[I

    .line 1729
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    .line 1730
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1731
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1733
    iput-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->K:Ljava/lang/String;

    .line 1004
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Landroid/content/Context;)V

    .line 1005
    return-void
.end method

.method private I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->a:Landroid/text/ClipboardManager;

    .line 1136
    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1139
    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->a:Landroid/text/ClipboardManager;

    .line 1141
    :cond_0
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_1

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private J()V
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->a()V

    .line 1221
    :cond_0
    return-void
.end method

.method private K()V
    .locals 1

    .prologue
    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->o:Z

    .line 1235
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/k;->a()V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    if-eqz v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/p;->a()V

    .line 1241
    :cond_1
    return-void
.end method

.method private L()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1284
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->showZoomButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1286
    :cond_0
    return-void
.end method

.method private M()V
    .locals 5

    .prologue
    .line 1582
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/MyWebView;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->p:Z

    if-eqz v0, :cond_2

    .line 1583
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    if-nez v0, :cond_0

    .line 1584
    new-instance v0, Lcom/dolphin/browser/androidwebkit/p;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/androidwebkit/p;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->k:I

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/p;->a(II)V

    .line 1587
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/k;->a()V

    .line 1600
    :cond_1
    :goto_0
    return-void

    .line 1591
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    if-nez v0, :cond_3

    .line 1592
    new-instance v0, Lcom/dolphin/browser/androidwebkit/k;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/androidwebkit/k;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    .line 1594
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->u:I

    iget v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->v:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/androidwebkit/k;->a(IIII)V

    .line 1596
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/p;->a()V

    goto :goto_0
.end method

.method private N()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1793
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1794
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1808
    :goto_0
    return-object v0

    .line 1796
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1798
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 1799
    :cond_1
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1800
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    const-string v2, "mBrowserFrame"

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1802
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "hasPasswordField"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->N:Ljava/lang/reflect/Method;

    .line 1803
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->N:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1804
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->N:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    const-string v2, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private O()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1814
    const/4 v1, 0x0

    .line 1816
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1817
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1818
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    const-string v2, "mBrowserFrame"

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1820
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getUsernamePassword"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->O:Ljava/lang/reflect/Method;

    .line 1821
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->O:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1822
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->O:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :goto_0
    return-object v0

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    const-string v2, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    return p1
.end method

.method private a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2040
    const/4 v0, 0x0

    .line 2042
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2046
    :goto_0
    return-object v0

    .line 2043
    :catch_0
    move-exception v1

    .line 2044
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->s:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/m;)Lcom/dolphin/browser/androidwebkit/m;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    return-object p1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1830
    const/4 v0, 0x0

    .line 1832
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1833
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1834
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1838
    :goto_0
    return-object v0

    .line 1835
    :catch_0
    move-exception v1

    .line 1836
    const-string v2, "MyWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1748
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1749
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1750
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1752
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1753
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUsernamePassword"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->M:Ljava/lang/reflect/Method;

    .line 1754
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->M:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1755
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->w()Landroid/view/View;

    .line 1756
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    .line 1762
    new-instance v1, Lcom/dolphin/browser/androidwebkit/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/g;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    :cond_2
    :goto_0
    return-void

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    const-string v1, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/MyWebView;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->p:Z

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->A:[I

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->t:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$SelectTextListener;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->u:I

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->v:I

    return p1
.end method

.method static synthetic d(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/core/IWebView$ContextPanelListener;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->j:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->k:I

    return p1
.end method

.method static synthetic e(Lcom/dolphin/browser/androidwebkit/MyWebView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/androidwebkit/MyWebView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->l:I

    return p1
.end method

.method static synthetic f(Lcom/dolphin/browser/androidwebkit/MyWebView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/androidwebkit/MyWebView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    return v0
.end method

.method private g(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1473
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->isIncredible()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(I)I
    .locals 2

    .prologue
    .line 1609
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/androidwebkit/MyWebView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    return v0
.end method

.method static synthetic i(Lcom/dolphin/browser/androidwebkit/MyWebView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->u:I

    return v0
.end method

.method static synthetic j(Lcom/dolphin/browser/androidwebkit/MyWebView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->v:I

    return v0
.end method

.method static synthetic k(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->M()V

    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/androidwebkit/MyWebView;)Lcom/dolphin/browser/androidwebkit/m;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    return-object v0
.end method

.method static synthetic m(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic n(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->M:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic o(Lcom/dolphin/browser/androidwebkit/MyWebView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->O()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->N()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1859
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1860
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1863
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/i;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/androidwebkit/i;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1871
    :cond_2
    return-void
.end method

.method public B()V
    .locals 5

    .prologue
    .line 1874
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->N()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1875
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->O()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->L:[Ljava/lang/String;

    .line 1877
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1879
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 1880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1881
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    if-nez v2, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    .line 1884
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    if-eqz v2, :cond_2

    .line 1886
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v2

    .line 1888
    invoke-virtual {v2}, Lcom/dolphin/browser/l/e;->h()V

    .line 1889
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/l/l;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1890
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1891
    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->C:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v4, :cond_1

    .line 1892
    invoke-virtual {v2, p0}, Lcom/dolphin/browser/l/e;->a(Ljava/lang/Object;)V

    .line 1893
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->C:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v2, v4, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 1900
    :cond_1
    if-eqz v3, :cond_2

    const/4 v1, 0x0

    aget-object v1, v3, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v3, v1

    if-eqz v1, :cond_2

    .line 1901
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v3, v1

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    :cond_2
    :goto_0
    return-void

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    const-string v1, "MyWebView"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public C()V
    .locals 0

    .prologue
    .line 1956
    return-void
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 1959
    const/4 v0, 0x0

    return v0
.end method

.method public E()V
    .locals 0

    .prologue
    .line 1963
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method protected G()V
    .locals 0

    .prologue
    .line 1993
    return-void
.end method

.method protected H()Z
    .locals 1

    .prologue
    .line 2000
    const/4 v0, 0x0

    return v0
.end method

.method a(I)I
    .locals 2

    .prologue
    .line 1035
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public a(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2012
    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move-object v0, v1

    .line 2036
    :cond_1
    :goto_0
    return-object v0

    .line 2016
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    .line 2017
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/dt;->a(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 2019
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 2020
    if-nez v2, :cond_4

    .line 2021
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/dt;->a(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2022
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2025
    goto :goto_0

    .line 2027
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2028
    if-nez v0, :cond_5

    move-object v0, v1

    .line 2029
    goto :goto_0

    .line 2031
    :cond_5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2032
    int-to-float v3, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2033
    iget v3, p3, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    iget v4, p3, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2034
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Z)Landroid/view/View;
    .locals 0

    .prologue
    .line 1631
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 2

    .prologue
    .line 1503
    new-instance v0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1842
    const/4 v0, 0x0

    .line 1843
    const-string v1, "mWebViewCore"

    .line 1845
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebViewCore"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1849
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1850
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1854
    :goto_0
    return-object v0

    .line 1851
    :catch_0
    move-exception v1

    .line 1852
    const-string v2, "MyWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->G()V

    .line 1009
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Z)V

    .line 1010
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->c(Z)V

    .line 1011
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b()V

    .line 1012
    return-void
.end method

.method protected a(IIII)V
    .locals 0

    .prologue
    .line 1981
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1266
    new-instance v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    .line 1267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 1269
    mul-int/2addr v0, v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->B:I

    .line 1270
    new-instance v0, Lcom/dolphin/browser/ui/ActionDetector;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/ActionDetector;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->G:Lcom/dolphin/browser/ui/ActionDetector;

    .line 1271
    invoke-static {p1}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->H:Lcom/dolphin/browser/l/l;

    .line 1272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->e:Landroid/graphics/Paint;

    .line 1273
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->e:Landroid/graphics/Paint;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$color;->night_mode_webview_mask:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1274
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->L()V

    .line 1275
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    sget v0, Lcom/dolphin/browser/util/bu;->a:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setBackgroundColor(I)V

    .line 1278
    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1987
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1975
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->E:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1542
    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1547
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1548
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->E:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :cond_1
    :goto_0
    return-void

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    const-string v1, "MyWebView"

    const-string v2, "setTitleBar"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1555
    :cond_2
    if-eqz p1, :cond_1

    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1557
    if-eq v0, p0, :cond_1

    .line 1559
    if-eqz v0, :cond_3

    .line 1560
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1563
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1564
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->E:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1565
    :catch_1
    move-exception v0

    .line 1566
    const-string v1, "MyWebView"

    const-string v2, "setTitleBar"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    .line 969
    return-void
.end method

.method public a(Lcom/dolphin/browser/androidwebkit/u;)V
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1912
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    .line 1913
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->I:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    .line 1916
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1917
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->J:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/j;

    invoke-direct {v1, p0, p1, p0}, Lcom/dolphin/browser/androidwebkit/j;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Lcom/dolphin/browser/androidwebkit/u;Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1930
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->j:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    .line 1517
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    .line 1535
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 1

    .prologue
    .line 1526
    new-instance v0, Lcom/dolphin/browser/androidwebkit/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/androidwebkit/b;-><init>(Lcom/dolphin/browser/core/IWebView$PictureListener;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1527
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    .line 1531
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 2

    .prologue
    .line 1574
    new-instance v0, Lcom/dolphin/browser/androidwebkit/c;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/androidwebkit/c;-><init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1575
    new-instance v0, Lcom/dolphin/browser/androidwebkit/r;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/androidwebkit/r;-><init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1576
    new-instance v0, Lcom/dolphin/browser/androidwebkit/a;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/androidwebkit/a;-><init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1577
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->C:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 1578
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->F:Ljava/lang/String;

    .line 1665
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 2

    .prologue
    .line 1726
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->findAll(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/dolphin/browser/core/IWebView$FindResultListener;->onReceiveFindResult(II)V

    .line 1727
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1972
    return-void
.end method

.method protected a(II)Z
    .locals 1

    .prologue
    .line 1996
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 1042
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 2

    .prologue
    .line 1507
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1508
    if-eqz v1, :cond_0

    .line 1509
    new-instance v0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 1511
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->G()V

    .line 1017
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Z)V

    .line 1018
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->c(Z)V

    .line 1020
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->J()V

    .line 1021
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->K()V

    .line 1022
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView$SelectTextListener;->onSelectTextDone(Lcom/dolphin/browser/core/IWebView;)V

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->invalidate()V

    .line 1026
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1990
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 1978
    return-void
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public c()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 2

    .prologue
    .line 1054
    new-instance v0, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/androidwebkit/WebBackForwardListWrapper;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 1984
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 1061
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1064
    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1067
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1068
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->q:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->q:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1072
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 1076
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1079
    :cond_2
    return-void
.end method

.method protected d()Lcom/dolphin/browser/core/IBrowserSettings;
    .locals 1

    .prologue
    .line 1090
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Z
    .locals 1

    .prologue
    .line 1208
    and-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->n:Z

    if-nez v0, :cond_0

    .line 1084
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->n:Z

    .line 1087
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2074
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2078
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContentHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 2079
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2080
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2081
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->f()Landroid/view/View;

    move-result-object v1

    .line 2083
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2084
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2086
    :cond_0
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2087
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2089
    :cond_1
    return-void

    .line 2075
    :catch_0
    move-exception v1

    .line 2076
    const-string v2, "MyWebView"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1095
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1096
    const/4 v0, 0x4

    if-ne v0, v3, :cond_3

    .line 1098
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/k;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1100
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->h:Lcom/dolphin/browser/androidwebkit/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/k;->a()V

    move v0, v1

    .line 1103
    :goto_0
    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    invoke-virtual {v4}, Lcom/dolphin/browser/androidwebkit/p;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->r:Lcom/dolphin/browser/androidwebkit/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/p;->a()V

    move v0, v1

    .line 1107
    :cond_0
    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v4}, Lcom/dolphin/browser/androidwebkit/n;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->a()V

    move v0, v1

    .line 1112
    :cond_1
    if-eqz v0, :cond_2

    .line 1113
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a()V

    .line 1126
    :goto_1
    return v1

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/m;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1118
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/m;->a()V

    goto :goto_1

    .line 1122
    :cond_3
    const/16 v0, 0x52

    if-ne v0, v3, :cond_4

    move v1, v2

    .line 1123
    goto :goto_1

    .line 1126
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1131
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 1132
    return-void
.end method

.method public e(I)I
    .locals 1

    .prologue
    .line 1618
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->h(I)I

    move-result v0

    return v0
.end method

.method public e()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 2

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1151
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 1152
    if-eqz v1, :cond_0

    .line 1153
    new-instance v0, Lcom/dolphin/browser/androidwebkit/HitTestResultWrapper;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/androidwebkit/HitTestResultWrapper;-><init>(Landroid/webkit/WebView$HitTestResult;)V

    .line 1155
    :cond_0
    return-object v0
.end method

.method public f(I)I
    .locals 1

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->h(I)I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->E:Landroid/view/View;

    return-object v0
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 2093
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2097
    :goto_0
    return-void

    .line 2096
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->freeMemory()V

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->E:Landroid/view/View;

    .line 1168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1691
    const/16 v0, 0xa

    .line 1693
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    .line 1679
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->F:Ljava/lang/String;

    .line 1684
    :goto_0
    return-object v0

    .line 1682
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getHeight()I

    move-result v0

    .line 1173
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->overlayHorizontalScrollbar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->j()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1177
    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->overlayVerticalScrollbar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getWidth()I

    move-result v0

    .line 1184
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public j()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1193
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public k()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->D:Lcom/dolphin/browser/core/IWebSettings;

    if-nez v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->getWebSettings(Ljava/lang/Object;)Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->D:Lcom/dolphin/browser/core/IWebSettings;

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->D:Lcom/dolphin/browser/core/IWebSettings;

    return-object v0
.end method

.method public l()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->C:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1640
    invoke-static {p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/browser/provider/FileContentProvider;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1645
    :cond_0
    const-string v0, "MyWebView"

    const-string v1, "androidwebkit MyWebView.loadUrl(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1647
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1648
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    invoke-static {}, Lcom/dolphin/browser/core/af;->a()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v0

    .line 1650
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/INetworkPredictor;->preconnect(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/String;)V

    .line 1653
    :cond_1
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/m;->a()V

    .line 1215
    :cond_0
    return-void
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 1230
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->j()I

    move-result v0

    if-lez v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g()I

    move-result v0

    .line 1246
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->scrollTo(II)V

    .line 1248
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a()V

    .line 1318
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 1319
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1324
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 1329
    instance-of v0, p1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1330
    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 1332
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1336
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 1341
    instance-of v0, p1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1342
    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 1344
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a()V

    .line 1351
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->m()V

    .line 1352
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 1353
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1358
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    :goto_0
    return-void

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    const-string v1, "MyWebView"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    const/4 v0, 0x1

    .line 1369
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 1717
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 1718
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->G:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-virtual {v0, p2, p4}, Lcom/dolphin/browser/ui/ActionDetector;->onScrollChanged(II)V

    .line 1720
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->z:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    invoke-interface {v0, p2, p4}, Lcom/dolphin/browser/core/IWebView$OnScrollListener;->onScrollChanged(II)V

    .line 1723
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1375
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a()V

    .line 1383
    :cond_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    const-string v1, "MyWebView"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1391
    if-nez v0, :cond_0

    .line 1392
    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->G:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-virtual {v5}, Lcom/dolphin/browser/ui/ActionDetector;->onTouchDown()V

    .line 1394
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1395
    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->G:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-virtual {v5}, Lcom/dolphin/browser/ui/ActionDetector;->onTouchUp()V

    .line 1397
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/dolphin/browser/core/IBrowserSettings;->getEnableLongPressMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->D()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1398
    iget v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    float-to-int v6, v4

    sub-int/2addr v5, v6

    .line 1399
    iget v6, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    float-to-int v7, v3

    sub-int/2addr v6, v7

    .line 1400
    packed-switch v0, :pswitch_data_0

    .line 1423
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v2, :cond_a

    .line 1424
    float-to-int v5, v4

    iput v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->k:I

    .line 1425
    float-to-int v5, v3

    iput v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->l:I

    .line 1426
    if-eqz v0, :cond_3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->p:Z

    .line 1427
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1428
    iget-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->o:Z

    if-nez v0, :cond_4

    .line 1429
    iput-boolean v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->o:Z

    .line 1430
    float-to-int v0, v4

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    .line 1431
    float-to-int v0, v3

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    .line 1432
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    if-eqz v0, :cond_4

    .line 1433
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/IWebView$SelectTextListener;->onSelectTextStarted(Lcom/dolphin/browser/core/IWebView;)V

    .line 1436
    :cond_4
    float-to-int v0, v4

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->u:I

    .line 1437
    float-to-int v0, v3

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->v:I

    .line 1438
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->M()V

    .line 1466
    :cond_5
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1468
    :goto_2
    return v2

    .line 1402
    :pswitch_0
    float-to-int v5, v4

    iput v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    .line 1403
    float-to-int v5, v3

    iput v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    .line 1404
    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/androidwebkit/MyWebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1405
    iput-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->i:Z

    .line 1406
    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Lcom/dolphin/browser/androidwebkit/MyWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1409
    :pswitch_1
    iget-boolean v7, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->i:Z

    if-nez v7, :cond_2

    mul-int/2addr v5, v5

    mul-int/2addr v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->B:I

    if-lt v5, v6, :cond_2

    .line 1410
    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/androidwebkit/MyWebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1411
    iput-boolean v2, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->i:Z

    goto :goto_0

    .line 1416
    :pswitch_2
    iget-object v5, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/androidwebkit/MyWebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1426
    goto :goto_1

    .line 1440
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    if-nez v0, :cond_8

    .line 1441
    new-instance v0, Lcom/dolphin/browser/androidwebkit/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/q;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    .line 1443
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1444
    float-to-int v0, v4

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->w:I

    .line 1445
    float-to-int v0, v3

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->x:I

    .line 1446
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->c()V

    .line 1447
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    if-eqz v0, :cond_9

    .line 1448
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->y:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView$SelectTextListener;->onSelectTextStarted(Lcom/dolphin/browser/core/IWebView;)V

    .line 1451
    :cond_9
    float-to-int v0, v4

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->u:I

    .line 1452
    float-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->v:I

    .line 1453
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->d()V

    goto :goto_2

    .line 1456
    :cond_a
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->H()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v2, :cond_b

    .line 1457
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 1459
    :cond_b
    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->g:Lcom/dolphin/browser/androidwebkit/m;

    invoke-virtual {v3}, Lcom/dolphin/browser/androidwebkit/m;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1461
    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    .line 1467
    :catch_0
    move-exception v0

    move v2, v1

    .line 1468
    goto/16 :goto_2

    .line 1400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    const/4 v0, 0x1

    .line 1482
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 1488
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 1489
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->m:Lcom/dolphin/browser/androidwebkit/n;

    invoke-interface {v0}, Lcom/dolphin/browser/androidwebkit/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a()V

    .line 1497
    :cond_0
    if-nez p1, :cond_1

    .line 1498
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->m()V

    .line 1500
    :cond_1
    return-void

    .line 1490
    :catch_0
    move-exception v0

    .line 1491
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public p()V
    .locals 2

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->scrollTo(II)V

    .line 1254
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1698
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/MyWebView;->d:Z

    if-nez v0, :cond_0

    .line 1699
    sput-boolean v2, Lcom/dolphin/browser/androidwebkit/MyWebView;->d:Z

    .line 1700
    const-string v0, "MyWebView"

    const-string v1, "pauseTimers, view=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1701
    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1703
    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 1657
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 1658
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/String;)V

    .line 1661
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 1258
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->showZoomButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1707
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/MyWebView;->d:Z

    if-eqz v0, :cond_0

    .line 1708
    sput-boolean v3, Lcom/dolphin/browser/androidwebkit/MyWebView;->d:Z

    .line 1709
    const-string v0, "MyWebView"

    const-string v1, "resumeTimers, view=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1710
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 1712
    :cond_0
    return-void
.end method

.method public s()Z
    .locals 3

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->computeHorizontalScrollRange()I

    move-result v0

    .line 1294
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->i()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 1521
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1522
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->q:Landroid/view/View$OnCreateContextMenuListener;

    .line 1523
    return-void
.end method

.method protected t()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1298
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->k()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->v()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->k()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebSettings;->canQuickSelection()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->d()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/IBrowserSettings;->useCustomTextSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected u()Z
    .locals 1

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 1309
    iget-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->n:Z

    return v0
.end method

.method public w()Landroid/view/View;
    .locals 0

    .prologue
    .line 1635
    return-object p0
.end method

.method x()V
    .locals 1

    .prologue
    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->F:Ljava/lang/String;

    .line 1673
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->K:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;->K:Ljava/lang/String;

    .line 1742
    return-void
.end method

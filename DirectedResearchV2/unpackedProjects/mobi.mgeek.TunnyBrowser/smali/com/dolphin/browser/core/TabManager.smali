.class public Lcom/dolphin/browser/core/TabManager;
.super Lcom/dolphin/browser/util/BaseObservable;
.source "TabManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/BaseObservable",
        "<",
        "Lcom/dolphin/browser/core/ITabListener;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Lcom/dolphin/browser/core/TabManager;

.field private static y:Lcom/dolphin/browser/addons/bc;


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/dolphin/browser/util/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/ck",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/dolphin/browser/core/IWebViewCallback;

.field private i:Lcom/dolphin/browser/core/ITab;

.field private j:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

.field private k:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

.field private l:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

.field private m:Landroid/view/View$OnCreateContextMenuListener;

.field private n:Lcom/dolphin/browser/core/ay;

.field private o:Lcom/dolphin/browser/sync/at;

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/dolphin/browser/core/l;

.field private r:Lcom/dolphin/browser/core/m;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private w:Lcom/dolphin/browser/core/k;

.field private x:Lcom/dolphin/browser/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    sput v0, Lcom/dolphin/browser/core/TabManager;->a:I

    .line 1910
    new-instance v0, Lcom/dolphin/browser/core/au;

    invoke-direct {v0}, Lcom/dolphin/browser/core/au;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/TabManager;->y:Lcom/dolphin/browser/addons/bc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/4 v4, 0x0

    .line 212
    invoke-direct {p0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    .line 150
    iput-object v2, p0, Lcom/dolphin/browser/core/TabManager;->o:Lcom/dolphin/browser/sync/at;

    .line 213
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->c:Landroid/content/Context;

    .line 214
    const v0, 0x7fffffff

    iput v0, p0, Lcom/dolphin/browser/core/TabManager;->d:I

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    .line 217
    iput-object v2, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 218
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/dolphin/browser/util/ck;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getTabUndoHistoryLimit()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/ck;-><init>(I)V

    iput-object v1, p0, Lcom/dolphin/browser/core/TabManager;->g:Lcom/dolphin/browser/util/ck;

    .line 220
    iput-boolean v4, p0, Lcom/dolphin/browser/core/TabManager;->s:Z

    .line 221
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->o:Lcom/dolphin/browser/sync/at;

    .line 222
    const-string v0, "TabManager"

    const-string v1, "init by %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1596
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITabListener;

    .line 1598
    if-eqz v0, :cond_0

    .line 1599
    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/ITabListener;->onTabCountChanged(Lcom/dolphin/browser/core/TabManager;)V

    goto :goto_0

    .line 1602
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->B()V

    .line 1603
    return-void
.end method

.method private B()V
    .locals 4

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1607
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1608
    iget v1, p0, Lcom/dolphin/browser/core/TabManager;->t:I

    if-ge v1, v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1609
    :cond_0
    const-string v1, "tab bar"

    const-string v2, "num"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_1
    iput v0, p0, Lcom/dolphin/browser/core/TabManager;->t:I

    .line 1614
    :cond_2
    return-void
.end method

.method private C()Lcom/dolphin/browser/core/IWebView;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 2098
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 2099
    invoke-interface {v0, v5}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2112
    :goto_0
    return-object v0

    .line 2102
    :cond_1
    instance-of v1, v0, Lcom/dolphin/browser/core/n;

    if-eqz v1, :cond_0

    .line 2103
    check-cast v0, Lcom/dolphin/browser/core/n;

    .line 2104
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/dolphin/browser/core/n;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2105
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/n;->a(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 2106
    if-eqz v2, :cond_2

    invoke-interface {v2, v5}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 2107
    goto :goto_0

    .line 2104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2112
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 601
    :goto_0
    return-object v0

    .line 591
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :try_start_1
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/InputStream;)Landroid/os/Bundle;

    move-result-object v0

    .line 593
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 596
    :goto_1
    :try_start_2
    const-string v3, "TabManager"

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 598
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 601
    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 595
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 1802
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/core/TabManager;->createActivityTab(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)Lcom/dolphin/browser/core/ITab;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1805
    :goto_0
    return-object v0

    .line 1803
    :catch_0
    move-exception v0

    .line 1805
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/TabManager;->c(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/core/TabManager;
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    iget-object v0, v0, Lcom/dolphin/browser/core/TabManager;->c:Landroid/content/Context;

    if-eq v0, p0, :cond_1

    .line 229
    :cond_0
    new-instance v0, Lcom/dolphin/browser/core/TabManager;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/TabManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    .line 230
    const-string v0, "TabManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    iput-object p0, v0, Lcom/dolphin/browser/core/TabManager;->c:Landroid/content/Context;

    .line 234
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1810
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/core/TabManager;->getActivityTab(Ljava/lang/String;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1811
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 1812
    check-cast v0, Lcom/dolphin/browser/core/ActivityTab;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/ActivityTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1814
    if-eqz v0, :cond_1

    .line 1815
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 1816
    sget-object v1, Lcom/dolphin/browser/core/ActivityTab;->a:Landroid/app/Instrumentation;

    invoke-virtual {v1, v0, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    .line 1823
    :cond_2
    invoke-direct {p0, p1, p3, p2}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1824
    if-eqz v0, :cond_0

    .line 1825
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1620
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITabListener;

    .line 1622
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITabListener;->onTabSelectionChanged(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 1624
    :cond_0
    return-void
.end method

.method private b(IZ)Lcom/dolphin/browser/core/ITab;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1236
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 1237
    iput p1, p0, Lcom/dolphin/browser/core/TabManager;->v:I

    .line 1238
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1240
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1241
    const-string v1, "TabManager"

    const-string v2, "removeTabInner %s at %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v0

    .line 1242
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/core/an;->d(Z)V

    .line 1243
    if-eqz p2, :cond_0

    .line 1244
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 1246
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 1247
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    if-ne v1, v0, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->q:Lcom/dolphin/browser/core/l;

    if-eqz v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->q:Lcom/dolphin/browser/core/l;

    invoke-interface {v1, p0, v0, p1}, Lcom/dolphin/browser/core/l;->a(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;I)V

    .line 1267
    :cond_1
    :goto_0
    new-instance v1, Lcom/dolphin/browser/core/as;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/core/as;-><init>(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;)V

    const-wide/16 v2, 0x32

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    move-object v1, v0

    .line 1275
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->f()V

    .line 1279
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/ITab;

    .line 1280
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getChildTabs()Ljava/util/Vector;

    move-result-object v2

    .line 1281
    if-eqz v2, :cond_2

    .line 1282
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/core/ITab;

    .line 1283
    invoke-interface {v2, v1}, Lcom/dolphin/browser/core/ITab;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_1

    .line 1252
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1253
    const-string v1, "removeAllTab but mTabController not set, create a tab to load home page"

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 1254
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->o()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1255
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 1256
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    iput-object v1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    .line 1258
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 1259
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/ITab;

    iput-object v1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    .line 1261
    :cond_5
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/ITab;

    iput-object v1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    .line 1288
    :cond_6
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1291
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/z;->a()Lmobi/mgeek/util/CrashReporter/z;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/util/CrashReporter/z;->b()V

    .line 1295
    :goto_2
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private b(Lcom/dolphin/browser/core/ITab;Z)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 1357
    if-eqz p1, :cond_0

    .line 1358
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/core/TabManager;->b(IZ)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/TabManager;->d(I)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/dolphin/browser/core/TabManager;->u:Z

    .line 188
    return-void
.end method

.method private b(Landroid/os/Bundle;Z)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 640
    if-nez p1, :cond_0

    .line 641
    const-string v1, "TabManager"

    const-string v2, "inState is empty"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return v0

    .line 644
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 645
    const-string v1, "TabManager is already restored."

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 648
    :cond_1
    const-string v1, "numTabs"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 649
    if-ne v1, v2, :cond_2

    .line 650
    const-string v1, "TabManager"

    const-string v2, "Bad numTabs."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1867
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1871
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/core/ITab;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ITab;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 388
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 414
    :goto_0
    return-object v0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 393
    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 401
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 403
    if-eq v0, p1, :cond_3

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 404
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 414
    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 239
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->e()V

    .line 241
    const-string v0, "TabManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    .line 244
    return-void
.end method

.method private c(Lcom/dolphin/browser/core/IWebView;)V
    .locals 4

    .prologue
    .line 1145
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    .line 1146
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1148
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1149
    const-string v2, "enableSmartZoom"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1150
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(I)Lcom/dolphin/browser/core/IWebView;
    .locals 3

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1876
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1888
    :goto_0
    return-object v0

    .line 1879
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getWebView()Ljava/lang/Object;

    move-result-object v0

    .line 1880
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1881
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1882
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->getIWebViewFromView(Landroid/view/View;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    goto :goto_0

    .line 1883
    :cond_2
    instance-of v2, v0, Lcom/dolphin/browser/core/IWebView;

    if-eqz v2, :cond_0

    .line 1884
    check-cast v0, Lcom/dolphin/browser/core/IWebView;

    goto :goto_0

    .line 1888
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    .line 432
    const-string v0, "TabManager"

    const-string v1, "saveTabToRecent"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    if-eqz p1, :cond_0

    .line 439
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can not add a null tab"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_0
    return-void
.end method

.method private f(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 1304
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isTabUndoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->saveState()Z

    .line 1306
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->canStateUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->g:Lcom/dolphin/browser/util/ck;

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/ck;->push(Ljava/lang/Object;)V

    .line 1310
    :cond_0
    return-void
.end method

.method public static declared-synchronized getFreeDataKey()I
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1858
    const-class v1, Lcom/dolphin/browser/core/TabManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/dolphin/browser/core/TabManager;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/dolphin/browser/core/TabManager;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/dolphin/browser/core/TabManager;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->b:Lcom/dolphin/browser/core/TabManager;

    return-object v0
.end method

.method public static getTab(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1843
    instance-of v0, p0, Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1844
    check-cast p0, Lcom/dolphin/browser/core/ITab;

    .line 1850
    :goto_0
    return-object p0

    .line 1846
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1847
    if-eqz v0, :cond_1

    .line 1848
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/TabManager;->getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object p0

    goto :goto_0

    .line 1850
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 508
    const-string v1, "TabManager"

    const-string v2, "saveStateForCrash"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 514
    :goto_1
    if-ge v3, v4, :cond_2

    .line 515
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 516
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 514
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 522
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isTitleReceived()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 523
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 525
    :goto_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 526
    const-string v6, "currentUrl"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v1, "currentTitle"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 529
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 531
    :cond_2
    const-string v0, "numTabs"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method public static w()Lcom/dolphin/browser/addons/bc;
    .locals 1

    .prologue
    .line 1862
    sget-object v0, Lcom/dolphin/browser/core/TabManager;->y:Lcom/dolphin/browser/addons/bc;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/dolphin/browser/core/TabManager;->v:I

    return v0
.end method

.method public a(ILandroid/view/View;Ljava/lang/String;)Lcom/dolphin/browser/core/ITab;
    .locals 5

    .prologue
    .line 1042
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type must be larger than or equal with 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    new-instance v1, Lcom/dolphin/browser/core/bg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dolphin/browser/core/bg;-><init>(Lcom/dolphin/browser/core/TabManager;ILandroid/view/View;Ljava/lang/String;)V

    .line 1046
    instance-of v0, p2, Lcom/dolphin/browser/core/k;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 1047
    check-cast v0, Lcom/dolphin/browser/core/k;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 1051
    :goto_0
    instance-of v0, p2, Lcom/dolphin/browser/core/j;

    if-eqz v0, :cond_2

    .line 1052
    check-cast p2, Lcom/dolphin/browser/core/j;

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 1056
    :goto_1
    const-string v0, "TabManager"

    const-string v2, "crateViewTab %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1057
    return-object v1

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    goto :goto_0

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    goto :goto_1
.end method

.method public a(ILandroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/al;)Lcom/dolphin/browser/core/ITab;
    .locals 6

    .prologue
    .line 1062
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 1063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type must be larger than or equal with 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_0
    new-instance v0, Lcom/dolphin/browser/core/ak;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/core/ak;-><init>(Lcom/dolphin/browser/core/TabManager;ILandroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/al;)V

    .line 1066
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 1067
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 1068
    const-string v1, "TabManager"

    const-string v2, "crateRestoreTab %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1069
    return-object v0
.end method

.method a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 993
    new-instance v0, Lcom/dolphin/browser/core/ActivityTab;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/core/ActivityTab;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 994
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 995
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 996
    return-object v0
.end method

.method public varargs a([Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 968
    new-instance v0, Lcom/dolphin/browser/core/n;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/n;-><init>(Lcom/dolphin/browser/core/TabManager;[Lcom/dolphin/browser/core/ITab;)V

    .line 969
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 970
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 971
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2053
    const-string v1, "TabManager"

    const-string v2, "getUrlAndTitleDataForCrash"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/TabManager;->b(Landroid/os/Bundle;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2079
    :cond_0
    :goto_0
    return-object v0

    .line 2058
    :cond_1
    :try_start_0
    const-string v1, "numTabs"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2059
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_4

    .line 2061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2062
    const-string v3, "currentUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2063
    const-string v6, "currentTitle"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2064
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v3

    .line 2067
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2068
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2069
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2060
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 2072
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2075
    goto :goto_0

    .line 2077
    :catch_0
    move-exception v1

    .line 2078
    const-string v2, "TabManager"

    const-string v3, "get data for crash failed"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 331
    iput p1, p0, Lcom/dolphin/browser/core/TabManager;->d:I

    .line 332
    return-void
.end method

.method public a(ILcom/dolphin/browser/core/ITab;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1774
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 1775
    const-string v0, "TabManager"

    const-string v3, "replaceTabAt %d, newTab=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1776
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1777
    iget-object v3, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1778
    iget-object v3, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    if-ne v3, v0, :cond_0

    move v2, v1

    .line 1780
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1782
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/core/an;->c(Lcom/dolphin/browser/core/ITab;)V

    .line 1784
    if-eqz v2, :cond_2

    .line 1785
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    iput-object p2, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    move-object v1, p2

    .line 1787
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->h()V

    .line 1788
    invoke-direct {p0, p2, v0}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    .line 1792
    :goto_0
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 1793
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1795
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 1797
    :cond_1
    return-void

    :cond_2
    move-object v1, p2

    .line 1790
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->c()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1832
    const-string v0, "child_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1833
    const-string v1, "activity_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1834
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1835
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1837
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1838
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 454
    const-string v0, "TabManager"

    const-string v2, "saveState"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v2

    .line 456
    const-string v0, "numTabs"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 458
    const-string v3, "currentTab"

    if-ltz v0, :cond_1

    if-ge v0, v2, :cond_1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    :goto_1
    if-ge v1, v2, :cond_2

    .line 460
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->saveState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 458
    goto :goto_0

    .line 465
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->m:Landroid/view/View$OnCreateContextMenuListener;

    .line 297
    return-void
.end method

.method protected a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 1628
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 1629
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 1630
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V

    .line 1631
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getProgress()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;I)V

    .line 1632
    return-void
.end method

.method protected a(Lcom/dolphin/browser/core/ITab;I)V
    .locals 2

    .prologue
    .line 1566
    if-eqz p1, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1569
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITabListener;

    .line 1571
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITabListener;->onTabProgressChanged(Lcom/dolphin/browser/core/ITab;I)V

    goto :goto_0

    .line 1574
    :cond_0
    return-void
.end method

.method protected a(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1582
    if-eqz p1, :cond_0

    .line 1583
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1585
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITabListener;

    .line 1587
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITabListener;->onTabIconChanged(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1590
    :cond_0
    return-void
.end method

.method protected a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1533
    if-eqz p1, :cond_0

    .line 1534
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1535
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITabListener;

    .line 1537
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITabListener;->onTabTitleChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->j:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    .line 271
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->l:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    .line 285
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->k:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    .line 281
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 1112
    if-eqz p1, :cond_1

    .line 1113
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    .line 1114
    if-eqz v0, :cond_0

    .line 1115
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/BrowserSettings;->deleteObserver(Lcom/dolphin/browser/core/IWebSettings;)V

    .line 1117
    :cond_0
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->destroy()V

    .line 1119
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ay;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->n:Lcom/dolphin/browser/core/ay;

    .line 302
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/j;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    .line 176
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/k;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    .line 173
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/l;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->q:Lcom/dolphin/browser/core/l;

    .line 203
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/m;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->r:Lcom/dolphin/browser/core/m;

    .line 312
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 539
    return-void
.end method

.method public a(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 547
    const/4 v1, 0x0

    .line 550
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->j(Landroid/os/Bundle;)V

    .line 558
    :goto_0
    const-string v2, "iscrash"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 559
    const-string v2, "sendlastlog"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/BrowserSettings;->getStateFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    invoke-static {v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/os/Bundle;Ljava/io/OutputStream;)V

    .line 563
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 569
    :goto_1
    return-void

    .line 556
    :cond_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->b(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    :goto_2
    :try_start_3
    const-string v2, "TabManager"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 564
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method protected a(IZ)Z
    .locals 1

    .prologue
    .line 1394
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1395
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Z)Z

    move-result v0

    .line 1397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1198
    invoke-direct {p0, p3}, Lcom/dolphin/browser/core/TabManager;->b(Z)V

    .line 1200
    invoke-direct {p0, p2}, Lcom/dolphin/browser/core/TabManager;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 1201
    const-string v2, "TabManager"

    const-string v3, "addTab %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1202
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1203
    if-nez p1, :cond_1

    .line 1204
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/dolphin/browser/core/ITab;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    .line 1205
    invoke-static {}, Lcom/dolphin/browser/core/az;->a()Lcom/dolphin/browser/core/az;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dolphin/browser/core/az;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 1206
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    :goto_0
    const-string v2, "TabManager"

    const-string v3, "addTab %s success"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1218
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1219
    if-nez p3, :cond_0

    .line 1220
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 1224
    :cond_0
    :goto_1
    return v0

    .line 1209
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getLastChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    move-object v3, p1

    .line 1210
    :goto_2
    if-eqz v2, :cond_2

    .line 1212
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getLastChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    .line 1214
    :cond_2
    invoke-interface {p1, p2}, Lcom/dolphin/browser/core/ITab;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    .line 1215
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1224
    goto :goto_1
.end method

.method protected a(Lcom/dolphin/browser/core/ITab;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 1364
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    .line 1365
    if-eqz p1, :cond_3

    if-eq v5, v1, :cond_3

    .line 1366
    const-string v1, "TabManager"

    const-string v3, "setCurrentTab %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1367
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1369
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1370
    if-eq v0, v5, :cond_0

    .line 1371
    iget-object v3, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1375
    if-eq p1, v1, :cond_2

    .line 1376
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 1377
    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->c()V

    :cond_1
    move-object v0, p1

    .line 1379
    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/core/an;->c(Z)V

    .line 1380
    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    :cond_2
    move v0, v2

    .line 1384
    :cond_3
    return v0
.end method

.method public a(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1319
    const-string v0, "TabManager"

    const-string v3, "undoCloseTab"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->g:Lcom/dolphin/browser/util/ck;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ck;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1321
    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->i(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_1

    .line 1324
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1325
    if-eqz p1, :cond_0

    .line 1326
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    :goto_0
    move v0, v1

    .line 1335
    :goto_1
    return v0

    .line 1328
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 1329
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 1330
    invoke-direct {p0, v3, v2}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/ITab;Z)Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1335
    goto :goto_1
.end method

.method public addTab(ILcom/dolphin/browser/core/ITab;)Z
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1180
    invoke-direct {p0, v1}, Lcom/dolphin/browser/core/TabManager;->b(Z)V

    .line 1182
    invoke-direct {p0, p2}, Lcom/dolphin/browser/core/TabManager;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 1183
    const-string v2, "TabManager"

    const-string v3, "addTab %s at %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1184
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1185
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/dolphin/browser/core/ITab;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    .line 1186
    invoke-static {}, Lcom/dolphin/browser/core/az;->a()Lcom/dolphin/browser/core/az;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dolphin/browser/core/az;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 1187
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1188
    const-string v2, "TabManager"

    const-string v3, "addtab %s success"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1189
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1192
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public addTab(Lcom/dolphin/browser/core/ITab;)Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1167
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    move-result v0

    return v0
.end method

.method public addTabListener(Lcom/dolphin/browser/core/ITabListener;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1507
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->addListener(Ljava/lang/Object;)V

    .line 1508
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2094
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 801
    const-string v0, "TabManager"

    const-string v3, "freeMemory"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v4

    .line 807
    and-int/lit8 v0, p1, 0x7

    .line 808
    if-eqz v0, :cond_3

    .line 811
    sparse-switch v0, :sswitch_data_0

    .line 833
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 837
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 838
    const-string v3, "TabManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tabs in the browser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 840
    const-string v5, "TabManager"

    const-string v6, "Recycled %s(%s)."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6, v7}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 842
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->saveState()Z

    .line 844
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->destroy()V

    goto :goto_2

    .line 813
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/dolphin/browser/core/TabManager;->c(Lcom/dolphin/browser/core/ITab;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_1

    .line 816
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/dolphin/browser/core/TabManager;->c(Lcom/dolphin/browser/core/ITab;)Ljava/util/Vector;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 824
    shr-int/lit8 v5, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/util/Vector;->setSize(I)V

    goto :goto_1

    .line 827
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/dolphin/browser/core/TabManager;->c(Lcom/dolphin/browser/core/ITab;)Ljava/util/Vector;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 829
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    goto :goto_1

    .line 849
    :cond_3
    and-int/lit8 v0, p1, 0x18

    .line 850
    const/16 v3, 0x10

    and-int/lit8 v5, v0, 0x10

    if-ne v3, v5, :cond_5

    move v3, v1

    .line 851
    :goto_3
    const/16 v5, 0x8

    and-int/lit8 v0, v0, 0x8

    if-ne v5, v0, :cond_6

    move v0, v1

    .line 852
    :goto_4
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v5

    .line 853
    if-eqz v0, :cond_7

    if-gt v5, v1, :cond_4

    if-nez v3, :cond_7

    .line 855
    :cond_4
    if-eqz v4, :cond_0

    .line 856
    const-string v0, "TabManager"

    const-string v3, "Free current tab %s(%s)."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v3, v5}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 857
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->freeMemory()V

    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 850
    goto :goto_3

    :cond_6
    move v0, v2

    .line 851
    goto :goto_4

    .line 860
    :cond_7
    const-string v0, "TabManager"

    const-string v1, "Keep current tab."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 473
    const-string v0, "TabManager"

    const-string v2, "saveStateWithjudge"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v6

    .line 475
    const-string v0, "numTabs"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 477
    const-string v2, "currentTab"

    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v5, v1

    move v4, v1

    .line 479
    :goto_1
    if-ge v5, v6, :cond_4

    .line 480
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 481
    instance-of v0, v1, Lcom/dolphin/browser/core/WebViewTab;

    if-eqz v0, :cond_2

    move v0, v3

    .line 492
    :goto_2
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->saveState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 479
    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 477
    goto :goto_0

    .line 483
    :cond_2
    instance-of v0, v1, Lcom/dolphin/browser/core/i;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 484
    check-cast v0, Lcom/dolphin/browser/core/i;

    move-object v2, v1

    check-cast v2, Lcom/dolphin/browser/core/i;

    invoke-virtual {v2}, Lcom/dolphin/browser/core/i;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/i;->a(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_6

    instance-of v0, v0, Lcom/dolphin/browser/core/bg;

    if-nez v0, :cond_6

    move v0, v3

    .line 486
    goto :goto_2

    .line 488
    :cond_3
    instance-of v0, v1, Lcom/dolphin/browser/core/n;

    if-eqz v0, :cond_6

    move v0, v3

    .line 489
    goto :goto_2

    .line 496
    :cond_4
    if-nez v4, :cond_5

    .line 497
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 499
    const-string v0, "numTabs"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    :cond_5
    return-void

    :cond_6
    move v0, v4

    goto :goto_2
.end method

.method public b(Lcom/dolphin/browser/core/ITab;I)V
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->p:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->p:Ljava/util/HashMap;

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->p:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    return-void
.end method

.method protected b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1548
    if-eqz p1, :cond_0

    .line 1549
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->clearPageData()V

    .line 1551
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1553
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITabListener;

    .line 1555
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITabListener;->onTabUrlChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/IWebView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1123
    .line 1124
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->q()Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V

    .line 1125
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->s()Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    .line 1126
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->t()Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1127
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->r()Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V

    .line 1129
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setScrollbarFadingEnabled(Z)V

    .line 1130
    const/high16 v0, 0x2000000

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setScrollBarStyle(I)V

    .line 1131
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setMapTrackballToArrowKeys(Z)V

    .line 1135
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_0

    .line 1137
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/BrowserSettings;->a(Lcom/dolphin/browser/core/IWebSettings;)Lcom/dolphin/browser/core/c;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/dolphin/browser/core/c;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1139
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSense()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/TabManager;->c(Lcom/dolphin/browser/core/IWebView;)V

    .line 1142
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/dolphin/browser/core/TabManager;->u:Z

    return v0
.end method

.method public c(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->b(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public canCreateNewTab()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/core/TabManager;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createActivityTab(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)Lcom/dolphin/browser/core/ITab;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 985
    new-instance v0, Lcom/dolphin/browser/core/ActivityTab;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/dolphin/browser/core/ActivityTab;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 987
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 988
    return-object v0
.end method

.method public createGameWebViewTab(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 940
    new-instance v0, Lcom/dolphin/browser/core/h;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/h;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    .line 941
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 942
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 943
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->setGameMode(Z)V

    .line 944
    return-object v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/dolphin/browser/core/TabManager;->d:I

    return v0
.end method

.method public d(Landroid/os/Bundle;)Z
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v12, -0x1

    const/4 v4, 0x0

    .line 666
    const-string v1, "TabManager"

    const-string v2, "restoreState"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->c(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    :goto_0
    return v4

    .line 671
    :cond_0
    :try_start_0
    const-string v1, "numTabs"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 672
    const-string v1, "currentTab"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 673
    iget-object v8, p0, Lcom/dolphin/browser/core/TabManager;->n:Lcom/dolphin/browser/core/ay;

    .line 674
    iget-object v9, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    .line 675
    iget-object v10, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    move v5, v4

    .line 676
    :goto_1
    if-ge v5, v6, :cond_4

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 678
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->i(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 679
    if-nez v2, :cond_2

    .line 676
    :cond_1
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    if-ne v5, v7, :cond_3

    .line 687
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iput-object v2, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 689
    move-object v0, v2

    check-cast v0, Lcom/dolphin/browser/core/an;

    move-object v1, v0

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/dolphin/browser/core/an;->c(Z)V

    .line 690
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    .line 697
    :goto_3
    if-eqz v8, :cond_1

    .line 698
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getWebView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v8, v1}, Lcom/dolphin/browser/core/ay;->a(Lcom/dolphin/browser/core/IWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 735
    :catch_0
    move-exception v1

    .line 736
    const-string v2, "TabManager"

    const-string v3, "restore state failed"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 695
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v10, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 702
    :cond_4
    if-lez v6, :cond_5

    .line 703
    const-string v1, "settings_new"

    const-string v2, "opentab"

    const-string v5, "recoverytab"

    invoke-static {v1, v2, v5, v6}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 709
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/core/az;->a()Lcom/dolphin/browser/core/az;

    move-result-object v2

    .line 710
    invoke-virtual {v2}, Lcom/dolphin/browser/core/az;->c()V

    move v1, v4

    .line 711
    :goto_4
    if-ge v1, v6, :cond_8

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tab"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 713
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v7

    .line 714
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 715
    const-string v8, "parentTab"

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 716
    if-eq v5, v12, :cond_7

    .line 717
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v5

    .line 718
    if-eqz v5, :cond_6

    .line 719
    invoke-interface {v5, v7}, Lcom/dolphin/browser/core/ITab;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    .line 711
    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 722
    :cond_7
    invoke-virtual {v2, v7}, Lcom/dolphin/browser/core/az;->a(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_5

    .line 727
    :cond_8
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 728
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/ITab;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Z)Z

    .line 730
    :cond_9
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 731
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 733
    :cond_a
    const-string v1, "TabManager"

    const-string v2, "restored %d tabs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 734
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-lez v1, :cond_b

    move v1, v3

    :goto_6
    move v4, v1

    goto/16 :goto_0

    :cond_b
    move v1, v4

    goto :goto_6
.end method

.method e(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Lcom/dolphin/browser/core/WebViewTab;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/WebViewTab;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    .line 901
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 902
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 903
    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 338
    const-string v0, "TabManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 341
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 342
    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 347
    const-string v1, "TabManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/core/TabManager;->s:Z

    .line 353
    return-void
.end method

.method public f()Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    goto :goto_0
.end method

.method f(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 964
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->g(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 572
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 573
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->j(Landroid/os/Bundle;)V

    .line 574
    return-object v0
.end method

.method g(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 1027
    new-instance v0, Lcom/dolphin/browser/core/n;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/n;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    .line 1028
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 1029
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 1030
    return-object v0
.end method

.method public getActivityTab(Landroid/app/Activity;)Lcom/dolphin/browser/core/ITab;
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1016
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1017
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1018
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/dolphin/browser/core/ActivityTab;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/core/ActivityTab;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/ActivityTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1023
    :goto_1
    return-object v1

    .line 1016
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1023
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getActivityTab(Ljava/lang/String;)Lcom/dolphin/browser/core/ITab;
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1003
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1004
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1005
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/dolphin/browser/core/ActivityTab;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/core/ActivityTab;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/ActivityTab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    :goto_1
    return-object v1

    .line 1003
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1009
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1486
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    return v0
.end method

.method public getCurrentTab()Lcom/dolphin/browser/core/ITab;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1460
    iget-boolean v0, p0, Lcom/dolphin/browser/core/TabManager;->s:Z

    if-eqz v0, :cond_0

    .line 1461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/TabManager;->s:Z

    .line 1462
    const-string v0, "tab manager was used after destroyed, create a default tab"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v0, Lcom/dolphin/browser/core/at;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/at;-><init>(Lcom/dolphin/browser/core/TabManager;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1472
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 1473
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1475
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1476
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->h()V

    .line 1478
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method public getTab(I)Lcom/dolphin/browser/core/ITab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1415
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabFromView(Landroid/view/View;)Lcom/dolphin/browser/core/ITab;
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1438
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1439
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1440
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->containsView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1444
    :goto_1
    return-object v0

    .line 1438
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1444
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1425
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1426
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1427
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->containsWebView(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1431
    :goto_1
    return-object v0

    .line 1425
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1431
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTabIndex(Lcom/dolphin/browser/core/ITab;)I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1492
    if-nez p1, :cond_0

    .line 1493
    const/4 v0, -0x1

    .line 1495
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public h()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 579
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getStateFile()Ljava/io/File;

    move-result-object v0

    .line 580
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->a(Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method h(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 1034
    new-instance v0, Lcom/dolphin/browser/core/i;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/i;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    .line 1035
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 1036
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 1037
    return-object v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 605
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getTabStateFile()Ljava/io/File;

    move-result-object v0

    .line 606
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->a(Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method i(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1077
    packed-switch v1, :pswitch_data_0

    .line 1101
    :pswitch_0
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->r:Lcom/dolphin/browser/core/m;

    if-eqz v2, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->r:Lcom/dolphin/browser/core/m;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/core/m;->a(ILandroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1107
    :cond_0
    :goto_0
    return-object v0

    .line 1079
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->e(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1082
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->f(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1085
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->g(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1088
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->h(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1091
    :pswitch_5
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->r:Lcom/dolphin/browser/core/m;

    if-eqz v1, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->r:Lcom/dolphin/browser/core/m;

    invoke-interface {v0}, Lcom/dolphin/browser/core/m;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->c:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1098
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->createGameWebViewTab(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public j()V
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getStateFile()Ljava/io/File;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 621
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 793
    const/16 v0, -0x11

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->b(I)V

    .line 794
    return-void
.end method

.method public l()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->o()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 876
    new-instance v0, Lcom/dolphin/browser/core/WebViewTab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/WebViewTab;-><init>(Lcom/dolphin/browser/core/TabManager;)V

    .line 877
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 878
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 879
    return-object v0
.end method

.method public n()Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/dolphin/browser/core/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/h;-><init>(Lcom/dolphin/browser/core/TabManager;)V

    .line 914
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->w:Lcom/dolphin/browser/core/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/k;)V

    .line 915
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->x:Lcom/dolphin/browser/core/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/j;)V

    .line 916
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->setGameMode(Z)V

    .line 917
    return-object v0
.end method

.method public o()Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->m()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 955
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolphin/browser/core/ITab;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/TabManager;->a([Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method p()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->h:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method

.method q()Lcom/dolphin/browser/core/IWebView$SelectTextListener;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->k:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    return-object v0
.end method

.method r()Lcom/dolphin/browser/core/IWebView$OnScrollListener;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->l:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    return-object v0
.end method

.method public removeAllTab()V
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1735
    const-string v0, "TabManager"

    const-string v1, "removeAllTab"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 1737
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1738
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1739
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1740
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1741
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1742
    iget-object v3, p0, Lcom/dolphin/browser/core/TabManager;->q:Lcom/dolphin/browser/core/l;

    if-eqz v3, :cond_0

    .line 1743
    iget-object v3, p0, Lcom/dolphin/browser/core/TabManager;->q:Lcom/dolphin/browser/core/l;

    invoke-interface {v3, p0, v2, v0}, Lcom/dolphin/browser/core/l;->a(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;I)V

    .line 1751
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    move-object v1, v0

    .line 1752
    check-cast v1, Lcom/dolphin/browser/core/an;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/core/an;->d(Z)V

    .line 1753
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 1754
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/TabManager;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 1755
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 1756
    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->f()V

    goto :goto_1

    .line 1745
    :cond_0
    const-string v0, "removeAllTab but mTabController not set, create a tab to load home page"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 1746
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->o()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1747
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 1748
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    .line 1758
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1759
    return-void
.end method

.method public removeOtherTab(I)V
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1697
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 1698
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1699
    if-nez p1, :cond_2

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/dolphin/browser/core/TabManager;->v:I

    .line 1701
    :cond_0
    const-string v0, "TabManager"

    const-string v2, "removeOtherTab %d"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1702
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1703
    iget-object v2, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1704
    iput-object v0, p0, Lcom/dolphin/browser/core/TabManager;->i:Lcom/dolphin/browser/core/ITab;

    .line 1705
    if-eq v0, v2, :cond_1

    move-object v1, v0

    .line 1706
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->h()V

    .line 1707
    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    .line 1709
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1710
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/core/ITab;

    move-object v2, v1

    .line 1711
    check-cast v2, Lcom/dolphin/browser/core/an;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/an;->d(Z)V

    .line 1712
    invoke-direct {p0, v1}, Lcom/dolphin/browser/core/TabManager;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 1713
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 1714
    check-cast v1, Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->f()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1699
    goto :goto_0

    .line 1716
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1717
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1718
    iget-object v1, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->A()V

    .line 1721
    :cond_4
    return-void
.end method

.method public removeOtherTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1726
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->removeOtherTab(I)V

    .line 1727
    return-void
.end method

.method public removeTab(I)Lcom/dolphin/browser/core/ITab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1231
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->b(IZ)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1347
    if-eqz p1, :cond_0

    .line 1349
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/at;->c(Z)V

    .line 1350
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/TabManager;->removeTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTabListener(Lcom/dolphin/browser/core/ITabListener;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1513
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/TabManager;->removeListener(Ljava/lang/Object;)V

    .line 1514
    return-void
.end method

.method s()Lcom/dolphin/browser/core/IWebView$ContextPanelListener;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->j:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    return-object v0
.end method

.method public setCurrentTab(I)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Z)Z

    move-result v0

    return v0
.end method

.method public setWebViewCallbackHandler(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/dolphin/browser/core/TabManager;->h:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 1520
    return-void
.end method

.method public stopAllLoading()V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1768
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->stopLoading()V

    goto :goto_0

    .line 1770
    :cond_0
    return-void
.end method

.method t()Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->m:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1675
    if-eqz v0, :cond_0

    .line 1676
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->performResume()V

    .line 1678
    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1686
    if-eqz v0, :cond_0

    .line 1687
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->pause()V

    .line 1689
    :cond_0
    return-void
.end method

.method public x()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1898
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/dolphin/browser/core/TabManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 1900
    instance-of v1, v0, Lcom/dolphin/browser/core/i;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1901
    check-cast v1, Lcom/dolphin/browser/core/i;

    check-cast v0, Lcom/dolphin/browser/core/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/i;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/i;->a(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1902
    instance-of v0, v0, Lcom/dolphin/browser/core/bg;

    if-eqz v0, :cond_0

    move v0, v2

    .line 1907
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 2118
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->C()Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 2119
    if-eqz v0, :cond_0

    .line 2120
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->pauseTimers()V

    .line 2122
    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/dolphin/browser/core/TabManager;->C()Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 2128
    if-eqz v0, :cond_0

    .line 2129
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->resumeTimers()V

    .line 2131
    :cond_0
    return-void
.end method

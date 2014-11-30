.class public Lcom/dolphin/browser/extensions/al;
.super Lcom/dolphin/browser/util/BaseObservable;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/BaseObservable",
        "<",
        "Lcom/dolphin/browser/extensions/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/extensions/al;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/extensions/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ClassLoader;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/dolphin/browser/extensions/bb;

.field private n:Lcom/dolphin/browser/extensions/av;

.field private o:Z

.field private p:Ljava/util/Observer;

.field private q:Ljava/util/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IAddonBarExtention"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/extensions/x;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/extensions/IBookmarkExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/extensions/IBrowserExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/extensions/IHistoryExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/extensions/IHomeScreenExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dolphin/browser/extensions/ISelectionExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dolphin/browser/extensions/IShareExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dolphin/browser/extensions/ITitleBarExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dolphin/browser/extensions/IWebViewExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->TYPE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/extensions/al;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    .line 182
    new-instance v0, Lcom/dolphin/browser/extensions/am;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/am;-><init>(Lcom/dolphin/browser/extensions/al;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->p:Ljava/util/Observer;

    .line 262
    new-instance v0, Lcom/dolphin/browser/extensions/an;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/an;-><init>(Lcom/dolphin/browser/extensions/al;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->q:Ljava/util/Observer;

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->e:Ljava/lang/ClassLoader;

    .line 171
    iput-object p1, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    .line 172
    invoke-static {}, Lcom/dolphin/browser/extensions/a/c;->a()Lcom/dolphin/browser/extensions/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->p:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/a/c;->addObserver(Ljava/util/Observer;)V

    .line 173
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getBrowserSettings()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/extensions/al;->k:Z

    .line 175
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->shouldUpdateAddonBlackList()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/extensions/al;->o:Z

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->q:Ljava/util/Observer;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IBrowserSettings;->addObserver(Ljava/util/Observer;)V

    .line 177
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->w()V

    .line 178
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->x()V

    .line 179
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->s()V

    .line 180
    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/extensions/al;
    .locals 3

    .prologue
    .line 256
    const-class v1, Lcom/dolphin/browser/extensions/al;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/extensions/al;->b:Lcom/dolphin/browser/extensions/al;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/dolphin/browser/extensions/al;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/extensions/al;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/extensions/al;->b:Lcom/dolphin/browser/extensions/al;

    .line 259
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/al;->b:Lcom/dolphin/browser/extensions/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1651
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1652
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1654
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1655
    const-string v2, "mgeek.dolphin.browser"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1656
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->r()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/al;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->n(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/al;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/al;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->a(Z)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/extensions/bd;)V
    .locals 3

    .prologue
    .line 2109
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/bd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/bd;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2112
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2008
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2010
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->l(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/al;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2013
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 2014
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 2065
    iput-boolean p1, p0, Lcom/dolphin/browser/extensions/al;->k:Z

    .line 2066
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 2067
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 2068
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 2069
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/extensions/al;->c(Lcom/dolphin/browser/extensions/n;Z)V

    goto :goto_0

    .line 2072
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 2073
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 1866
    const/4 v0, 0x0

    .line 1868
    :try_start_0
    invoke-static {p0}, Lcom/dolphin/browser/extensions/al;->d(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    .line 1869
    if-eqz v1, :cond_0

    .line 1870
    const-string v2, "com.dolphin.browser.SHOW_TITLE_BAR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1876
    :cond_0
    :goto_0
    return v0

    .line 1873
    :catch_0
    move-exception v1

    .line 1874
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/dolphin/browser/extensions/a/a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1677
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/a/a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return v0

    .line 1681
    :cond_1
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 1682
    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1683
    invoke-direct {p0, v1}, Lcom/dolphin/browser/extensions/al;->m(Ljava/lang/String;)Z

    move-result v3

    .line 1685
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 1686
    const/4 v0, 0x1

    goto :goto_0

    .line 1689
    :cond_2
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 1690
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/extensions/al;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1705
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    :goto_0
    return v0

    .line 1710
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    const/4 v0, 0x1

    goto :goto_0

    .line 1713
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/extensions/a/a;)Z
    .locals 2

    .prologue
    .line 1697
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 1698
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    const/4 v0, 0x1

    .line 1701
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/extensions/a;)Z
    .locals 1

    .prologue
    .line 227
    instance-of v0, p1, Lcom/dolphin/browser/extensions/s;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Lcom/dolphin/browser/extensions/s;

    .line 229
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/extensions/a;)I
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 359
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->e()I

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/extensions/n;)V
    .locals 4

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->d(Lcom/dolphin/browser/extensions/n;)V

    .line 423
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->c()Ljava/util/Set;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 426
    if-nez v1, :cond_0

    .line 427
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 428
    iget-object v3, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 434
    return-void
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 1880
    const/4 v0, 0x0

    .line 1882
    :try_start_0
    invoke-static {p0}, Lcom/dolphin/browser/extensions/al;->d(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    .line 1883
    if-eqz v1, :cond_0

    .line 1884
    const-string v2, "com.dolphin.browser.SIDESLIP"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1890
    :cond_0
    :goto_0
    return v0

    .line 1887
    :catch_0
    move-exception v1

    .line 1888
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/extensions/al;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/al;->k:Z

    return v0
.end method

.method private b(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1894
    const/4 v0, 0x0

    .line 1896
    :try_start_0
    invoke-static {p0}, Lcom/dolphin/browser/extensions/al;->d(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    .line 1897
    if-eqz v1, :cond_0

    .line 1898
    const-string v2, "com.dolphin.browser.URL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1904
    :cond_0
    :goto_0
    return-object v0

    .line 1901
    :catch_0
    move-exception v1

    .line 1902
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->y()V

    return-void
.end method

.method private c(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2116
    if-nez v0, :cond_0

    .line 2117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2119
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/bd;->v()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2120
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/bd;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to use permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please upgrade API Key to a high level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2123
    :cond_1
    return-void
.end method

.method private c(Lcom/dolphin/browser/extensions/n;)V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->c()Ljava/util/Set;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    iget-object v2, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 440
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 445
    return-void
.end method

.method private c(Lcom/dolphin/browser/extensions/n;Z)V
    .locals 2

    .prologue
    .line 2080
    invoke-virtual {p1, p2}, Lcom/dolphin/browser/extensions/n;->b(Z)V

    .line 2082
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/al;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->d(Z)V

    .line 2083
    return-void
.end method

.method private c(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1858
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1862
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->v()V

    return-void
.end method

.method private d(Lcom/dolphin/browser/extensions/n;)V
    .locals 3

    .prologue
    .line 727
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->e(Lcom/dolphin/browser/extensions/n;)I

    move-result v1

    .line 729
    invoke-virtual {p1, v1}, Lcom/dolphin/browser/extensions/n;->a(I)V

    .line 732
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/al;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 733
    invoke-virtual {p1, v1}, Lcom/dolphin/browser/extensions/n;->a(Z)V

    .line 734
    iget-boolean v1, p0, Lcom/dolphin/browser/extensions/al;->k:Z

    invoke-virtual {p1, v1}, Lcom/dolphin/browser/extensions/n;->b(Z)V

    .line 736
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/al;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 738
    iget-object v1, p1, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    const-string v2, "com.sbrtech.plugin.extension.videocache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/BrowserSettings;->setEnableVideoCache(Z)V

    .line 742
    :cond_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->d(Z)V

    .line 743
    return-void
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 805
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 806
    return-void
.end method

.method private e(Lcom/dolphin/browser/extensions/n;)I
    .locals 2

    .prologue
    .line 746
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 748
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget v0, p1, Lcom/dolphin/browser/extensions/n;->e:I

    .line 752
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/dolphin/browser/extensions/n;->e:I

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->x()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/extensions/al;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 799
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/al;->d(Ljava/lang/String;Z)V

    .line 800
    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/extensions/al;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->g:Ljava/util/Set;

    return-object v0
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->b()V

    .line 459
    new-instance v1, Lcom/dolphin/browser/extensions/ap;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/extensions/ap;-><init>(Lcom/dolphin/browser/extensions/al;Lcom/dolphin/browser/extensions/a;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    return-void
.end method

.method private m(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 711
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->h:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    const-string v1, "installed_plugin_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->h:Landroid/content/SharedPreferences;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private n(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1988
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1989
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1991
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1992
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1993
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1996
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/extensions/al;->g:Ljava/util/Set;

    .line 1997
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->g:Ljava/util/Set;

    const-string v1, "mobi.megeek.DesktopToggles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1998
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->i()Ljava/util/Collection;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 202
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v4

    .line 203
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 205
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 209
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 214
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 215
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 218
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 219
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(I)V

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 222
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/al;->a([Lcom/dolphin/browser/extensions/n;)V

    .line 223
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 224
    return-void
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 236
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 238
    const-string v1, "com.dolphin.browser.permission.ACCESS_WEB_PAGES"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "com.dolphin.browser.permission.MANAGE_DOWNLOADS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "com.dolphin.browser.permission.MANAGE_TABS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "com.dolphin.browser.permission.READ_BOOKMARKS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "com.dolphin.browser.permission.READ_HISTORY"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "com.dolphin.browser.permission.WRITE_BOOKMARKS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "com.dolphin.browser.permission.WRITE_HISTORY"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "com.dolphin.browser.permission.HANDLE_HTTP_AUTH_REQUEST"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "com.dolphin.browser.permission.MODIFY_WEB_SETTINGS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "com.dolphin.browser.permission.RUN_JAVASCRIPT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "com.dolphin.browser.permission.JAVASCRIPT_CROSS_ORIGIN_ACCESS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "com.dolphin.browser.permission.TITLE_BAR_ACTION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "com.dolphin.browser.permission.ADDON_BAR_BADGE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->l:Ljava/util/Map;

    .line 253
    return-void
.end method

.method private t()Landroid/content/SharedPreferences;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 774
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->f:Landroid/content/SharedPreferences;

    .line 775
    if-nez v0, :cond_3

    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    const-string v1, "extension_pref"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 777
    iput-object v2, p0, Lcom/dolphin/browser/extensions/al;->f:Landroid/content/SharedPreferences;

    .line 778
    const-string v0, "osi"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 781
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    const-string v1, "plugin_order_pref"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 782
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 783
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_o"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    const-string v1, "plugin_enable_pref"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 788
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 789
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_e"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 791
    :cond_1
    const-string v0, "osi"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 792
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_2
    move-object v0, v2

    .line 795
    :cond_3
    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 1666
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/al;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1668
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1963
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/al;->o:Z

    if-eqz v0, :cond_0

    .line 1964
    new-instance v0, Lcom/dolphin/browser/extensions/bc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/extensions/bc;-><init>(Lcom/dolphin/browser/extensions/al;Lcom/dolphin/browser/extensions/am;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 1966
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1969
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/extensions/at;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/extensions/at;-><init>(Lcom/dolphin/browser/extensions/al;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1975
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 1978
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/extensions/au;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/extensions/au;-><init>(Lcom/dolphin/browser/extensions/al;)V

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1985
    return-void
.end method

.method private y()V
    .locals 6

    .prologue
    .line 2161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2162
    iget-object v2, p0, Lcom/dolphin/browser/extensions/al;->f:Landroid/content/SharedPreferences;

    const-string v3, "ltit"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2163
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/extensions/al;->f:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ltit"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2165
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 2166
    const-string v2, "addon bar"

    const-string v3, "install"

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2170
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/extensions/n;
    .locals 4

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 571
    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 574
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 549
    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 565
    :goto_0
    return-object v0

    .line 552
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 553
    monitor-enter v0

    .line 554
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 555
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->l()Z

    move-result v4

    if-nez v4, :cond_1

    .line 561
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    .line 295
    return-void
.end method

.method a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/ServiceInfo;I)V
    .locals 3

    .prologue
    .line 1918
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/extensions/bd;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/bd;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/ServiceInfo;I)V

    .line 1920
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->o()Ljava/lang/String;

    move-result-object v1

    .line 1921
    iget-object v2, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/n;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    :goto_0
    return-void

    .line 1924
    :catch_0
    move-exception v0

    .line 1925
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 302
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->isLoadOldAddon()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 308
    :cond_0
    :try_start_0
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 310
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/a;

    .line 311
    instance-of v2, v1, Lcom/dolphin/browser/extensions/s;

    if-eqz v2, :cond_4

    .line 312
    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/extensions/s;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v2

    .line 313
    if-eqz v2, :cond_1

    .line 314
    invoke-direct {p0, v1}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/a;)I

    move-result v3

    .line 317
    :cond_1
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/extensions/al;->d(Ljava/lang/String;)V

    .line 325
    :goto_1
    if-eqz p3, :cond_5

    .line 326
    new-instance v1, Lcom/dolphin/browser/extensions/ak;

    invoke-direct {v1, p1, p2}, Lcom/dolphin/browser/extensions/ak;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 330
    :goto_2
    iget-object v5, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/extensions/al;->g(Ljava/lang/String;)V

    .line 332
    new-instance v4, Lcom/dolphin/browser/extensions/ao;

    invoke-direct {v4, p0, v1}, Lcom/dolphin/browser/extensions/ao;-><init>(Lcom/dolphin/browser/extensions/al;Lcom/dolphin/browser/extensions/a;)V

    invoke-static {v4}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 340
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_3

    .line 342
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 343
    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/n;->a(I)V

    .line 346
    :cond_2
    invoke-direct {p0, v1}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/n;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 349
    :catch_0
    move-exception v1

    .line 350
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    goto :goto_0

    .line 320
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a;->b()V

    goto :goto_0

    .line 328
    :cond_5
    new-instance v1, Lcom/dolphin/browser/extensions/a;

    invoke-direct {v1, p1, p2}, Lcom/dolphin/browser/extensions/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)V
    .locals 6

    .prologue
    .line 397
    if-nez p3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 402
    new-instance v0, Lcom/dolphin/browser/extensions/s;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/extensions/s;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)V

    .line 404
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->e()Ljava/util/Collection;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_2

    .line 411
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 412
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/n;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/extensions/av;)V
    .locals 0

    .prologue
    .line 2194
    iput-object p1, p0, Lcom/dolphin/browser/extensions/al;->n:Lcom/dolphin/browser/extensions/av;

    .line 2195
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2140
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/bd;)V

    .line 2141
    invoke-virtual {p1, p2}, Lcom/dolphin/browser/extensions/bd;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2142
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/bd;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2144
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/al;->c(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)V

    .line 2145
    return-void
.end method

.method a(Lcom/dolphin/browser/extensions/n;)V
    .locals 8

    .prologue
    .line 1930
    iget-object v2, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    .line 1931
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->c()Ljava/util/Set;

    move-result-object v3

    .line 1933
    sget-object v4, Lcom/dolphin/browser/extensions/al;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 1934
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1935
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1936
    if-nez v0, :cond_0

    .line 1937
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1938
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1942
    :cond_2
    if-eqz v0, :cond_1

    .line 1943
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1947
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1948
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->l()V

    .line 1950
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 1951
    return-void
.end method

.method a(Lcom/dolphin/browser/extensions/n;Z)V
    .locals 2

    .prologue
    .line 1792
    iget-object v0, p1, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    const-string v1, "com.sbrtech.plugin.extension.videocache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/core/BrowserSettings;->setEnableVideoCache(Z)V

    .line 1797
    :cond_0
    instance-of v0, p1, Lcom/dolphin/browser/extensions/q;

    if-eqz v0, :cond_1

    .line 1799
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/extensions/a;->a(Z)V

    .line 1808
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 1809
    return-void

    .line 1801
    :cond_1
    invoke-virtual {p1, p2}, Lcom/dolphin/browser/extensions/n;->d(Z)V

    .line 1802
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    .line 1803
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1804
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/a;->a(Z)V

    .line 1806
    :cond_2
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->f(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/extensions/p;)V
    .locals 1

    .prologue
    .line 1955
    invoke-super {p0, p1}, Lcom/dolphin/browser/util/BaseObservable;->addListener(Ljava/lang/Object;)V

    .line 1956
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1957
    invoke-interface {p1}, Lcom/dolphin/browser/extensions/p;->b()V

    .line 1959
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/al;->l(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 450
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 770
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 771
    return-void
.end method

.method a([Lcom/dolphin/browser/extensions/n;)V
    .locals 5

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 932
    :goto_0
    return-void

    .line 923
    :cond_0
    array-length v1, p1

    .line 924
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 925
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 926
    aget-object v3, p1, v0

    .line 928
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/extensions/n;->a(I)V

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_o"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 931
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/dolphin/browser/extensions/p;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    .line 299
    return-void
.end method

.method public b(Lcom/dolphin/browser/extensions/n;Z)V
    .locals 1

    .prologue
    .line 1812
    invoke-virtual {p1, p2}, Lcom/dolphin/browser/extensions/n;->a(Z)V

    .line 1813
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/String;Z)V

    .line 1814
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/al;->k:Z

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/extensions/al;->c(Lcom/dolphin/browser/extensions/n;Z)V

    .line 1815
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 1816
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 471
    instance-of v1, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v1, :cond_0

    .line 472
    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 473
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/al;->d(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 479
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2149
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    const/4 v0, 0x1

    .line 2153
    :goto_0
    return v0

    .line 2151
    :catch_0
    move-exception v0

    .line 2153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 382
    instance-of v3, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 386
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 392
    return-object v1
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/al;->d(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 484
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/dolphin/browser/extensions/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/aq;-><init>(Lcom/dolphin/browser/extensions/al;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 488
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 492
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->c(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/extensions/a;->a(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 501
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->g()V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 505
    return-void
.end method

.method public e()[Lcom/dolphin/browser/extensions/n;
    .locals 6

    .prologue
    .line 651
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 652
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    const-string v1, "IAddonBarExtention"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 653
    if-eqz v0, :cond_4

    .line 654
    monitor-enter v0

    .line 655
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 656
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/Configuration;->isNoneBuildInAddonEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->l()Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v2

    instance-of v2, v2, Lcom/dolphin/browser/extensions/s;

    if-eqz v2, :cond_2

    .line 669
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/extensions/s;

    .line 670
    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/s;->t()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/s;->s()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    .line 677
    invoke-interface {v2}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->wantToShowInAddonBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    .line 681
    :try_start_2
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 686
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    const-string v1, "old_addons"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 687
    if-eqz v0, :cond_7

    .line 688
    monitor-enter v0

    .line 689
    :try_start_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 690
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 693
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->l()Z

    move-result v4

    if-nez v4, :cond_5

    .line 696
    invoke-static {v1}, Lcom/dolphin/browser/extensions/ak;->b(Lcom/dolphin/browser/extensions/n;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 697
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 700
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_6
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 702
    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 703
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method

.method public f()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->e:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 522
    if-nez v0, :cond_0

    .line 523
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 541
    :goto_0
    return-object v0

    .line 525
    :cond_0
    sget-object v1, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 526
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 527
    monitor-enter v0

    .line 528
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 529
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 533
    if-nez v3, :cond_2

    .line 534
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->l()Z

    move-result v5

    if-nez v5, :cond_1

    .line 538
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 541
    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->h:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    const-string v1, "installed_plugin_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/al;->h:Landroid/content/SharedPreferences;

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 722
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 723
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 724
    return-void
.end method

.method public g()[Lcom/dolphin/browser/extensions/ba;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 809
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 811
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 812
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->i()Ljava/util/Collection;

    move-result-object v0

    .line 813
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 814
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->isNoneBuildInAddonEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 815
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 820
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 821
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 824
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v1

    if-nez v1, :cond_3

    .line 825
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    .line 829
    invoke-interface {v1}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->wantToShowInAddonBar()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 830
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 842
    :catch_0
    move-exception v1

    .line 843
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 845
    invoke-static {v0}, Lcom/dolphin/browser/extensions/ak;->b(Lcom/dolphin/browser/extensions/n;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 846
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 832
    :cond_4
    :try_start_1
    instance-of v1, v1, Lcom/dolphin/browser/extensions/x;

    if-eqz v1, :cond_5

    .line 833
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/x;

    .line 834
    invoke-interface {v1}, Lcom/dolphin/browser/extensions/x;->getState()I

    move-result v1

    if-eq v1, v8, :cond_2

    .line 835
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 838
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 849
    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 853
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 854
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 855
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 856
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/n;

    .line 857
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/dolphin/browser/extensions/n;

    .line 858
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/dolphin/browser/extensions/n;

    .line 859
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/dolphin/browser/extensions/ba;

    .line 860
    iget-object v4, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 861
    const/4 v5, 0x0

    new-instance v6, Lcom/dolphin/browser/extensions/ba;

    sget v7, Lcom/dolphin/browser/core/R$string;->plugin_group_addon_bar:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/dolphin/browser/extensions/ba;-><init>(Ljava/lang/String;[Lcom/dolphin/browser/extensions/n;)V

    aput-object v6, v3, v5

    .line 862
    new-instance v0, Lcom/dolphin/browser/extensions/ba;

    sget v5, Lcom/dolphin/browser/core/R$string;->plugin_group_other:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/dolphin/browser/extensions/ba;-><init>(Ljava/lang/String;[Lcom/dolphin/browser/extensions/n;)V

    aput-object v0, v3, v8

    .line 863
    const/4 v0, 0x2

    new-instance v1, Lcom/dolphin/browser/extensions/ba;

    sget v5, Lcom/dolphin/browser/core/R$string;->plugin_group_disabled:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcom/dolphin/browser/extensions/ba;-><init>(Ljava/lang/String;[Lcom/dolphin/browser/extensions/n;)V

    aput-object v1, v3, v0

    .line 864
    return-object v3
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1912
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/al;->c(Ljava/lang/String;)V

    .line 1913
    return-void
.end method

.method public h()[Lcom/dolphin/browser/extensions/n;
    .locals 5

    .prologue
    .line 890
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 891
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->i()Ljava/util/Collection;

    move-result-object v0

    .line 892
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 893
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->isNoneBuildInAddonEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 894
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->e()Ljava/util/Collection;

    move-result-object v0

    .line 899
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 901
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->n()Z

    move-result v4

    if-nez v4, :cond_2

    .line 905
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 908
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 911
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 912
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/dolphin/browser/extensions/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2002
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->n(Ljava/lang/String;)V

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1719
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/al;->j:Z

    if-eqz v0, :cond_0

    .line 1756
    :goto_0
    return-void

    .line 1723
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/al;->j:Z

    .line 1726
    invoke-static {}, Lcom/dolphin/browser/extensions/a/c;->a()Lcom/dolphin/browser/extensions/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/c;->e()Ljava/util/List;

    move-result-object v0

    .line 1728
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/al;->u()V

    .line 1730
    if-nez v0, :cond_1

    .line 1731
    iput-boolean v2, p0, Lcom/dolphin/browser/extensions/al;->j:Z

    goto :goto_0

    .line 1736
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a/a;

    .line 1739
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 1741
    iget-object v5, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/a/a;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    invoke-direct {p0, v4, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Lcom/dolphin/browser/extensions/a/a;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1744
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1748
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v2

    .line 1751
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1752
    iget-object v4, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/a;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1751
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1755
    :cond_4
    iput-boolean v2, p0, Lcom/dolphin/browser/extensions/al;->j:Z

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2126
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->m()Lcom/dolphin/browser/extensions/bd;

    move-result-object v0

    .line 2127
    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)V

    .line 2128
    return-void
.end method

.method k()V
    .locals 3

    .prologue
    .line 1820
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1821
    iget-object v1, p0, Lcom/dolphin/browser/extensions/al;->i:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/extensions/al;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    :goto_0
    return-void

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2132
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    const/4 v0, 0x1

    .line 2136
    :goto_0
    return v0

    .line 2134
    :catch_0
    move-exception v0

    .line 2136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 1

    .prologue
    .line 1828
    new-instance v0, Lcom/dolphin/browser/extensions/ar;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/ar;-><init>(Lcom/dolphin/browser/extensions/al;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 1845
    return-void
.end method

.method public m()Lcom/dolphin/browser/extensions/bd;
    .locals 5

    .prologue
    .line 2086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2087
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2088
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a;

    .line 2089
    instance-of v4, v0, Lcom/dolphin/browser/extensions/bd;

    if-eqz v4, :cond_0

    .line 2090
    check-cast v0, Lcom/dolphin/browser/extensions/bd;

    .line 2091
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->s()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->t()I

    move-result v4

    if-eq v4, v2, :cond_1

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->t()I

    move-result v4

    if-nez v4, :cond_0

    .line 2097
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/al;->m()Lcom/dolphin/browser/extensions/bd;

    move-result-object v0

    .line 2102
    if-nez v0, :cond_0

    .line 2103
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown addon for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2105
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/bd;)V

    .line 2106
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->m:Lcom/dolphin/browser/extensions/bb;

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/dolphin/browser/extensions/al;->m:Lcom/dolphin/browser/extensions/bb;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/bb;->a()V

    .line 2186
    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2189
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2210
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

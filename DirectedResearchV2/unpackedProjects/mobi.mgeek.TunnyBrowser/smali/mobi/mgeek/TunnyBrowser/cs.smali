.class public Lmobi/mgeek/TunnyBrowser/cs;
.super Lmobi/mgeek/util/CrashReporter/d;
.source "CrashReportController.java"


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/cs;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lmobi/mgeek/util/CrashReporter/c;

.field private d:Lmobi/mgeek/util/CrashReporter/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mgeek."

    aput-object v1, v0, v2

    const-string v1, "com.dolphin."

    aput-object v1, v0, v3

    const-string v1, "facebook.dolphin."

    aput-object v1, v0, v4

    const-string v1, "dolphin.preference."

    aput-object v1, v0, v5

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cs;->e:[Ljava/lang/String;

    .line 349
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dolphin.graphics."

    aput-object v1, v0, v2

    const-string v1, "dolphin.net."

    aput-object v1, v0, v3

    const-string v1, "dolphin.webkit."

    aput-object v1, v0, v4

    const-string v1, "dolphin.util."

    aput-object v1, v0, v5

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cs;->f:[Ljava/lang/String;

    .line 351
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "at android.webkit"

    aput-object v1, v0, v2

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cs;->g:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/util/CrashReporter/d;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->b:Z

    .line 74
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ct;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ct;-><init>(Lmobi/mgeek/TunnyBrowser/cs;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->c:Lmobi/mgeek/util/CrashReporter/c;

    .line 283
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cu;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/cu;-><init>(Lmobi/mgeek/TunnyBrowser/cs;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->d:Lmobi/mgeek/util/CrashReporter/k;

    .line 56
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/cs;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/cs;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/cs;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/cs;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 354
    array-length v2, p2

    move v1, v0

    .line 355
    :goto_0
    if-ge v1, v2, :cond_0

    .line 356
    aget-object v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    const/4 v0, 0x1

    .line 360
    :cond_0
    return v0

    .line 355
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/cs;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/cs;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lmobi/mgeek/TunnyBrowser/cs;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 60
    const-class v1, Lmobi/mgeek/TunnyBrowser/cs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/cs;->a:Lmobi/mgeek/TunnyBrowser/cs;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cs;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/cs;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cs;->a:Lmobi/mgeek/TunnyBrowser/cs;

    .line 63
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/cs;->a:Lmobi/mgeek/TunnyBrowser/cs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lmobi/mgeek/TunnyBrowser/cs;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lmobi/mgeek/TunnyBrowser/cs;->f:[Ljava/lang/String;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string v0, ""

    .line 374
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.dolphin.browser.engine"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bw;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 370
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.dolphin.browser.engine"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/bw;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "no engine"

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmobi/mgeek/util/CrashReporter/c;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->c:Lmobi/mgeek/util/CrashReporter/c;

    return-object v0
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    const-string v1, "pref_last_crash_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 262
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->b:Z

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 266
    :cond_0
    instance-of v0, p1, Lcom/dolphin/browser/core/IWebSettings;

    if-eqz v0, :cond_1

    .line 267
    check-cast p1, Lcom/dolphin/browser/core/IWebSettings;

    .line 268
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v1

    const-string v2, "minidump.dmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setNativeCrashDumpFile(Ljava/lang/String;)V

    .line 276
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->b:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/af;->a()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/INetworkPredictor;->stop()V

    .line 120
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Ljava/lang/Boolean;)V

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    :goto_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;)V

    .line 142
    :cond_3
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/util/Properties;)V
    .locals 2

    .prologue
    .line 194
    const-string v0, "AndroidIdHash"

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "CID"

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/Properties;)V
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "libdolphinwebcore.so_symbol_name"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0346

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "libdolphinwebcore.libraryVersion"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v0, "JetpackVercode"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.dolphin.browser.engine"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/bw;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v0, "0"

    .line 206
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cs;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    const-string v3, "com.dolphin.browser.engine"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 212
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :cond_0
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-object v1

    .line 216
    :cond_1
    const-string v0, "X"

    goto :goto_0

    .line 213
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/dolphin/browser/util/ap;->a()Lcom/dolphin/browser/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ap;->d()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/dolphin/browser/util/az;->a()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-object v1
.end method

.method public f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v2

    const-string v3, "minidump.dmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method protected h()Lmobi/mgeek/util/CrashReporter/k;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cs;->d:Lmobi/mgeek/util/CrashReporter/k;

    return-object v0
.end method

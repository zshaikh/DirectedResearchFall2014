.class public Lcom/dolphin/browser/core/ah;
.super Ljava/lang/Object;
.source "PluginInstallMonitor.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/ah;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;

.field private e:Landroid/content/IntentFilter;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/ah;->h:Ljava/util/Set;

    .line 66
    sget-object v0, Lcom/dolphin/browser/core/ah;->h:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    iput-object v0, p0, Lcom/dolphin/browser/core/ah;->e:Landroid/content/IntentFilter;

    .line 126
    new-instance v0, Lcom/dolphin/browser/core/aj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/aj;-><init>(Lcom/dolphin/browser/core/ah;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ah;->f:Landroid/content/BroadcastReceiver;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ah;->g:Z

    .line 176
    return-void
.end method

.method public static a()Lcom/dolphin/browser/core/ah;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/dolphin/browser/core/ah;->a:Lcom/dolphin/browser/core/ah;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/dolphin/browser/core/ah;

    invoke-direct {v0}, Lcom/dolphin/browser/core/ah;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/ah;->a:Lcom/dolphin/browser/core/ah;

    .line 54
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/ah;->a:Lcom/dolphin/browser/core/ah;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/core/ah;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/core/ah;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/core/ah;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/ah;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/core/ah;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/ah;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    if-eqz p2, :cond_2

    .line 79
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->removePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Set;)V
    .locals 1
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
    .line 87
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->addPackageNames(Ljava/util/Set;)V

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/core/ah;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/dolphin/browser/core/ah;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/dolphin/browser/core/ai;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/ai;-><init>(Lcom/dolphin/browser/core/ah;Landroid/content/Context;)V

    .line 118
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 119
    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/core/ah;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/dolphin/browser/core/ah;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 210
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/ah;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ah;->b:Ljava/lang/Object;

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    .line 214
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :catch_2
    move-exception v0

    .line 216
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static e()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 226
    sget-object v0, Lcom/dolphin/browser/core/ah;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 229
    :try_start_0
    const-string v0, "android.webkit.PluginManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/ah;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/core/ah;->d:Ljava/lang/reflect/Method;

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static f()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 242
    sget-object v0, Lcom/dolphin/browser/core/ah;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 244
    :try_start_0
    const-string v0, "android.webkit.PluginManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 245
    const-string v1, "refreshPlugins"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/ah;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 255
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/core/ah;->c:Ljava/lang/reflect/Method;

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :catch_2
    move-exception v0

    .line 251
    const-string v1, "PluginInstallMonitor"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/dolphin/browser/core/ah;->g:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ah;->g:Z

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ah;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/dolphin/browser/core/ah;->e:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/ah;->c(Landroid/content/Context;)V

    .line 190
    :cond_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "PluginInstallMonitor"

    const-string v2, "can\'t register package installation receiver"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/dolphin/browser/core/ah;->g:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/ah;->g:Z

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ah;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "PluginInstallMonitor"

    const-string v2, "can\'t unregister package installation receiver"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

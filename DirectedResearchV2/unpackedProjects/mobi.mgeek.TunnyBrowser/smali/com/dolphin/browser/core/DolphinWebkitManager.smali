.class public final Lcom/dolphin/browser/core/DolphinWebkitManager;
.super Ljava/lang/Object;
.source "DolphinWebkitManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/DolphinWebkitManager;

.field private static b:Z

.field private static c:Z

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static p:Z

.field private static q:Z


# instance fields
.field private g:Ljava/lang/ClassLoader;

.field private h:Landroid/content/res/Resources;

.field private i:I

.field private j:Landroid/content/Context;

.field private k:Z

.field private l:Z

.field private m:Lcom/dolphin/browser/core/f;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput-boolean v1, Lcom/dolphin/browser/core/DolphinWebkitManager;->b:Z

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->c:Z

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->d:[Ljava/lang/String;

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->e:[Ljava/lang/String;

    .line 70
    const-class v0, Lcom/dolphin/browser/core/DolphinWebkitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->f:Ljava/lang/String;

    .line 541
    sput-boolean v1, Lcom/dolphin/browser/core/DolphinWebkitManager;->p:Z

    .line 542
    sput-boolean v1, Lcom/dolphin/browser/core/DolphinWebkitManager;->q:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 92
    :try_start_0
    const-string v1, "dolphin.webkit.WebView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->k:Z

    .line 94
    sget-object v1, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    iput-object v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->g:Ljava/lang/ClassLoader;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    const-string v2, "library_version"

    const-string v3, "integer"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-boolean v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->k:Z

    if-nez v1, :cond_0

    .line 104
    :try_start_1
    const-string v1, "com.dolphin.browser.engine"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/dolphin/browser/extensions/d;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/extensions/d;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->g:Ljava/lang/ClassLoader;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->h:Landroid/content/res/Resources;

    .line 108
    iput-object v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->j:Landroid/content/Context;

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->l:Z

    .line 110
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    const-string v2, "channel"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->n:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    sget v1, Lcom/dolphin/browser/core/R$integer;->browser_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 118
    sget v2, Lcom/dolphin/browser/core/R$integer;->min_library_version:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 119
    sget v3, Lcom/dolphin/browser/core/R$integer;->max_library_version:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 121
    iget-object v3, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->h:Landroid/content/res/Resources;

    .line 122
    const-string v4, "library_version"

    const-string v5, "integer"

    const-string v6, "com.dolphin.browser.engine"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 123
    const-string v5, "min_browser_version"

    const-string v6, "integer"

    const-string v7, "com.dolphin.browser.engine"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 124
    const-string v6, "max_browser_version"

    const-string v7, "integer"

    const-string v8, "com.dolphin.browser.engine"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 126
    if-gt v2, v4, :cond_1

    if-lt v0, v4, :cond_1

    .line 127
    sget-object v0, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    .line 137
    :goto_2
    iput v4, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :cond_0
    :goto_3
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 99
    iput-boolean v5, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->k:Z

    goto/16 :goto_0

    .line 112
    :catch_1
    move-exception v1

    .line 113
    iput-boolean v5, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->l:Z

    goto :goto_1

    .line 128
    :cond_1
    if-gt v5, v1, :cond_2

    if-lt v3, v1, :cond_2

    .line 129
    :try_start_3
    sget-object v0, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 138
    :catch_2
    move-exception v0

    .line 139
    sget-object v0, Lcom/dolphin/browser/core/f;->d:Lcom/dolphin/browser/core/f;

    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    goto :goto_3

    .line 130
    :cond_2
    if-ge v1, v5, :cond_3

    .line 131
    :try_start_4
    sget-object v0, Lcom/dolphin/browser/core/f;->c:Lcom/dolphin/browser/core/f;

    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    goto :goto_2

    .line 132
    :cond_3
    if-ge v4, v2, :cond_4

    .line 133
    sget-object v0, Lcom/dolphin/browser/core/f;->b:Lcom/dolphin/browser/core/f;

    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    goto :goto_2

    .line 135
    :cond_4
    sget-object v0, Lcom/dolphin/browser/core/f;->d:Lcom/dolphin/browser/core/f;

    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2
.end method

.method public static A()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 550
    sget-boolean v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->p:Z

    if-eqz v0, :cond_0

    .line 551
    sget-boolean v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->q:Z

    .line 562
    :goto_0
    return v0

    .line 554
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 556
    const-string v1, "com.dolphin.browser.engine"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 557
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_1
    sput-boolean v4, Lcom/dolphin/browser/core/DolphinWebkitManager;->p:Z

    .line 562
    sget-boolean v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->q:Z

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    sput-boolean v3, Lcom/dolphin/browser/core/DolphinWebkitManager;->q:Z

    goto :goto_1
.end method

.method private B()V
    .locals 7

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 178
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 179
    const-string v3, "dolphin.webkit.WebKitResources"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 180
    const-string v3, "setResources"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 181
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    const-string v2, "com.dolphin.browser.engine"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 172
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static C()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-static {}, Lcom/dolphin/browser/util/az;->a()Ljava/lang/String;

    move-result-object v2

    .line 315
    sget-object v3, Lcom/dolphin/browser/core/DolphinWebkitManager;->d:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 316
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    :goto_1
    return v0

    .line 315
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static D()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 324
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    const-string v2, "arch"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    const-string v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/ap;->a()Lcom/dolphin/browser/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/ap;->b()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/dolphin/browser/util/ap;->a()Lcom/dolphin/browser/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/ap;->c()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 330
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    :cond_1
    :goto_0
    return v0

    .line 336
    :cond_2
    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    invoke-static {}, Lcom/dolphin/browser/util/ap;->a()Lcom/dolphin/browser/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/ap;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 345
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static E()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 350
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 351
    sget-object v3, Lcom/dolphin/browser/core/DolphinWebkitManager;->e:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 352
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    :goto_1
    return v0

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a()Lcom/dolphin/browser/core/DolphinWebkitManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/dolphin/browser/core/DolphinWebkitManager;

    invoke-direct {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    .line 84
    sget-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    invoke-direct {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->B()V

    .line 86
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/core/DolphinWebkitManager;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->g:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 280
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 285
    :try_start_0
    const-string v3, "dolphin.webkit.WebView$GLViewImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 286
    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    .line 290
    :try_start_1
    const-string v3, "dolphin.webkit.WebView$WebViewImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 291
    goto :goto_0

    .line 292
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/core/DolphinWebkitManager;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->h:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 152
    const-string v2, "com.dolphin.browser.engine"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 298
    if-nez p0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    :try_start_0
    instance-of v1, p0, Lcom/dolphin/player/VideoPlayerView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 304
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/core/DolphinWebkitManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->D()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_0

    .line 232
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 264
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/AppContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v3, "libdolphinwebcore.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getResourceContext()Landroid/content/Context;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->m()Lcom/dolphin/browser/core/f;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    if-ne v1, v2, :cond_0

    .line 440
    iget-object v0, v0, Lcom/dolphin/browser/core/DolphinWebkitManager;->j:Landroid/content/Context;

    .line 442
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWorkingContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-object p1

    .line 455
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    sget-object v1, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    if-ne v0, v1, :cond_0

    .line 456
    new-instance v0, Lcom/dolphin/browser/core/e;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/e;-><init>(Lcom/dolphin/browser/core/DolphinWebkitManager;Landroid/content/Context;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/g;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    sget-object v1, Lcom/dolphin/browser/core/DolphinWebkitManager;->f:Ljava/lang/String;

    const-string v2, "libdolphinwebcore.so doesn\'t exists!"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->m()Lcom/dolphin/browser/core/f;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    if-ne v1, v2, :cond_0

    .line 258
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->k:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->l:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->m()Lcom/dolphin/browser/core/f;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/dolphin/browser/core/f;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->m:Lcom/dolphin/browser/core/f;

    return-object v0
.end method

.method public n()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->g:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->i:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->h:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dolphin engine package don\'t exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->n:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->j:Landroid/content/Context;

    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 469
    const-string v0, "channel"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    const-string v0, "channel"

    const-string v2, "ofw"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    const-string v0, "ofw"

    .line 480
    :cond_1
    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->n:Ljava/lang/String;

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->n:Ljava/lang/String;

    return-object v0

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->z()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 474
    const-string v2, "channel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 475
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public z()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->h:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dolphin engine package don\'t exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->o:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->h:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "channel.txt"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 494
    :try_start_1
    const-string v0, "utf-8"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 495
    if-eqz v0, :cond_1

    .line 496
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 501
    :cond_1
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 503
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_2
    iput-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->o:Ljava/lang/String;

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/core/DolphinWebkitManager;->o:Ljava/lang/String;

    return-object v0

    .line 498
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 499
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 501
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 498
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

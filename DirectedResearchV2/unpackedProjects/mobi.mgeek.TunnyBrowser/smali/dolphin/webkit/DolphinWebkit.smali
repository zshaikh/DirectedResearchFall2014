.class public Ldolphin/webkit/DolphinWebkit;
.super Ljava/lang/Object;
.source "DolphinWebkit.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static sBrowserVariationInfo:Ldolphin/webkit/BrowserVariationInfo;

.field static final sPackages:[Ldolphin/webkit/BrowserVariationInfo;

.field private static sWorkingContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Ldolphin/webkit/BrowserVariationInfo;

    new-instance v1, Ldolphin/webkit/BrowserVariationInfo;

    const-string v2, "mobi.mgeek.TunnyBrowser"

    invoke-direct {v1, v2, v5, v5}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Ldolphin/webkit/BrowserVariationInfo;

    const-string v2, "com.dolphin.browser.cn"

    invoke-direct {v1, v2, v5, v4}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Ldolphin/webkit/BrowserVariationInfo;

    const-string v2, "com.dolphin.browser.xf"

    invoke-direct {v1, v2, v5, v4}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Ldolphin/webkit/BrowserVariationInfo;

    const-string v3, "com.dolphin.browser.lab.en"

    invoke-direct {v2, v3, v4, v5}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ldolphin/webkit/BrowserVariationInfo;

    const-string v3, "com.dolphin.browser.lab.cn"

    invoke-direct {v2, v3, v4, v4}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ldolphin/webkit/BrowserVariationInfo;

    const-string v3, "com.dolphin.browser.android.jp"

    invoke-direct {v2, v3, v4, v7}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ldolphin/webkit/BrowserVariationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v6, v6}, Ldolphin/webkit/BrowserVariationInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPkgIndex(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 43
    sget-object v1, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Ldolphin/webkit/BrowserVariationInfo;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Ldolphin/webkit/BrowserVariationInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_1
    return v0

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static getBrowserVariationInfo()Ldolphin/webkit/BrowserVariationInfo;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sBrowserVariationInfo:Ldolphin/webkit/BrowserVariationInfo;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DolphinWebkit is not initilized with BrowserVariationInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sBrowserVariationInfo:Ldolphin/webkit/BrowserVariationInfo;

    return-object v0
.end method

.method public static getClientLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getBrowserVariationInfo()Ldolphin/webkit/BrowserVariationInfo;

    move-result-object v0

    iget v0, v0, Ldolphin/webkit/BrowserVariationInfo;->language:I

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->langToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getWorkingContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 73
    const-class v1, Ldolphin/webkit/DolphinWebkit;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sWorkingContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "DolphinWebkit is not initilized with working context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 76
    :cond_0
    :try_start_1
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sWorkingContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    const-class v1, Ldolphin/webkit/DolphinWebkit;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sWorkingContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    monitor-exit v1

    return-void

    .line 63
    :cond_0
    if-nez p0, :cond_1

    .line 64
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "DolphinWebkit cannot work with null working context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_1
    :try_start_2
    sput-object p0, Ldolphin/webkit/DolphinWebkit;->sWorkingContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DolphinWebkit: working context package name - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ldolphin/webkit/DolphinWebkit;->sWorkingContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/util/Log;->d(Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->initBrowserVariation(Ldolphin/webkit/BrowserVariationInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static initBrowserVariation(Ldolphin/webkit/BrowserVariationInfo;)V
    .locals 2

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    sget-object v0, Ldolphin/webkit/DolphinWebkit;->sWorkingContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->findPkgIndex(Ljava/lang/String;)I

    move-result v0

    .line 52
    sget-object v1, Ldolphin/webkit/DolphinWebkit;->sPackages:[Ldolphin/webkit/BrowserVariationInfo;

    aget-object v0, v1, v0

    sput-object v0, Ldolphin/webkit/DolphinWebkit;->sBrowserVariationInfo:Ldolphin/webkit/BrowserVariationInfo;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    sput-object p0, Ldolphin/webkit/DolphinWebkit;->sBrowserVariationInfo:Ldolphin/webkit/BrowserVariationInfo;

    goto :goto_0
.end method

.method private static langToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 27
    const-string v0, "INT"

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    const-string v0, "EN"

    goto :goto_0

    .line 23
    :pswitch_1
    const-string v0, "CN"

    goto :goto_0

    .line 25
    :pswitch_2
    const-string v0, "JP"

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

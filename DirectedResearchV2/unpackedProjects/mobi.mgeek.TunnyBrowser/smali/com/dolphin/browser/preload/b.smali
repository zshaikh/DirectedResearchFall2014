.class public Lcom/dolphin/browser/preload/b;
.super Ljava/lang/Object;
.source "BuiltInDataManager.java"


# static fields
.field private static b:Lcom/dolphin/browser/preload/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dolphin/browser/preload/b;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a()Lcom/dolphin/browser/preload/b;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/preload/b;->b:Lcom/dolphin/browser/preload/b;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/dolphin/browser/preload/b;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/preload/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/preload/b;->b:Lcom/dolphin/browser/preload/b;

    .line 33
    :cond_0
    sget-object v0, Lcom/dolphin/browser/preload/b;->b:Lcom/dolphin/browser/preload/b;

    return-object v0
.end method

.method private l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/preload/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "dolphin://home"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "http://www.dolphin-browser.com/apps/aphone.htm"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "http://www.dolphin.com/features"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "http://dolphin-browser.com/android/addons/index.html"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "http://www.dolphin-browser.com/theme/"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/dolphin/browser/preload/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/preload/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "UA-26514344-1"

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/preload/b;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "tutorialStrategy"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 118
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 120
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 124
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 125
    :catch_2
    move-exception v1

    .line 126
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 124
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :cond_1
    :goto_3
    throw v0

    .line 125
    :catch_3
    move-exception v1

    .line 126
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 122
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 119
    :catch_4
    move-exception v1

    goto :goto_1
.end method

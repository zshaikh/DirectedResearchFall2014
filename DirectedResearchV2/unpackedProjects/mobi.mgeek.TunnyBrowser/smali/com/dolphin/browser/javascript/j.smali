.class public Lcom/dolphin/browser/javascript/j;
.super Ljava/lang/Object;
.source "JavaScriptRequestManager.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:Lcom/dolphin/browser/javascript/f;

.field private static d:Lcom/dolphin/browser/javascript/j;

.field private static e:Lorg/json/JSONObject;


# instance fields
.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/javascript/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/dolphin/browser/javascript/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/javascript/j;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/javascript/j;->b:Ljava/lang/Object;

    .line 27
    const-string v0, "window"

    invoke-static {v0}, Lcom/dolphin/browser/javascript/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/javascript/f;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/javascript/j;->c:Lcom/dolphin/browser/javascript/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/javascript/j;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/dolphin/browser/javascript/j;
    .locals 2

    .prologue
    .line 33
    sget-object v1, Lcom/dolphin/browser/javascript/j;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/javascript/j;->d:Lcom/dolphin/browser/javascript/j;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/dolphin/browser/javascript/j;

    invoke-direct {v0}, Lcom/dolphin/browser/javascript/j;-><init>()V

    sput-object v0, Lcom/dolphin/browser/javascript/j;->d:Lcom/dolphin/browser/javascript/j;

    .line 36
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->c()V

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-object v0, Lcom/dolphin/browser/javascript/j;->d:Lcom/dolphin/browser/javascript/j;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 4

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/javascript/j;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v2, "mt"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "aversion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "pname"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v2, "dvnum"

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v2, "dvname"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v0, "djsapi"

    invoke-static {}, Lcom/dolphin/browser/javascript/j;->b()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 75
    const-string v0, "djsproxy"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    sput-object v1, Lcom/dolphin/browser/javascript/j;->e:Lorg/json/JSONObject;

    .line 81
    :cond_1
    const-string v0, "(function(w, d){ w.dolphinmeta = d; })"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/dolphin/browser/javascript/j;->c:Lcom/dolphin/browser/javascript/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/dolphin/browser/javascript/j;->e:Lorg/json/JSONObject;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/javascript/h;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    sget-object v1, Lcom/dolphin/browser/javascript/j;->a:Ljava/lang/String;

    const-string v2, "Error while injecting Dolphin Object."

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->a()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/dolphin/browser/javascript/j;->d:Lcom/dolphin/browser/javascript/j;

    new-instance v1, Lcom/dolphin/browser/javascript/DolphinInfoHandler;

    invoke-direct {v1}, Lcom/dolphin/browser/javascript/DolphinInfoHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/javascript/h;)V

    .line 44
    sget-object v0, Lcom/dolphin/browser/javascript/j;->d:Lcom/dolphin/browser/javascript/j;

    new-instance v1, Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;

    invoke-direct {v1}, Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/javascript/h;)V

    .line 45
    return-void
.end method

.method public static c(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 173
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-interface {p0, v0}, Lcom/dolphin/browser/core/IWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/javascript/h;)V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/dolphin/browser/javascript/j;->f:Ljava/util/HashMap;

    .line 92
    monitor-enter v1

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/dolphin/browser/javascript/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    .line 122
    invoke-static {p1, p2}, Lcom/dolphin/browser/javascript/g;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Lcom/dolphin/browser/javascript/g;

    move-result-object v3

    .line 123
    if-nez v3, :cond_0

    .line 141
    :goto_0
    return v2

    .line 126
    :cond_0
    iget-object v4, p0, Lcom/dolphin/browser/javascript/j;->f:Ljava/util/HashMap;

    .line 127
    monitor-enter v4

    .line 128
    :try_start_0
    invoke-virtual {v3}, Lcom/dolphin/browser/javascript/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/javascript/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/javascript/h;->a(Lcom/dolphin/browser/javascript/g;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    invoke-virtual {v0, p1, v3}, Lcom/dolphin/browser/javascript/h;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/javascript/g;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    :goto_1
    move v2, v0

    .line 140
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_3
    sget-object v0, Lcom/dolphin/browser/javascript/j;->a:Ljava/lang/String;

    const-string v1, "Failed processing javaScript request %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b(Lcom/dolphin/browser/core/IWebView;)V
    .locals 4

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 150
    invoke-static {p1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 153
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/dolphin/browser/javascript/j;->f:Ljava/util/HashMap;

    .line 155
    monitor-enter v2

    .line 156
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/javascript/h;

    .line 158
    invoke-interface {p1, v1, v0}, Lcom/dolphin/browser/core/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

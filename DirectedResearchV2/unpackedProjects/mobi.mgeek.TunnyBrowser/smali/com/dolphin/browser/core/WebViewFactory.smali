.class public Lcom/dolphin/browser/core/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Z

.field private static k:I

.field private static l:Lcom/dolphin/browser/core/bk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/dolphin/browser/core/ICookieSyncManager;
    .locals 3

    .prologue
    .line 359
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 362
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->c:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ICookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    const-string v1, "WebViewFactory"

    const-string v2, "Can not get ICookieSyncManagers"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 103
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 104
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 105
    const-string v1, "com.dolphin.browser.dolphinwebkit.WebViewV14"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewFactory;->a:Ljava/lang/reflect/Constructor;

    .line 108
    :try_start_0
    const-string v1, "com.dolphin.browser.dolphinwebkit.WebViewV14"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearWebkitCache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->i:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/provider/FileContentProvider;->getBaseUri()Ljava/lang/String;

    .line 149
    :goto_1
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x6

    if-ge p0, v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Core library do not support SDK version less than 6"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    if-lt p0, v1, :cond_2

    if-ne p0, v1, :cond_3

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSense()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/eu;->a()Ljava/lang/Class;

    move-result-object v0

    .line 147
    :goto_2
    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->a:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 125
    :cond_3
    const/16 v0, 0x8

    if-ge p0, v0, :cond_4

    .line 126
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/eu;->b()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 129
    :cond_4
    const/16 v0, 0x9

    if-ge p0, v0, :cond_5

    .line 130
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/eu;->c()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 133
    :cond_5
    const/16 v0, 0xb

    if-ge p0, v0, :cond_6

    .line 134
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/eu;->d()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 138
    :cond_6
    const/16 v0, 0xf

    if-gt p0, v0, :cond_7

    .line 139
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/eu;->e()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/eu;->f()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 337
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/core/WebViewFactory;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 338
    sget-object v1, Lcom/dolphin/browser/core/WebViewFactory;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/4 v0, 0x1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    const-string v2, "WebViewFactory"

    const-string v3, "Can not clear webkit cache."

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static b()Lcom/dolphin/browser/core/ICookieManager;
    .locals 3

    .prologue
    .line 348
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 351
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ICookieManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    const-string v1, "WebViewFactory"

    const-string v2, "Can not get CookieManager"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebViewDatabase;
    .locals 3

    .prologue
    .line 403
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 406
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->g:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebViewDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v1, "WebViewFactory"

    const-string v2, "Can not get IWebViewDatabase"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(II)V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 152
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 153
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 154
    const-string v1, "com.dolphin.browser.dolphinwebkit.WebSettingsV14"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-string v3, "dolphin.webkit.WebSettings"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    .line 204
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSense()Z

    move-result v0

    .line 158
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->isHTC4_0_3()Z

    move-result v1

    .line 159
    const/4 v2, 0x6

    if-ge p0, v2, :cond_1

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Core library do not support SDK version less than 6"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    if-eqz v0, :cond_6

    .line 162
    if-ge p0, v5, :cond_2

    .line 163
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV6_7_Sense"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 166
    :cond_2
    const/16 v0, 0xe

    if-ge p0, v0, :cond_3

    .line 167
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV8_Sense"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 170
    :cond_3
    if-ge p0, v6, :cond_5

    .line 171
    if-eqz v1, :cond_4

    .line 172
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV15_Sense_plus"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 176
    :cond_4
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV15_Sense"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 181
    :cond_5
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV16_Sense"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0

    .line 186
    :cond_6
    if-ge p0, v5, :cond_7

    .line 187
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV6_7"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0

    .line 190
    :cond_7
    const/16 v0, 0xb

    if-ge p0, v0, :cond_8

    .line 191
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV8"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0

    .line 193
    :cond_8
    if-ge p0, v6, :cond_9

    .line 194
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV11"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0

    .line 198
    :cond_9
    const-string v0, "com.dolphin.browser.androidwebkit.WebSettingsV16"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/webkit/WebSettings;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    goto/16 :goto_0
.end method

.method static c()Lcom/dolphin/browser/core/IGeolocationPermissions;
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 373
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IGeolocationPermissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string v1, "WebViewFactory"

    const-string v2, "Can not get IGeolocationPermissions"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 208
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 209
    const-string v1, "com.dolphin.browser.dolphinwebkit.CookieManagerWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewFactory;->b:Ljava/lang/reflect/Constructor;

    .line 211
    const-string v1, "com.dolphin.browser.dolphinwebkit.CookieSyncManagerWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewFactory;->c:Ljava/lang/reflect/Constructor;

    .line 214
    const-string v1, "com.dolphin.browser.dolphinwebkit.GeolocationPermissionsWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewFactory;->d:Ljava/lang/reflect/Constructor;

    .line 217
    const-string v1, "com.dolphin.browser.dolphinwebkit.WebIconDatabaseWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewFactory;->e:Ljava/lang/reflect/Constructor;

    .line 219
    const-string v1, "com.dolphin.browser.dolphinwebkit.WebStorageWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewFactory;->f:Ljava/lang/reflect/Constructor;

    .line 221
    const-string v1, "com.dolphin.browser.dolphinwebkit.WebViewDatabaseWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->g:Ljava/lang/reflect/Constructor;

    .line 242
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, "com.dolphin.browser.androidwebkit.CookieManagerWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->b:Ljava/lang/reflect/Constructor;

    .line 227
    const-string v0, "com.dolphin.browser.androidwebkit.CookieSyncManagerWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->c:Ljava/lang/reflect/Constructor;

    .line 230
    const-string v0, "com.dolphin.browser.androidwebkit.GeolocationPermissionsWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->d:Ljava/lang/reflect/Constructor;

    .line 233
    const-string v0, "com.dolphin.browser.androidwebkit.WebIconDatabaseWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->e:Ljava/lang/reflect/Constructor;

    .line 235
    const-string v0, "com.dolphin.browser.androidwebkit.WebStorageWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->f:Ljava/lang/reflect/Constructor;

    .line 237
    const-string v0, "com.dolphin.browser.androidwebkit.WebViewDatabaseWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewFactory;->g:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method static d()Lcom/dolphin/browser/core/IWebIconDatabase;
    .locals 3

    .prologue
    .line 381
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 384
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->e:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebIconDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-object v0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-string v1, "WebViewFactory"

    const-string v2, "Can not get IWebIconDatabase"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 324
    const/4 v0, 0x2

    :try_start_0
    sget v1, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    if-ne v0, v1, :cond_1

    .line 325
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 326
    const-string v1, "dolphin.webkit.WebView"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disablePlatformNotifications"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 327
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    sget v0, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static e()Lcom/dolphin/browser/core/IWebStorage;
    .locals 3

    .prologue
    .line 392
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 395
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->f:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebStorage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-object v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const-string v1, "WebViewFactory"

    const-string v2, "Can not get IWebStorage"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 306
    const/4 v0, 0x2

    :try_start_0
    sget v1, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    if-ne v0, v1, :cond_1

    .line 307
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 308
    const-string v1, "dolphin.webkit.WebView"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enablePlatformNotifications"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget v0, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 64
    const-class v3, Lcom/dolphin/browser/core/WebViewFactory;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/core/WebViewFactory;->j:Z

    if-nez v0, :cond_0

    .line 65
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->f()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v1, 0x2

    .line 71
    :try_start_2
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->g()V

    .line 73
    :goto_0
    invoke-static {v4, v1}, Lcom/dolphin/browser/core/WebViewFactory;->a(II)V

    .line 74
    invoke-static {v4, v1}, Lcom/dolphin/browser/core/WebViewFactory;->b(II)V

    .line 75
    invoke-static {v4, v1}, Lcom/dolphin/browser/core/WebViewFactory;->c(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :goto_1
    :try_start_3
    sput v1, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/core/WebViewFactory;->j:Z

    .line 91
    const-string v0, "WebViewFactory"

    const-string v1, "init end currentWebkit = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :cond_0
    monitor-exit v3

    return-void

    .line 76
    :catch_0
    move-exception v0

    move v1, v2

    .line 77
    :goto_2
    :try_start_4
    const-string v5, "WebViewFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurs on init webkit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :try_start_5
    invoke-static {v4, v0}, Lcom/dolphin/browser/core/WebViewFactory;->a(II)V

    .line 82
    invoke-static {v4, v0}, Lcom/dolphin/browser/core/WebViewFactory;->b(II)V

    .line 83
    invoke-static {v4, v0}, Lcom/dolphin/browser/core/WebViewFactory;->c(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v1, v2

    .line 86
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    :try_start_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to init Android WebKit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 76
    :catch_2
    move-exception v0

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static g()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 97
    const-string v1, "dolphin.webkit.JniUtil"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v1, "setContext"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->getWorkingContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public static getIWebViewFromView(Landroid/view/View;)Lcom/dolphin/browser/core/IWebView;
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    instance-of v1, p0, Lcom/dolphin/browser/core/IWebView;

    if-eqz v1, :cond_0

    .line 441
    check-cast p0, Lcom/dolphin/browser/core/IWebView;

    .line 446
    :goto_0
    return-object p0

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/dolphin/browser/core/IWebView;

    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebView;

    move-object p0, v0

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static getWebSettings(Ljava/lang/Object;)Lcom/dolphin/browser/core/IWebSettings;
    .locals 3

    .prologue
    .line 414
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 417
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->h:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-object v0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const-string v1, "WebSettingsFactory"

    const-string v2, "Can not create WebSettings"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/dolphin/browser/core/WebViewFactory;->j:Z

    return v0
.end method

.method public static isUsingDolphinWebkit()Z
    .locals 2

    .prologue
    .line 429
    sget-boolean v0, Lcom/dolphin/browser/core/WebViewFactory;->j:Z

    if-nez v0, :cond_0

    .line 431
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->f()Z

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    sget v1, Lcom/dolphin/browser/core/WebViewFactory;->k:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;Z)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method

.method public static newWebView(Landroid/content/Context;Z)Lcom/dolphin/browser/core/IWebView;
    .locals 5

    .prologue
    .line 255
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->f()V

    .line 258
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 261
    :cond_0
    const-string v0, "WebViewFactory"

    const-string v1, "WebViewConstructor: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/dolphin/browser/core/WebViewFactory;->a:Ljava/lang/reflect/Constructor;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 262
    sget-object v0, Lcom/dolphin/browser/core/WebViewFactory;->a:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    instance-of v1, v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v1, :cond_2

    .line 266
    check-cast v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 267
    new-instance v1, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V

    .line 268
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 273
    :goto_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/dolphin/browser/core/WebViewFactory;->l:Lcom/dolphin/browser/core/bk;

    if-eqz v1, :cond_1

    .line 274
    sget-object v1, Lcom/dolphin/browser/core/WebViewFactory;->l:Lcom/dolphin/browser/core/bk;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/bk;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 276
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->e()Lcom/dolphin/browser/extensions/IWebViewExtension;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/extensions/IWebViewExtension;->onWebViewCreated(Lcom/dolphin/browser/core/IWebView;)V

    .line 280
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->resumeTimers()V

    .line 281
    const-string v1, "WebViewFactory"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-object v0

    .line 270
    :cond_2
    check-cast v0, Lcom/dolphin/browser/core/IWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "WebViewFactory"

    const-string v2, "Can not create webview"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setWebViewCreatedListener(Lcom/dolphin/browser/core/bk;)V
    .locals 2

    .prologue
    .line 295
    const-string v0, "WebViewFactory"

    const-string v1, "setCreatedListener"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sput-object p0, Lcom/dolphin/browser/core/WebViewFactory;->l:Lcom/dolphin/browser/core/bk;

    .line 297
    return-void
.end method

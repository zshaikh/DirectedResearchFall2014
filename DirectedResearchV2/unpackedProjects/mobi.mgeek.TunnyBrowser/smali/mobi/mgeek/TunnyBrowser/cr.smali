.class public Lmobi/mgeek/TunnyBrowser/cr;
.super Lcom/dolphin/browser/core/Configuration;
.source "Configuration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/core/Configuration;-><init>()V

    .line 37
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cr;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/cr;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/cr;->a(Landroid/content/pm/PackageInfo;)V

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz p1, :cond_0

    const-string v0, "beluga_debug_key_"

    .line 225
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    const-string v0, "beluga_app_key_"

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 5

    .prologue
    .line 42
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 43
    if-eqz v2, :cond_3

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_3

    .line 45
    aget-object v1, v2, v0

    .line 47
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 50
    :try_start_1
    const-class v4, Lmobi/mgeek/TunnyBrowser/BrowserProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v4, p0, Lmobi/mgeek/TunnyBrowser/cr;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :cond_0
    :goto_1
    :try_start_2
    const-class v4, Lcom/dolphin/browser/provider/DolphinDataProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v4, p0, Lmobi/mgeek/TunnyBrowser/cr;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    :cond_1
    :goto_2
    :try_start_3
    const-class v4, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/cr;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 44
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 75
    :cond_3
    return-void

    .line 67
    :catch_1
    move-exception v1

    goto :goto_3

    .line 59
    :catch_2
    move-exception v4

    goto :goto_2

    .line 53
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmobi/mgeek/TunnyBrowser/cr;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0098

    .line 218
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getActionExecutorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    const-class v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    return-object v0
.end method

.method public getAddonSDKVersion()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "DolphinHD"

    return-object v0
.end method

.method public getBelugaAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cr;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/cr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cr;->d:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBelugaSendTrackInterval()I
    .locals 1

    .prologue
    .line 235
    const v0, 0x2bf20

    return v0
.end method

.method public getBelugaServerHostType()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public getBrowserSettings()Lcom/dolphin/browser/core/IBrowserSettings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDolphinPushUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/dolphin/browser/DolphinService/f;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDolphinServerApiPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "api/2"

    return-object v0
.end method

.method public getDolphinServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDolphinSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/dolphin/browser/DolphinService/f;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleTracker()Lcom/dolphin/browser/util/ax;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/mgeek/android/util/k;->e()Lcom/mgeek/android/util/k;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleTrackerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageCacheDirBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "TunnyBrowser"

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object v0
.end method

.method public getMessageStoreReceiveUpdates()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getMostVisitedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPreInstallAddonApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "DolphinHDPreInstall"

    return-object v0
.end method

.method public getPreInstallAppApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "DolphinHDPreInstallApp"

    return-object v0
.end method

.method public getPromotedAddonApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "DolphinHDAddonStore"

    return-object v0
.end method

.method public getPromotedAppApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "DolphinHDAppStore"

    return-object v0
.end method

.method public getSyncServiceApiPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "api/1"

    return-object v0
.end method

.method public getThemeMinVersionRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeVersionRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getTraceInterval()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xb4

    return v0
.end method

.method public getTrustStorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "secret"

    return-object v0
.end method

.method public getTrustStoreResource()I
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060025

    return v0
.end method

.method public getTunnyBrowserAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/dolphin/browser/voice/command/c/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBrowserCN()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableTrafficTrack()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isNewThemeEnabled()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

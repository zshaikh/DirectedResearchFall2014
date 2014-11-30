.class public Lcom/applovin/sdk/AppLovinSdkUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdRefreshSeconds(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "applovin.sdk.ad_refresh_seconds"

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method public static getAutoPreloadSizes(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "applovin.sdk.auto_preload_ad_sizes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BANNER,INTER"

    goto :goto_0
.end method

.method public static isVerboseLoggingEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "applovin.sdk.verbose_logging"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected static retrieveMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppLovinSdk"

    const-string v2, "Unable to retrieve application metadata"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static retrieveSdkKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "applovin.sdk.key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static retrieveUserSettings(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 3

    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isVerboseLoggingEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->getAdRefreshSeconds(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->setBannerAdRefreshSeconds(J)V

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->getAutoPreloadSizes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setAutoPreloadSizes(Ljava/lang/String;)V

    return-object v0
.end method

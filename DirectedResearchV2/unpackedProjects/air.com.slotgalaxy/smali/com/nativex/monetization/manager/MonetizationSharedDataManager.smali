.class public Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
.super Ljava/lang/Object;
.source "MonetizationSharedDataManager.java"


# instance fields
.field private volatile advertiserListener:Lcom/nativex/advertiser/AdvertiserListener;

.field private volatile appId:I

.field private volatile applicationName:Ljava/lang/String;

.field private volatile availableBalances:Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

.field private volatile contextInstance:Landroid/content/Context;

.field private volatile currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

.field private volatile currencySupported:Z

.field private volatile packageName:Ljava/lang/String;

.field private volatile publisherUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->availableBalances:Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->currencySupported:Z

    .line 53
    return-void
.end method

.method public static checkTheme()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->getTheme()Lcom/nativex/monetization/theme/Theme;

    move-result-object v0

    .line 213
    .local v0, "theme":Lcom/nativex/monetization/theme/Theme;
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Lcom/nativex/monetization/theme/DarkTheme;

    invoke-direct {v1}, Lcom/nativex/monetization/theme/DarkTheme;-><init>()V

    invoke-static {v1}, Lcom/nativex/monetization/theme/ThemeManager;->setTheme(Lcom/nativex/monetization/theme/Theme;)V

    .line 216
    :cond_0
    return-void
.end method

.method public static getAppId()I
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->appId:I

    return v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCachedBalances()Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->availableBalances:Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->contextInstance:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrencyListener()Lcom/nativex/monetization/listeners/CurrencyListenerBase;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/ManagementService;->getInstance()Lcom/nativex/monetization/manager/ManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/ManagementService;->getMonetizationSharedDataManager()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    .line 62
    .local v0, "monetizationSharedDataManager":Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    .end local v0    # "monetizationSharedDataManager":Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
    invoke-direct {v0}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;-><init>()V

    .line 64
    .restart local v0    # "monetizationSharedDataManager":Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
    invoke-static {}, Lcom/nativex/monetization/manager/ManagementService;->getInstance()Lcom/nativex/monetization/manager/ManagementService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nativex/monetization/manager/ManagementService;->setMonetizationSharedDataManager(Lcom/nativex/monetization/manager/MonetizationSharedDataManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-object v0

    .line 61
    .end local v0    # "monetizationSharedDataManager":Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getListener()Lcom/nativex/advertiser/AdvertiserListener;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->advertiserListener:Lcom/nativex/advertiser/AdvertiserListener;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getPublisherUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->publisherUserId:Ljava/lang/String;

    return-object v0
.end method

.method public static isCurrencySupported()Z
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->currencySupported:Z

    return v0
.end method

.method public static isManagerInstantiated()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->printFields()V

    .line 189
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->appId:I

    if-gtz v0, :cond_0

    move v0, v1

    .line 199
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->contextInstance:Landroid/content/Context;

    if-nez v0, :cond_1

    move v0, v1

    .line 194
    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 197
    goto :goto_0

    .line 199
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static printFields()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonetizationSharedDataManager: appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v1

    iget v1, v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->w(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonetizationSharedDataManager: packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->w(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonetizationSharedDataManager: contextInstance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->contextInstance:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->w(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonetizationSharedDataManager: publisherUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->publisherUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonetizationSharedDataManager: applicationName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->applicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonetizationSharedDataManager: currencyListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static setAdvertiserListener(Lcom/nativex/advertiser/AdvertiserListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/nativex/advertiser/AdvertiserListener;

    .prologue
    .line 229
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->advertiserListener:Lcom/nativex/advertiser/AdvertiserListener;

    .line 230
    return-void
.end method

.method public static setAppId(I)V
    .locals 1
    .param p0, "appId"    # I

    .prologue
    .line 106
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->appId:I

    .line 107
    return-void
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->applicationName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static setCachedBalances(Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;)V
    .locals 1
    .param p0, "balances"    # Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

    .prologue
    .line 180
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->availableBalances:Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

    .line 181
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->contextInstance:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public static setCurrencyListener(Lcom/nativex/monetization/listeners/CurrencyListenerBase;)V
    .locals 1
    .param p0, "currencyListener"    # Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    .prologue
    .line 175
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    .line 176
    return-void
.end method

.method public static setCurrencySupport(Z)V
    .locals 1
    .param p0, "isSupported"    # Z

    .prologue
    .line 220
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-boolean p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->currencySupported:Z

    .line 221
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->packageName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static setPublisherUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "publisherUserId"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getInstance()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    move-result-object v0

    iput-object p0, v0, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->publisherUserId:Ljava/lang/String;

    .line 127
    return-void
.end method

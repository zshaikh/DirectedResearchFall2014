.class public Lcom/nativex/monetization/manager/ManagementService;
.super Ljava/lang/Object;
.source "ManagementService.java"


# static fields
.field private static INSTANCE:Lcom/nativex/monetization/manager/ManagementService;


# instance fields
.field private dialogManager:Lcom/nativex/monetization/manager/DialogManager;

.field private serverRequestManager:Lcom/nativex/monetization/communication/ServerRequestManager;

.field private sharedDataManager:Lcom/nativex/monetization/manager/MonetizationSharedDataManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/nativex/monetization/manager/ManagementService;->serverRequestManager:Lcom/nativex/monetization/communication/ServerRequestManager;

    .line 37
    iput-object v0, p0, Lcom/nativex/monetization/manager/ManagementService;->dialogManager:Lcom/nativex/monetization/manager/DialogManager;

    .line 39
    iput-object v0, p0, Lcom/nativex/monetization/manager/ManagementService;->sharedDataManager:Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/nativex/monetization/manager/ManagementService;
    .locals 2

    .prologue
    .line 79
    const-class v0, Lcom/nativex/monetization/manager/ManagementService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/manager/ManagementService;->INSTANCE:Lcom/nativex/monetization/manager/ManagementService;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/nativex/monetization/manager/ManagementService;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/ManagementService;-><init>()V

    sput-object v1, Lcom/nativex/monetization/manager/ManagementService;->INSTANCE:Lcom/nativex/monetization/manager/ManagementService;

    .line 83
    :cond_0
    sget-object v1, Lcom/nativex/monetization/manager/ManagementService;->INSTANCE:Lcom/nativex/monetization/manager/ManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDialogManager()Lcom/nativex/monetization/manager/DialogManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nativex/monetization/manager/ManagementService;->dialogManager:Lcom/nativex/monetization/manager/DialogManager;

    return-object v0
.end method

.method public getMonetizationSharedDataManager()Lcom/nativex/monetization/manager/MonetizationSharedDataManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nativex/monetization/manager/ManagementService;->sharedDataManager:Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    return-object v0
.end method

.method public getServerRequestManager()Lcom/nativex/monetization/communication/ServerRequestManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nativex/monetization/manager/ManagementService;->serverRequestManager:Lcom/nativex/monetization/communication/ServerRequestManager;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseNow()V

    .line 88
    invoke-static {}, Lcom/nativex/monetization/manager/ImageDownloadManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageDownloader;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageDownloader;->release()V

    .line 89
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->release()V

    .line 90
    invoke-static {}, Lcom/nativex/monetization/manager/DialogManager;->release()V

    .line 91
    invoke-static {}, Lcom/nativex/advertiser/DeviceManager;->release()V

    .line 92
    iput-object v1, p0, Lcom/nativex/monetization/manager/ManagementService;->dialogManager:Lcom/nativex/monetization/manager/DialogManager;

    .line 93
    sput-object v1, Lcom/nativex/monetization/manager/ManagementService;->INSTANCE:Lcom/nativex/monetization/manager/ManagementService;

    .line 94
    return-void
.end method

.method public setDialogManager(Lcom/nativex/monetization/manager/DialogManager;)V
    .locals 0
    .param p1, "dialogManager"    # Lcom/nativex/monetization/manager/DialogManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nativex/monetization/manager/ManagementService;->dialogManager:Lcom/nativex/monetization/manager/DialogManager;

    .line 56
    return-void
.end method

.method public setMonetizationSharedDataManager(Lcom/nativex/monetization/manager/MonetizationSharedDataManager;)V
    .locals 0
    .param p1, "sharedDataManager"    # Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nativex/monetization/manager/ManagementService;->sharedDataManager:Lcom/nativex/monetization/manager/MonetizationSharedDataManager;

    .line 65
    return-void
.end method

.method public setServerRequestManager(Lcom/nativex/monetization/communication/ServerRequestManager;)V
    .locals 0
    .param p1, "serverRequestManager"    # Lcom/nativex/monetization/communication/ServerRequestManager;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nativex/monetization/manager/ManagementService;->serverRequestManager:Lcom/nativex/monetization/communication/ServerRequestManager;

    .line 74
    return-void
.end method

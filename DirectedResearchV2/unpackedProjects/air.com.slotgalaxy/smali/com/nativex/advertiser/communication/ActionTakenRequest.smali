.class public Lcom/nativex/advertiser/communication/ActionTakenRequest;
.super Lcom/nativex/common/Request;
.source "ActionTakenRequest.java"


# static fields
.field public static testAJRM:Lcom/nativex/advertiser/AdvertiserJsonRequestManager;


# instance fields
.field private appId:I

.field private shouldExecute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->testAJRM:Lcom/nativex/advertiser/AdvertiserJsonRequestManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->shouldExecute:Z

    .line 38
    const-string v0, "PublicServices/MobileTrackingApiRestV1.svc/ActionTaken/Put"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setUrl(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 40
    const-string v0, "ActionTaken"

    invoke-virtual {p0, v0}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setRequestType(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 4

    .prologue
    .line 51
    sget-object v2, Lcom/nativex/advertiser/communication/ActionTakenRequest;->testAJRM:Lcom/nativex/advertiser/AdvertiserJsonRequestManager;

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/nativex/advertiser/communication/ActionTakenRequest;->testAJRM:Lcom/nativex/advertiser/AdvertiserJsonRequestManager;

    iget v3, p0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->appId:I

    invoke-virtual {v2, v3}, Lcom/nativex/advertiser/AdvertiserJsonRequestManager;->getActionTakenRequestBody(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "request":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setRequest(Ljava/lang/String;)V

    .line 58
    return-void

    .line 54
    .end local v1    # "request":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/advertiser/DeviceManager;->getDeviceInstance(Landroid/content/Context;)Lcom/nativex/advertiser/Device;

    move-result-object v0

    .line 55
    .local v0, "device":Lcom/nativex/advertiser/Device;
    new-instance v2, Lcom/nativex/advertiser/AdvertiserJsonRequestManager;

    invoke-direct {v2, v0}, Lcom/nativex/advertiser/AdvertiserJsonRequestManager;-><init>(Lcom/nativex/advertiser/Device;)V

    iget v3, p0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->appId:I

    invoke-virtual {v2, v3}, Lcom/nativex/advertiser/AdvertiserJsonRequestManager;->getActionTakenRequestBody(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "request":Ljava/lang/String;
    goto :goto_0
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/nativex/advertiser/communication/ActionTakenResponse;

    invoke-direct {v0}, Lcom/nativex/advertiser/communication/ActionTakenResponse;-><init>()V

    return-object v0
.end method

.method public setActionId(I)V
    .locals 1
    .param p1, "appId"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->appId:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->shouldExecute:Z

    .line 69
    return-void
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/nativex/advertiser/communication/ActionTakenRequest;->shouldExecute:Z

    return v0
.end method

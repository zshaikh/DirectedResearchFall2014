.class public Lcom/stuv/ane/w3i/W3iWrapper;
.super Ljava/lang/Object;
.source "W3iWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _cancelled:Ljava/lang/Boolean;

.field private static _context:Lcom/adobe/fre/FREContext;

.field private static _lastPlacement:Ljava/lang/String;

.field private static _redeemData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_cancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_baseActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static actionTaken(I)V
    .locals 0
    .param p0, "actionId"    # I

    .prologue
    .line 174
    invoke-static {p0}, Lcom/nativex/monetization/MonetizationManager;->actionTaken(I)V

    .line 175
    return-void
.end method

.method public static cancel()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_cancelled:Ljava/lang/Boolean;

    .line 96
    return-void
.end method

.method public static createSession()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/stuv/ane/w3i/W3iWrapper$1;

    invoke-direct {v0}, Lcom/stuv/ane/w3i/W3iWrapper$1;-><init>()V

    invoke-static {v0}, Lcom/nativex/monetization/MonetizationManager;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V

    .line 84
    return-void
.end method

.method public static endSession()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->endSession()V

    .line 90
    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 39
    sput-object p1, Lcom/stuv/ane/w3i/W3iWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 41
    sput-object p0, Lcom/stuv/ane/w3i/W3iWrapper;->_baseActivity:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method public static initialise(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # I
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p0, p3, p2}, Lcom/nativex/monetization/MonetizationManager;->initialize(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nativex/monetization/MonetizationManager;->enableLogging(Z)V

    .line 50
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->createSession()V

    .line 53
    return-void
.end method

.method public static reinitialise(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # I
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->endSession()V

    .line 59
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p0, p3, p2}, Lcom/nativex/monetization/MonetizationManager;->initialize(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->createSession()V

    .line 62
    return-void
.end method

.method public static showPlacement(Ljava/lang/String;)V
    .locals 2
    .param p0, "placement"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_cancelled:Ljava/lang/Boolean;

    .line 106
    sput-object p0, Lcom/stuv/ane/w3i/W3iWrapper;->_lastPlacement:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/stuv/ane/w3i/W3iWrapper;->_baseActivity:Landroid/app/Activity;

    new-instance v1, Lcom/stuv/ane/w3i/W3iWrapper$2;

    invoke-direct {v1}, Lcom/stuv/ane/w3i/W3iWrapper$2;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/nativex/monetization/MonetizationManager;->fetchAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 170
    return-void
.end method

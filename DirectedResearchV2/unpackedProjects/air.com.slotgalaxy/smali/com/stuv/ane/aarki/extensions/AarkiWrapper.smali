.class public Lcom/stuv/ane/aarki/extensions/AarkiWrapper;
.super Ljava/lang/Object;
.source "AarkiWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 26
    sput-object p1, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 28
    sput-object p0, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->_baseActivity:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method public static initialise()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public static registerApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "installId"    # Ljava/lang/String;
    .param p1, "securityKey"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/aarki/Aarki;->registerApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static registerEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/aarki/Aarki;->registerEvent(Ljava/lang/String;)Z

    .line 45
    return-void
.end method

.method public static setUser(Ljava/lang/String;)V
    .locals 0
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/aarki/Aarki;->setUserId(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static showOfferWall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "placement"    # Ljava/lang/String;
    .param p1, "tracking"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->_baseActivity:Landroid/app/Activity;

    new-instance v1, Lcom/stuv/ane/aarki/extensions/AarkiWrapper$1;

    invoke-direct {v1}, Lcom/stuv/ane/aarki/extensions/AarkiWrapper$1;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/aarki/Aarki;->showAds(Landroid/app/Activity;Ljava/lang/String;Lcom/aarki/Aarki$AarkiListener;)V

    .line 67
    return-void
.end method

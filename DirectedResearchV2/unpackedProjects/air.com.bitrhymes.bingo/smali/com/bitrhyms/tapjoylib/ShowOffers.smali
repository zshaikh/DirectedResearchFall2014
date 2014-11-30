.class public Lcom/bitrhyms/tapjoylib/ShowOffers;
.super Ljava/lang/Object;
.source "ShowOffers.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private mContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bitrhyms/tapjoylib/ShowOffers;)Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bitrhyms/tapjoylib/ShowOffers;->mContext:Lcom/adobe/fre/FREContext;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 19
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 20
    iput-object p1, p0, Lcom/bitrhyms/tapjoylib/ShowOffers;->mContext:Lcom/adobe/fre/FREContext;

    .line 22
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 23
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    new-instance v2, Lcom/bitrhyms/tapjoylib/ShowOffers$1;

    invoke-direct {v2, p0}, Lcom/bitrhyms/tapjoylib/ShowOffers$1;-><init>(Lcom/bitrhyms/tapjoylib/ShowOffers;)V

    invoke-virtual {v1, v2}, Lcom/tapjoy/TapjoyConnect;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 39
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/bitrhyms/tapjoylib/ShowOffers;->mContext:Lcom/adobe/fre/FREContext;

    const-string v2, "ERROR_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

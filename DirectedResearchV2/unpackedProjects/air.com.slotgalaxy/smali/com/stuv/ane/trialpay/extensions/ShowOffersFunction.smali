.class public Lcom/stuv/ane/trialpay/extensions/ShowOffersFunction;
.super Ljava/lang/Object;
.source "ShowOffersFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v6, 0x0

    .line 15
    move-object v0, p1

    check-cast v0, Lcom/stuv/ane/trialpay/extensions/ExtensionContext;

    move-object v3, v0

    .line 17
    .local v3, "fbContext":Lcom/stuv/ane/trialpay/extensions/ExtensionContext;
    invoke-virtual {v3}, Lcom/stuv/ane/trialpay/extensions/ExtensionContext;->initialise()V

    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, "apiCode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 24
    .local v4, "sid":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 25
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 32
    invoke-static {v1, v4}, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->showOffers(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 34
    :goto_0
    return-object v5

    .line 27
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 29
    goto :goto_0
.end method

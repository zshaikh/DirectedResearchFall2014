.class public Lcom/stuv/ane/aarki/extensions/AarkiShowOfferWallFunction;
.super Ljava/lang/Object;
.source "AarkiShowOfferWallFunction.java"

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

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;

    move-object v2, v0

    .line 16
    .local v2, "fbContext":Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;
    invoke-virtual {v2}, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;->initialise()V

    .line 18
    const/4 v3, 0x0

    .line 19
    .local v3, "placementId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 23
    .local v4, "tracking":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 24
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->showOfferWall(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 33
    :goto_0
    return-object v5

    .line 26
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 28
    goto :goto_0
.end method

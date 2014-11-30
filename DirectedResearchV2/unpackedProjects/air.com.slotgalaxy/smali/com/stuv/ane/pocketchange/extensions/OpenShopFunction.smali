.class public Lcom/stuv/ane/pocketchange/extensions/OpenShopFunction;
.super Ljava/lang/Object;
.source "OpenShopFunction.java"

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
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    invoke-static {}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->openShop()V

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/stuv/ane/pocketchange/extensions/GetPendingNotificationIntentFunction;
.super Ljava/lang/Object;
.source "GetPendingNotificationIntentFunction.java"

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
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    move-object v0, p1

    check-cast v0, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;

    move-object v1, v0

    .line 17
    .local v1, "fbContext":Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;
    invoke-virtual {v1}, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;->initialise()V

    .line 19
    invoke-static {}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->getPendingNotificationIntent()V

    .line 21
    const/4 v2, 0x0

    return-object v2
.end method

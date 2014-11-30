.class public Lcom/stuv/ane/pocketchange/extensions/InitialiseFunction;
.super Ljava/lang/Object;
.source "InitialiseFunction.java"

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

    check-cast v0, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;

    move-object v3, v0

    .line 16
    .local v3, "fbContext":Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;
    invoke-virtual {v3}, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;->initialise()V

    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, "appId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 23
    .local v4, "testMode":Z
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 24
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 31
    invoke-static {v1, v4}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->initialise(Ljava/lang/String;Z)V

    move-object v5, v6

    .line 33
    :goto_0
    return-object v5

    .line 26
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 28
    goto :goto_0
.end method

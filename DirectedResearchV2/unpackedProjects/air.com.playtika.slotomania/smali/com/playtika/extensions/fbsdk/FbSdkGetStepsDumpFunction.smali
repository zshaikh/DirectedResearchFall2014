.class public Lcom/playtika/extensions/fbsdk/FbSdkGetStepsDumpFunction;
.super Ljava/lang/Object;
.source "FbSdkGetStepsDumpFunction.java"

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
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 11
    const/4 v1, 0x0

    .line 13
    .local v1, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    sget-object v2, Lcom/playtika/extensions/fbsdk/FbSdkContext;->debugDump:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 18
    :goto_0
    return-object v1

    .line 14
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 15
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

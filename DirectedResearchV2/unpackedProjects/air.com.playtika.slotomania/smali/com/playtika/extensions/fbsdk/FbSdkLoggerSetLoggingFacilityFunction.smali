.class public Lcom/playtika/extensions/fbsdk/FbSdkLoggerSetLoggingFacilityFunction;
.super Ljava/lang/Object;
.source "FbSdkLoggerSetLoggingFacilityFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "freContext"    # Lcom/adobe/fre/FREContext;
    .param p2, "freObjects"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 19
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    .local v1, "facility":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 26
    invoke-static {v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->setLoggingFacility(Ljava/lang/String;)V

    .line 29
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 20
    .end local v1    # "facility":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    const/4 v1, 0x0

    .restart local v1    # "facility":Ljava/lang/String;
    goto :goto_0
.end method

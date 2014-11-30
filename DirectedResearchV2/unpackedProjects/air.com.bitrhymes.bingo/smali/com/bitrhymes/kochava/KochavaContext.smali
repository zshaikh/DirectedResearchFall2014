.class public Lcom/bitrhymes/kochava/KochavaContext;
.super Lcom/adobe/fre/FREContext;
.source "KochavaContext.java"


# static fields
.field static appsContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/bitrhymes/kochava/KochavaContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/bitrhymes/kochava/KochavaContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 28
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "JungleAppsContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "appsContext1"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 33
    sput-object p0, Lcom/bitrhymes/kochava/KochavaContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 34
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inside dispose method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inside getFunctions method"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "functionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/kochava/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/kochava/GetVersion;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "setKochavaSDKAppID"

    new-instance v2, Lcom/bitrhymes/kochava/StartSession;

    invoke-direct {v2}, Lcom/bitrhymes/kochava/StartSession;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "stopKochavaSession"

    new-instance v2, Lcom/bitrhymes/kochava/StopSession;

    invoke-direct {v2}, Lcom/bitrhymes/kochava/StopSession;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "End of getFunctions method"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-object v0
.end method

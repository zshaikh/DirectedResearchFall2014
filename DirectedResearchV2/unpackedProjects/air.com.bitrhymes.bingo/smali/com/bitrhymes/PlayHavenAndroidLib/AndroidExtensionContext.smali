.class public Lcom/bitrhymes/PlayHavenAndroidLib/AndroidExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AndroidExtensionContext.java"


# instance fields
.field public activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/AndroidExtensionContext;->activity:Landroid/app/Activity;

    .line 17
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
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
    const-string v3, "playhave n"

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "playhave n"

    const-string v1, "start "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/PlayHavenAndroidLib/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/PlayHavenAndroidLib/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "requestForApp"

    new-instance v2, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;

    invoke-direct {v2}, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "displayPlayHavenFullScreen"

    new-instance v2, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;

    invoke-direct {v2}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "requestContentPH"

    new-instance v2, Lcom/bitrhymes/PlayHavenAndroidLib/RequestContentPH;

    invoke-direct {v2}, Lcom/bitrhymes/PlayHavenAndroidLib/RequestContentPH;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "playhave n"

    const-string v1, "end"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-object v0
.end method

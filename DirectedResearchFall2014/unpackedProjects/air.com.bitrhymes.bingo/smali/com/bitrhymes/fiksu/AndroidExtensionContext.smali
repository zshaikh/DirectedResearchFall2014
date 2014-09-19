.class public Lcom/bitrhymes/fiksu/AndroidExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AndroidExtensionContext.java"


# instance fields
.field public activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/fiksu/AndroidExtensionContext;->activity:Landroid/app/Activity;

    .line 15
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
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, functionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/fiksu/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/fiksu/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "c2dMessageReceived"

    new-instance v2, Lcom/bitrhymes/fiksu/C2dMessageReceived;

    invoke-direct {v2}, Lcom/bitrhymes/fiksu/C2dMessageReceived;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "promptForRating"

    new-instance v2, Lcom/bitrhymes/fiksu/PromptForRating;

    invoke-direct {v2}, Lcom/bitrhymes/fiksu/PromptForRating;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "uploadPurchaseEvent"

    new-instance v2, Lcom/bitrhymes/fiksu/UploadPurchaseEvent;

    invoke-direct {v2}, Lcom/bitrhymes/fiksu/UploadPurchaseEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "uploadRegistrationEvent"

    new-instance v2, Lcom/bitrhymes/fiksu/UploadRegistrationEvent;

    invoke-direct {v2}, Lcom/bitrhymes/fiksu/UploadRegistrationEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v0
.end method

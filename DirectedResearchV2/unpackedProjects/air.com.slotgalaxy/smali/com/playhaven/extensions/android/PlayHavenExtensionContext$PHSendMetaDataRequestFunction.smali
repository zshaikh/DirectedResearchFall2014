.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;
.super Ljava/lang/Object;
.source "PlayHavenExtensionContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/extensions/android/PlayHavenExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHSendMetaDataRequestFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 648
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "placementId":Ljava/lang/String;
    iget-object v2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendMetaDataRequestFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-virtual {v2, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiSendMetaDataRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v1    # "placementId":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 651
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "[PHExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

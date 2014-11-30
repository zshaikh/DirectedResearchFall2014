.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;
.super Ljava/lang/Object;
.source "PlayHavenExtensionContext.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiSendMetaDataRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

.field private final synthetic val$outPlacementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    iput-object p2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;->val$outPlacementId:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 162
    const-string v1, "[PHExtension]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request failed meta:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;->val$outPlacementId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[ERR]0[ERR]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "level":Ljava/lang/String;
    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    const-string v2, "METADATA_FAILED"

    # invokes: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$0(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 153
    const-string v0, "[PHExtension]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request succeeded for meta:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$1;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    const-string v1, "METADATA_LOADED"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$0(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;
.super Ljava/lang/Object;
.source "PlayHavenExtensionContext.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiReportVGPPurchaseResolution(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

.field private final synthetic val$purchaseReceiptId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    iput-object p2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    const-string v1, "VGP_PURCHASE_REPORT_FAILED"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "[ERR]0[ERR]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$1(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    const-string v1, "VGP_PURCHASE_REPORTED"

    iget-object v2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    # invokes: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$1(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    iget-object v0, v0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->purchaseMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

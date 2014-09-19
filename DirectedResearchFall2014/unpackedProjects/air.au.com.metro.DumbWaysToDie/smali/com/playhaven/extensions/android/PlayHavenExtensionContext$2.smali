.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;
.super Ljava/lang/Object;
.source "PlayHavenExtensionContext.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiReportPurchaseResolution(Ljava/lang/String;Ljava/lang/String;)V
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
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    iput-object p2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .parameter "request"
    .parameter "e"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    const-string v1, "PURCHASE_REPORT_FAILED"

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

    #calls: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$0(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "request"
    .parameter "responseData"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    const-string v1, "PURCHASE_REPORTED"

    iget-object v2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    #calls: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$0(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    iget-object v0, v0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->purchaseMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$2;->val$purchaseReceiptId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

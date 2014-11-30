.class Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;
.super Ljava/lang/Object;
.source "AbstractBillingNativeContext.java"

# interfaces
.implements Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionQueryContentServerInternal(Ljava/util/Map;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

.field private final synthetic val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    iput-object p2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAyncOperationDone(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 301
    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->parseContentServerResult(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->access$0(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER_SUCCESS"

    iget-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->access$1(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    .line 318
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->notifyActionDone()V

    .line 321
    :cond_0
    return-void

    .line 306
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_PROVIDER_ERROR"

    .line 307
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    iget-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    .line 306
    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->access$1(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    goto :goto_0

    .line 310
    :cond_2
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 311
    # getter for: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to query content server"

    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->this$0:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_PROVIDER_ERROR"

    .line 315
    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    iget-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    .line 314
    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->access$1(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    goto :goto_0
.end method

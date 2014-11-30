.class Lcom/nativex/monetization/communication/ServerRequestManager$5;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->getSmartOfferRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/ServerRequestManager;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/ServerRequestManager;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$5;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 2
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$5;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleGetSmartOfferRules(Lcom/nativex/common/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while executing GetSmartOfferRules operation"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

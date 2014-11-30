.class Lcom/jesusla/storekit/GoogleProvider$3;
.super Ljava/lang/Object;
.source "GoogleProvider.java"

# interfaces
.implements Lcom/jesusla/google/RestoreTransactionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jesusla/storekit/GoogleProvider;->restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/storekit/GoogleProvider;

.field final synthetic val$closure:Lcom/jesusla/ane/Closure;


# direct methods
.method constructor <init>(Lcom/jesusla/storekit/GoogleProvider;Lcom/jesusla/ane/Closure;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jesusla/storekit/GoogleProvider$3;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    iput-object p2, p0, Lcom/jesusla/storekit/GoogleProvider$3;->val$closure:Lcom/jesusla/ane/Closure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreTransactionsResponse(Lcom/jesusla/google/Consts$ResponseCode;)V
    .locals 5
    .param p1, "responseCode"    # Lcom/jesusla/google/Consts$ResponseCode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider$3;->val$closure:Lcom/jesusla/ane/Closure;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider$3;->val$closure:Lcom/jesusla/ane/Closure;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/jesusla/google/Consts$ResponseCode;->RESULT_OK:Lcom/jesusla/google/Consts$ResponseCode;

    if-ne p1, v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 109
    goto :goto_0
.end method

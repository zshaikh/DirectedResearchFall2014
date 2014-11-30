.class Lcom/jesusla/storekit/GoogleProvider$1;
.super Ljava/lang/Object;
.source "GoogleProvider.java"

# interfaces
.implements Lcom/jesusla/google/BillingSupportedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jesusla/storekit/GoogleProvider;->init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
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
    .line 47
    iput-object p1, p0, Lcom/jesusla/storekit/GoogleProvider$1;->this$0:Lcom/jesusla/storekit/GoogleProvider;

    iput-object p2, p0, Lcom/jesusla/storekit/GoogleProvider$1;->val$closure:Lcom/jesusla/ane/Closure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingSupported(ZLjava/lang/String;)V
    .locals 4
    .param p1, "billingSupported"    # Z
    .param p2, "productType"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider$1;->val$closure:Lcom/jesusla/ane/Closure;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider$1;->val$closure:Lcom/jesusla/ane/Closure;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.class Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;
.super Ljava/lang/Object;
.source "InAppPurchaseObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Lcom/amazon/inapp/purchasing/Receipt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;

.field private final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;->this$1:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;

    iput-object p2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;->val$m:Ljava/util/Map;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;->this$1:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->access$4(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;)Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    move-result-object v0

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;->val$m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->performConsumeItem(Ljava/util/Map;)V

    .line 359
    return-void
.end method

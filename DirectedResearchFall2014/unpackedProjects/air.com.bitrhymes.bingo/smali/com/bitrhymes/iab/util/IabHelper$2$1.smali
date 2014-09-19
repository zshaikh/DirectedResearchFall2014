.class Lcom/bitrhymes/iab/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bitrhymes/iab/util/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/bitrhymes/iab/util/Inventory;

.field private final synthetic val$listener:Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/bitrhymes/iab/util/IabResult;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/util/IabHelper$2;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Inventory;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->this$1:Lcom/bitrhymes/iab/util/IabHelper$2;

    iput-object p2, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->val$listener:Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->val$result_f:Lcom/bitrhymes/iab/util/IabResult;

    iput-object p4, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->val$inv_f:Lcom/bitrhymes/iab/util/Inventory;

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->val$listener:Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->val$result_f:Lcom/bitrhymes/iab/util/IabResult;

    iget-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper$2$1;->val$inv_f:Lcom/bitrhymes/iab/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Inventory;)V

    .line 601
    return-void
.end method

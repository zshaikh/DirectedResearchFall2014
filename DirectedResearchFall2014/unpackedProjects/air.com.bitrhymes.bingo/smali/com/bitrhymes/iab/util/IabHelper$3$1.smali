.class Lcom/bitrhymes/iab/util/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/util/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bitrhymes/iab/util/IabHelper$3;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$results:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/util/IabHelper$3;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->this$1:Lcom/bitrhymes/iab/util/IabHelper$3;

    iput-object p2, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->val$singleListener:Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;

    iput-object p3, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->val$purchases:Ljava/util/List;

    iput-object p4, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->val$results:Ljava/util/List;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 925
    iget-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->val$singleListener:Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitrhymes/iab/util/Purchase;

    iget-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/bitrhymes/iab/util/IabHelper$3$1;
    check-cast p0, Lcom/bitrhymes/iab/util/IabResult;

    invoke-interface {v1, v0, p0}, Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/bitrhymes/iab/util/Purchase;Lcom/bitrhymes/iab/util/IabResult;)V

    .line 926
    return-void
.end method

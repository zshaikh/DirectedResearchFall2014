.class Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;
.super Landroid/os/AsyncTask;
.source "AmazonPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/extensions/android/AmazonPurchaseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/ItemDataResponse;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus()[I
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->values()[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/ItemDataResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/ItemDataResponse;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    const/4 v10, 0x0

    const-string v11, "Amazon-IAP"

    .line 178
    aget-object v1, p1, v10

    .line 180
    .local v1, "itemDataResponse":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    invoke-static {}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 204
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 183
    :pswitch_0
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 190
    :pswitch_1
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v2

    .line 191
    .local v2, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 195
    iget-object v5, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v5}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onItemDataSuccess(Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0

    .line 183
    .end local v2    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    .local v4, "s":Ljava/lang/String;
    const-string v6, "Amazon-IAP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unavailable SKU:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v4    # "s":Ljava/lang/String;
    .restart local v2    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/Item;

    .line 193
    .local v0, "i":Lcom/amazon/inapp/purchasing/Item;
    const-string v6, "Amazon-IAP"

    const-string v6, "Item: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getSku()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 199
    .end local v0    # "i":Lcom/amazon/inapp/purchasing/Item;
    .end local v2    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    .end local v3    # "key":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v5}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onItemDataFailed()V

    goto/16 :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

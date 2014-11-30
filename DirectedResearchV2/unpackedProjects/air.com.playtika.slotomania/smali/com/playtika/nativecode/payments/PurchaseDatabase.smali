.class public Lcom/playtika/nativecode/payments/PurchaseDatabase;
.super Ljava/lang/Object;
.source "PurchaseDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "purchase.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final PURCHASED_COLUMNS:[Ljava/lang/String;

.field private static final PURCHASED_ITEMS_TABLE_NAME:Ljava/lang/String; = "tracking"

.field static final PURCHASED_NOTIFICATION_ID_COL:Ljava/lang/String; = "notificationId"

.field static final PURCHASED_ORDER_ID_COL:Ljava/lang/String; = "orderId"

.field static final PURCHASED_PRODUCT_ID_COL:Ljava/lang/String; = "productId"

.field static final PURCHASED_SIGNATURE:Ljava/lang/String; = "signature"

.field static final PURCHASED_SIGNED_DATA:Ljava/lang/String; = "signedData"

.field static final PURCHASED_TRANSACTION_ID_COL:Ljava/lang/String; = "transaction_id"


# instance fields
.field private mDatabaseHelper:Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 48
    const-string v2, "orderId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "productId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 49
    const-string v2, "transaction_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 50
    const-string v2, "signedData"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "signature"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;-><init>(Lcom/playtika/nativecode/payments/PurchaseDatabase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDatabaseHelper:Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;

    .line 58
    iget-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDatabaseHelper:Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    return-void
.end method

.method private getHumanFriendlyPurchasesList()Ljava/lang/String;
    .locals 14

    .prologue
    const-string v13, "}"

    const-string v10, ", "

    .line 224
    const-string v6, "{"

    .line 228
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->queryAllPurchasedItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 230
    .local v8, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_0

    .line 234
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 235
    .local v2, "isFirstMap":Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_1

    .line 267
    .end local v2    # "isFirstMap":Ljava/lang/Boolean;
    :cond_0
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "}"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    return-object v6

    .line 235
    .restart local v2    # "isFirstMap":Ljava/lang/Boolean;
    :cond_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 237
    .local v7, "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 238
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    :cond_2
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 243
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 244
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 245
    .local v1, "isFirstElement":Ljava/lang/Boolean;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 258
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_4

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    :cond_4
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 254
    .local v5, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 255
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 256
    .local v9, "value":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2

    .line 261
    .end local v1    # "isFirstElement":Ljava/lang/Boolean;
    .end local v2    # "isFirstMap":Ljava/lang/Boolean;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pairs":Ljava/util/Map$Entry;
    .end local v7    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private logStoreCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "actionLogicalStatus"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p3, :cond_0

    const-string v1, ""

    if-ne p3, v1, :cond_1

    .line 208
    :cond_0
    const-string p3, "None"

    .line 211
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "logParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "action_request"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "action_http_response_code"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "action_logical_status"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "action_response"

    invoke-direct {p0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->getHumanFriendlyPurchasesList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "LOCAL_TRANSACTION_CACHE"

    invoke-static {v1, v0}, Lcom/playtika/extensions/payments/PaymentsLogger;->Log(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 220
    return-void
.end method

.method private logStoreCacheAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "transactionId"    # Ljava/lang/String;
    .param p5, "signedData"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;
    .param p7, "insertedPosition"    # J

    .prologue
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add_transaction(orderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notificationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", productId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", transactionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", signedData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", signature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "request":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v2, p7, v2

    if-eqz v2, :cond_0

    const-string v2, "OK"

    move-object v0, v2

    .line 194
    .local v0, "logicalActionStatus":Ljava/lang/String;
    :goto_0
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p4, v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->logStoreCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 193
    .end local v0    # "logicalActionStatus":Ljava/lang/String;
    :cond_0
    const-string v2, "UNRECOVERABLE"

    move-object v0, v2

    goto :goto_0
.end method

.method private logStoreCacheRemove(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "modifiedRows"    # J
    .param p4, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove_transaction(orderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "request":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    const-string v2, "OK"

    move-object v0, v2

    .line 201
    .local v0, "logicalActionStatus":Ljava/lang/String;
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p4, v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->logStoreCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 200
    .end local v0    # "logicalActionStatus":Ljava/lang/String;
    :cond_0
    const-string v2, "UNRECOVERABLE"

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDatabaseHelper:Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;->close()V

    .line 63
    return-void
.end method

.method public getPurchaseItem(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p1, "orderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tracking"

    sget-object v2, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    const-string v3, "orderId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    move-object v0, v5

    .line 132
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const/4 v10, 0x0

    .line 116
    .local v10, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_1
    sget-object v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v9, v0, :cond_3

    move-object v10, v11

    .line 127
    .end local v9    # "i":I
    .end local v11    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    .line 132
    goto :goto_0

    .line 121
    .end local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v11    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_2
    sget-object v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 126
    .end local v9    # "i":I
    .end local v11    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 127
    :goto_2
    if-eqz v8, :cond_4

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_4
    throw v0

    .line 126
    .end local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v11    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public insertOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "transactionId"    # Ljava/lang/String;
    .param p5, "signedData"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v12, "values":Landroid/content/ContentValues;
    const-string v3, "orderId"

    invoke-virtual {v12, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "notificationId"

    invoke-virtual {v12, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "productId"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "transaction_id"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "signedData"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "signature"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tracking"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .local v10, "modifiedRows":J
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 100
    invoke-direct/range {v3 .. v11}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->logStoreCacheAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    return-void
.end method

.method public queryAllPurchasedItems()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tracking"

    sget-object v2, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 142
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    move-object v0, v3

    .line 161
    :goto_0
    return-object v0

    .line 149
    :cond_0
    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v12, "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget-object v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    if-lt v10, v0, :cond_3

    .line 153
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v10    # "i":I
    .end local v12    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 156
    if-eqz v9, :cond_2

    .line 157
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v11

    .line 161
    goto :goto_0

    .line 151
    .restart local v10    # "i":I
    .restart local v12    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    sget-object v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 155
    .end local v10    # "i":I
    .end local v12    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 156
    if-eqz v9, :cond_4

    .line 157
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_4
    throw v0
.end method

.method public removeOrder(Ljava/lang/String;)V
    .locals 9
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->getPurchaseItem(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 69
    .local v2, "storedPurchase":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 71
    iget-object v4, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tracking"

    const-string v6, "orderId=?"

    .line 72
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 71
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 74
    .local v0, "modifiedRows":J
    const-string v4, "transaction_id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, "transactionId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 78
    const-string v3, "None"

    .line 81
    :cond_0
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->logStoreCacheRemove(Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    .end local v0    # "modifiedRows":J
    .end local v3    # "transactionId":Ljava/lang/String;
    :cond_1
    return-void
.end method

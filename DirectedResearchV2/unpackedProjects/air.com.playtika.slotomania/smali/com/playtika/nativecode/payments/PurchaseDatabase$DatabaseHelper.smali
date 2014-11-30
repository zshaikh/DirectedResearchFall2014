.class Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PurchaseDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/nativecode/payments/PurchaseDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/nativecode/payments/PurchaseDatabase;


# direct methods
.method public constructor <init>(Lcom/playtika/nativecode/payments/PurchaseDatabase;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/playtika/nativecode/payments/PurchaseDatabase$DatabaseHelper;->this$0:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    .line 169
    const-string v0, "purchase.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 170
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 174
    const-string v0, "CREATE TABLE tracking(orderId TEXT PRIMARY KEY, notificationId TEXT, productId TEXT, transaction_id TEXT, signedData TEXT, signature TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 187
    return-void
.end method

.class Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SomoEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStoreHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;,
        Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;,
        Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const-string v0, "somo_apptimiser.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 270
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 274
    # getter for: Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;->EVENTS:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;
    invoke-static {}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;->access$000()Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;

    move-result-object v0

    # invokes: Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->create(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->access$100(Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 280
    # getter for: Lcom/somo/apptimiser/SomoEventStore;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoEventStore;->access$200()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v1

    const-string v2, "Database updgrade from %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 281
    const-string v0, "drop table if exists "

    .line 282
    .local v0, "DROP_TABLE_IF_EXISTS":Ljava/lang/String;
    const-string v1, "drop table if exists events"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string v1, "drop table if exists metadata"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    return-void
.end method

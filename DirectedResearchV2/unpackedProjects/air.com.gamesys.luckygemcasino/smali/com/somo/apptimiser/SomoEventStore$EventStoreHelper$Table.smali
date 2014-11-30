.class final Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;
.super Ljava/lang/Object;
.source "SomoEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table"
.end annotation


# instance fields
.field private final fields:[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

.field private final name:Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fields"    # [Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->name:Ljava/lang/String;

    .line 327
    iput-object p2, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->fields:[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;Lcom/somo/apptimiser/SomoEventStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
    .param p3, "x2"    # Lcom/somo/apptimiser/SomoEventStore$1;

    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;-><init>(Ljava/lang/String;[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;)V

    return-void
.end method

.method static synthetic access$100(Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->fields:[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string v5, "create table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;->fields:[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    .local v0, "arr$":[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 333
    .local v1, "field":Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
    # getter for: Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->access$700(Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->type:Ljava/lang/String;
    invoke-static {v1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;->access$600(Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "field":Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 337
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    return-void
.end method

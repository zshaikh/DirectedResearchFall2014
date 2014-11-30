.class final Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;
.super Ljava/lang/Object;
.source "SomoEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Database"
.end annotation


# static fields
.field private static final EVENTS:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;

.field private static final TABLE_EVENTS:Ljava/lang/String; = "events"

.field private static final TABLE_META:Ljava/lang/String; = "metadata"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 293
    new-instance v0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;

    const-string v1, "events"

    invoke-static {}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;->getEventTableColumns()[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;-><init>(Ljava/lang/String;[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;Lcom/somo/apptimiser/SomoEventStore$1;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;->EVENTS:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Database;->EVENTS:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Table;

    return-object v0
.end method

.method private static final getEventTableColumns()[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 297
    invoke-static {}, Lcom/somo/apptimiser/SomoEvent$EventFields;->values()[Lcom/somo/apptimiser/SomoEvent$EventFields;

    move-result-object v3

    .line 298
    .local v3, "eventColumns":[Lcom/somo/apptimiser/SomoEvent$EventFields;
    array-length v8, v3

    add-int/lit8 v8, v8, 0x1

    new-array v1, v8, [Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    .line 299
    .local v1, "columns":[Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;
    const/4 v6, 0x0

    .line 300
    .local v6, "pos":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    new-instance v8, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    const-string v9, "_id"

    const-string v10, "integer primary key autoincrement not null"

    invoke-direct {v8, v9, v10, v11}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/somo/apptimiser/SomoEventStore$1;)V

    aput-object v8, v1, v6

    .line 303
    move-object v0, v3

    .local v0, "arr$":[Lcom/somo/apptimiser/SomoEvent$EventFields;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 304
    .local v2, "eventCol":Lcom/somo/apptimiser/SomoEvent$EventFields;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    new-instance v8, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper$Column;-><init>(Ljava/lang/String;Lcom/somo/apptimiser/SomoEventStore$1;)V

    aput-object v8, v1, v7

    .line 303
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_0

    .line 306
    .end local v2    # "eventCol":Lcom/somo/apptimiser/SomoEvent$EventFields;
    :cond_0
    return-object v1
.end method

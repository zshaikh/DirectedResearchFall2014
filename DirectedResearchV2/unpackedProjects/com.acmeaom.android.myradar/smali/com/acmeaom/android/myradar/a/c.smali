.class public Lcom/acmeaom/android/myradar/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/acmeaom/android/myradar/a/c;


# instance fields
.field private final d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "featureId"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developerPayload"

    aput-object v2, v0, v1

    sput-object v0, Lcom/acmeaom/android/myradar/a/c;->a:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quantity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/acmeaom/android/myradar/a/c;->b:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/acmeaom/android/myradar/a/c;->c:Lcom/acmeaom/android/myradar/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/acmeaom/android/myradar/a/d;

    invoke-direct {v0, p1}, Lcom/acmeaom/android/myradar/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/acmeaom/android/myradar/a/c;
    .locals 3

    .prologue
    .line 76
    const-class v1, Lcom/acmeaom/android/myradar/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/acmeaom/android/myradar/a/c;->c:Lcom/acmeaom/android/myradar/a/c;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/acmeaom/android/myradar/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/acmeaom/android/myradar/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/acmeaom/android/myradar/a/c;->c:Lcom/acmeaom/android/myradar/a/c;

    .line 79
    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/a/c;->c:Lcom/acmeaom/android/myradar/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 117
    if-gez p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "quantity"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "featureId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "state"

    invoke-virtual {p3}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 107
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)I
    .locals 9

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/acmeaom/android/myradar/a/c;->b(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    sget-object v2, Lcom/acmeaom/android/myradar/a/c;->a:[Ljava/lang/String;

    const-string v3, "featureId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 147
    if-nez v1, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 173
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    .line 153
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 154
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 155
    invoke-static {v2}, Lcom/android/vending/billing/h;->a(I)Lcom/android/vending/billing/h;

    move-result-object v2

    .line 156
    sget-object v3, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    if-ne v2, v3, :cond_3

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_3
    sget-object v3, Lcom/android/vending/billing/h;->c:Lcom/android/vending/billing/h;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    if-ne v2, v3, :cond_2

    .line 159
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, p2, v2}, Lcom/acmeaom/android/myradar/a/c;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 169
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_6
    if-lez v0, :cond_7

    .line 165
    :try_start_3
    invoke-direct {p0, p2, v0}, Lcom/acmeaom/android/myradar/a/c;->a(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :cond_7
    if-eqz v1, :cond_0

    .line 169
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public a()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    sget-object v2, Lcom/acmeaom/android/myradar/a/c;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/android/vending/billing/h;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    sget-object v2, Lcom/acmeaom/android/myradar/a/c;->a:[Ljava/lang/String;

    const-string v3, "_id = ? AND state = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

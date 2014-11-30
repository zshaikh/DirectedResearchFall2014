.class public Lcom/appoxee/inbox/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "appoxee_inbox.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private dotDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appoxee/inbox/Message;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "appoxee_inbox.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getMessageDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appoxee/inbox/Message;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/appoxee/inbox/DatabaseHelper;->dotDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 49
    :try_start_0
    const-class v1, Lcom/appoxee/inbox/Message;

    invoke-virtual {p0, v1}, Lcom/appoxee/inbox/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/inbox/DatabaseHelper;->dotDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/appoxee/inbox/DatabaseHelper;->dotDao:Lcom/j256/ormlite/dao/Dao;

    return-object v1

    .line 50
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, "e":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    .prologue
    .line 28
    :try_start_0
    const-class v1, Lcom/appoxee/inbox/Message;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 30
    .local v0, "e":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .prologue
    .line 37
    :try_start_0
    const-class v1, Lcom/appoxee/inbox/Message;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/appoxee/inbox/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, "e":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

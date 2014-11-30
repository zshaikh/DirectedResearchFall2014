.class Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a(JI)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->d:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    iput-object p2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 332
    const-string v1, "request"

    const-string v3, "_id >= ?"

    iget-object v4, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->a:[Ljava/lang/String;

    const-string v7, "_id"

    iget-object v8, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->b:Ljava/lang/String;

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 334
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$RequestTable;->readRow(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 340
    return-object v2
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

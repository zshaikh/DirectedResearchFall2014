.class Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$RequestTable;,
        Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v1, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$a;-><init>(Landroid/content/Context;Lcom/pocketchange/android/http/AsyncHttpRequestService$1;)V

    invoke-direct {v0, v1}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    .line 304
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)J
    .locals 3

    .prologue
    .line 307
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 308
    const-string v1, "host_json"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "request_line_json"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "headers_json"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "failure_count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    if-eqz p4, :cond_0

    .line 313
    const-string v1, "body"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v2, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;

    invoke-direct {v2, p0, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 328
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 329
    if-lez p3, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v4, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$2;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    .line 343
    return-object v0

    .line 329
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 347
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 348
    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v2, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;

    invoke-direct {v2, p0, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public b(J)Z
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 358
    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a:Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;

    new-instance v2, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;

    invoke-direct {v2, p0, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper;->execute(Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

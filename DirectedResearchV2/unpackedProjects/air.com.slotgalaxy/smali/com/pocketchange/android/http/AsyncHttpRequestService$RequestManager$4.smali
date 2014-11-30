.class Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->b(J)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    iput-object p2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 360
    const-string v0, "request"

    const-string v1, "_id = ?"

    iget-object v2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$4;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

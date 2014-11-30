.class Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)J
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    iput-object p2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;->a:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 3

    .prologue
    .line 317
    const-string v0, "request"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;->a:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$1;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

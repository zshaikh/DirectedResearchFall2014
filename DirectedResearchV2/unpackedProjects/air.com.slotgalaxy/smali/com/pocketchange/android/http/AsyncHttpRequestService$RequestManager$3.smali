.class Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/sqlite/SQLiteConnectionHelper$StatementBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a(J)V
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
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    iput-object p2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 350
    const-string v0, "update request set failure_count = failure_count+1 where _id = ?"

    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;->a:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic withDatabase(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$3;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.class Lcom/pocketchange/android/util/AsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/util/AsyncTask;->execute(Ljava/util/concurrent/Executor;)Lcom/pocketchange/android/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/util/AsyncTask;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/util/AsyncTask;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pocketchange/android/util/AsyncTask$1;->a:Lcom/pocketchange/android/util/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pocketchange/android/util/AsyncTask$1;->a:Lcom/pocketchange/android/util/AsyncTask;

    invoke-virtual {v0}, Lcom/pocketchange/android/util/AsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

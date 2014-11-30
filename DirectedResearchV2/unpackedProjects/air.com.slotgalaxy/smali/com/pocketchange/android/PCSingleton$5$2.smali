.class Lcom/pocketchange/android/PCSingleton$5$2;
.super Lcom/pocketchange/android/util/ExceptionLoggingRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$5;->offer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/pocketchange/android/PCSingleton$5;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$5;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$5$2;->b:Lcom/pocketchange/android/PCSingleton$5;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$5$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5$2;->b:Lcom/pocketchange/android/PCSingleton$5;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "PROCESS_PENDING_REWARDS"

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/OperationQueue;->remove(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5$2;->b:Lcom/pocketchange/android/PCSingleton$5;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$5$2;->b:Lcom/pocketchange/android/PCSingleton$5;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$5;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->i()V

    .line 1065
    :cond_0
    return-void
.end method

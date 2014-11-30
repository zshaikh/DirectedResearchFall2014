.class Lcom/pocketchange/android/PCSingleton$19$2;
.super Lcom/pocketchange/android/util/ExceptionLoggingRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$19;->offer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/pocketchange/android/PCSingleton$19;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$19;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$19$2;->b:Lcom/pocketchange/android/PCSingleton$19;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$19$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$2;->b:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v1, "PROCESS_PENDING_APP_EVENTS"

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/OperationQueue;->remove(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$2;->b:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$2;->b:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->a(Z)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$19$2;->b:Lcom/pocketchange/android/PCSingleton$19;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$19;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->f()V

    goto :goto_0
.end method

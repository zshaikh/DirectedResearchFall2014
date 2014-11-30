.class Lcom/pocketchange/android/PCSingleton$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$a;->runWithErrors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/pocketchange/android/PCSingleton$a;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$a$2;->b:Lcom/pocketchange/android/PCSingleton$a;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$a$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1563
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a$2;->b:Lcom/pocketchange/android/PCSingleton$a;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1564
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$a$2;->b:Lcom/pocketchange/android/PCSingleton$a;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$a;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->b(Z)V

    .line 1567
    :cond_0
    return-void
.end method

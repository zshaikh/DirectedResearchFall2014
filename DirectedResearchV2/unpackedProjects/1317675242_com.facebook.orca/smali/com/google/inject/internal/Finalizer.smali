.class public Lcom/google/inject/internal/Finalizer;
.super Ljava/lang/Thread;
.source "Finalizer.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final frqReference:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/google/inject/internal/Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private cleanUp(Ljava/lang/ref/Reference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/inject/internal/Finalizer;->getFinalizeReferentMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, p1

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 132
    iget-object v2, p0, Lcom/google/inject/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    if-ne v1, v2, :cond_1

    .line 137
    new-instance v0, Lcom/google/inject/internal/Finalizer$ShutDown;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Finalizer$ShutDown;-><init>(Lcom/google/inject/internal/Finalizer$1;)V

    throw v0

    .line 141
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/google/inject/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    sget-object v2, Lcom/google/inject/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFinalizeReferentMethod()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/inject/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 159
    if-nez p0, :cond_0

    .line 168
    new-instance v0, Lcom/google/inject/internal/Finalizer$ShutDown;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Finalizer$ShutDown;-><init>(Lcom/google/inject/internal/Finalizer$1;)V

    throw v0

    .line 171
    :cond_0
    :try_start_0
    const-string v0, "finalizeReferent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/internal/Finalizer;->cleanUp(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/inject/internal/Finalizer$ShutDown; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    return-void
.end method

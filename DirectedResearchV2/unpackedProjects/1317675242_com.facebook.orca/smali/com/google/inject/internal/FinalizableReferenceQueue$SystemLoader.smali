.class Lcom/google/inject/internal/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/google/inject/internal/FinalizableReferenceQueue$FinalizerLoader;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 206
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 213
    :try_start_1
    const-string v1, "com.google.inject.internal.Finalizer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    # getter for: Lcom/google/inject/internal/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/inject/internal/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Not allowed to access system class loader."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v0, v2

    .line 209
    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 216
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 219
    goto :goto_0
.end method

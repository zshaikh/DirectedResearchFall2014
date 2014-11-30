.class final Lcom/google/inject/internal/BytecodeGen$1;
.super Ljava/lang/Object;
.source "BytecodeGen.java"

# interfaces
.implements Lcom/google/inject/internal/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/Function",
        "<",
        "Ljava/lang/ClassLoader;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 3
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    # getter for: Lcom/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/inject/internal/BytecodeGen;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a bridge ClassLoader for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/google/inject/internal/BytecodeGen$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/BytecodeGen$1$1;-><init>(Lcom/google/inject/internal/BytecodeGen$1;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BytecodeGen$1;->apply(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

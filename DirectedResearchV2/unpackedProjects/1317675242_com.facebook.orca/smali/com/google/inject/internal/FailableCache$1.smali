.class Lcom/google/inject/internal/FailableCache$1;
.super Ljava/lang/Object;
.source "FailableCache.java"

# interfaces
.implements Lcom/google/inject/internal/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/Function",
        "<TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/FailableCache;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/FailableCache;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/inject/internal/FailableCache$1;->this$0:Lcom/google/inject/internal/FailableCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 33
    const/4 v1, 0x0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/google/inject/internal/FailableCache$1;->this$0:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v2, p1, v0}, Lcom/google/inject/internal/FailableCache;->create(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {v2}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 39
    goto :goto_1
.end method

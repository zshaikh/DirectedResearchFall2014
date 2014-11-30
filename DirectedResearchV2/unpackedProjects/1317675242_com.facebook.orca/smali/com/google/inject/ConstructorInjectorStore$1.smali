.class Lcom/google/inject/ConstructorInjectorStore$1;
.super Lcom/google/inject/internal/FailableCache;
.source "ConstructorInjectorStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/FailableCache",
        "<",
        "Lcom/google/inject/TypeLiteral",
        "<*>;",
        "Lcom/google/inject/ConstructorInjector",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/ConstructorInjectorStore;


# direct methods
.method constructor <init>(Lcom/google/inject/ConstructorInjectorStore;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/inject/ConstructorInjectorStore$1;->this$0:Lcom/google/inject/ConstructorInjectorStore;

    invoke-direct {p0}, Lcom/google/inject/internal/FailableCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/ConstructorInjector",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/inject/ConstructorInjectorStore$1;->this$0:Lcom/google/inject/ConstructorInjectorStore;

    # invokes: Lcom/google/inject/ConstructorInjectorStore;->createConstructor(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;
    invoke-static {v0, p1, p2}, Lcom/google/inject/ConstructorInjectorStore;->access$000(Lcom/google/inject/ConstructorInjectorStore;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/google/inject/TypeLiteral;

    invoke-virtual {p0, p1, p2}, Lcom/google/inject/ConstructorInjectorStore$1;->create(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;

    move-result-object v0

    return-object v0
.end method

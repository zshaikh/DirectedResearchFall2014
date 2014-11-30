.class Lcom/google/inject/MembersInjectorStore$1;
.super Lcom/google/inject/internal/FailableCache;
.source "MembersInjectorStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/FailableCache",
        "<",
        "Lcom/google/inject/TypeLiteral",
        "<*>;",
        "Lcom/google/inject/MembersInjectorImpl",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/MembersInjectorStore;


# direct methods
.method constructor <init>(Lcom/google/inject/MembersInjectorStore;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/inject/MembersInjectorStore$1;->this$0:Lcom/google/inject/MembersInjectorStore;

    invoke-direct {p0}, Lcom/google/inject/internal/FailableCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/MembersInjectorImpl",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/inject/MembersInjectorStore$1;->this$0:Lcom/google/inject/MembersInjectorStore;

    # invokes: Lcom/google/inject/MembersInjectorStore;->createWithListeners(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;
    invoke-static {v0, p1, p2}, Lcom/google/inject/MembersInjectorStore;->access$000(Lcom/google/inject/MembersInjectorStore;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/google/inject/TypeLiteral;

    invoke-virtual {p0, p1, p2}, Lcom/google/inject/MembersInjectorStore$1;->create(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v0

    return-object v0
.end method

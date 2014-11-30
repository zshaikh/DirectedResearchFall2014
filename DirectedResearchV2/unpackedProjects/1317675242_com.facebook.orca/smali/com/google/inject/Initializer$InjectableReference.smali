.class Lcom/google/inject/Initializer$InjectableReference;
.super Ljava/lang/Object;
.source "Initializer.java"

# interfaces
.implements Lcom/google/inject/Initializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Initializable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private membersInjector:Lcom/google/inject/MembersInjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/MembersInjectorImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/inject/Initializer;


# direct methods
.method public constructor <init>(Lcom/google/inject/Initializer;Lcom/google/inject/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/inject/Initializer$InjectableReference;->this$0:Lcom/google/inject/Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/google/inject/Initializer$InjectableReference;->injector:Lcom/google/inject/InjectorImpl;

    .line 113
    const-string v0, "instance"

    invoke-static {p3, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    .line 114
    const-string v0, "source"

    invoke-static {p4, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->source:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->this$0:Lcom/google/inject/Initializer;

    # getter for: Lcom/google/inject/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/google/inject/Initializer;->access$000(Lcom/google/inject/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    .line 148
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/Initializer$InjectableReference;->this$0:Lcom/google/inject/Initializer;

    # getter for: Lcom/google/inject/Initializer;->creatingThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/google/inject/Initializer;->access$100(Lcom/google/inject/Initializer;)Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->this$0:Lcom/google/inject/Initializer;

    # getter for: Lcom/google/inject/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/google/inject/Initializer;->access$000(Lcom/google/inject/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 136
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->this$0:Lcom/google/inject/Initializer;

    # getter for: Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/inject/Initializer;->access$200(Lcom/google/inject/Initializer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->membersInjector:Lcom/google/inject/MembersInjectorImpl;

    iget-object v1, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/inject/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/inject/Initializer$InjectableReference;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    iget-object v2, p0, Lcom/google/inject/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Initializer$InjectableReference;->membersInjector:Lcom/google/inject/MembersInjectorImpl;

    .line 121
    return-void
.end method

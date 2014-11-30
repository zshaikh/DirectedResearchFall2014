.class Lcom/google/inject/InjectorShell$RootModule;
.super Ljava/lang/Object;
.source "InjectorShell.java"

# interfaces
.implements Lcom/google/inject/Module;


# instance fields
.field final stage:Lcom/google/inject/Stage;


# direct methods
.method private constructor <init>(Lcom/google/inject/Stage;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const-string v0, "stage"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/InjectorShell$RootModule;->stage:Lcom/google/inject/Stage;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Stage;Lcom/google/inject/InjectorShell$1;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/google/inject/InjectorShell$RootModule;-><init>(Lcom/google/inject/Stage;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/inject/Binder;)V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    .line 257
    const-class v1, Lcom/google/inject/Stage;

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/InjectorShell$RootModule;->stage:Lcom/google/inject/Stage;

    invoke-interface {v1, v2}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 258
    const-class v1, Lcom/google/inject/Singleton;

    sget-object v2, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    .line 259
    return-void
.end method

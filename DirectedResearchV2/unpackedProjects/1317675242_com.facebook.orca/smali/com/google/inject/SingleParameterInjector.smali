.class Lcom/google/inject/SingleParameterInjector;
.super Ljava/lang/Object;
.source "SingleParameterInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field private final dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/inject/SingleParameterInjector;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/InternalFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/inject/SingleParameterInjector;->dependency:Lcom/google/inject/spi/Dependency;

    .line 36
    iput-object p2, p0, Lcom/google/inject/SingleParameterInjector;->factory:Lcom/google/inject/internal/InternalFactory;

    .line 37
    return-void
.end method

.method static getAll(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;[Lcom/google/inject/SingleParameterInjector;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "[",
            "Lcom/google/inject/SingleParameterInjector",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    sget-object v0, Lcom/google/inject/SingleParameterInjector;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 73
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 59
    array-length v1, p2

    .line 60
    new-array v2, v1, [Ljava/lang/Object;

    .line 63
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 64
    aget-object v4, p2, v3

    .line 66
    :try_start_0
    invoke-direct {v4, p0, p1}, Lcom/google/inject/SingleParameterInjector;->inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    :catch_0
    move-exception v4

    .line 68
    invoke-virtual {v4}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    move-object v0, v2

    .line 73
    goto :goto_0
.end method

.method private inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/google/inject/SingleParameterInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p2, v0}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/SingleParameterInjector;->factory:Lcom/google/inject/internal/InternalFactory;

    iget-object v1, p0, Lcom/google/inject/SingleParameterInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/SingleParameterInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-interface {v0, v1, p2, v2}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    invoke-virtual {p2, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v3}, Lcom/google/inject/internal/InternalContext;->setDependency(Lcom/google/inject/spi/Dependency;)V

    throw v0
.end method

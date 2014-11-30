.class Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;

.field private final b:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/google/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 529
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;->b:Lcom/google/inject/Provider;

    .line 531
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/google/inject/Provider;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/google/inject/Provider;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;->b:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;->c:Ljava/lang/Object;

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$SingletonProvider;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/pocketchange/android/util/SingletonFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private volatile c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pocketchange/android/util/SingletonFactory;-><init>([Ljava/lang/Class;)V

    .line 12
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    .local p1, "constructorParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/pocketchange/android/util/SingletonFactory;->a:[Ljava/lang/Class;

    .line 16
    return-void
.end method


# virtual methods
.method public varargs getInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    iget-object v0, p0, Lcom/pocketchange/android/util/SingletonFactory;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/util/SingletonFactory;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/pocketchange/android/util/SingletonFactory;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/pocketchange/android/util/SingletonFactory;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/util/SingletonFactory;->c:Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/pocketchange/android/util/SingletonFactory;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/pocketchange/android/util/SingletonFactory;->onCreateInstance(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 57
    :cond_1
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected onCreateInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onDestroyInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public setImplClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 19
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pocketchange/android/util/SingletonFactory;->setImplementation(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method protected setImplementation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/util/SingletonFactory;->c:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/pocketchange/android/util/SingletonFactory;->c:Ljava/lang/Object;

    .line 31
    if-eqz p2, :cond_0

    .line 32
    iput-object p2, p0, Lcom/pocketchange/android/util/SingletonFactory;->b:Ljava/lang/String;

    .line 34
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/util/SingletonFactory;->onDestroyInstance(Ljava/lang/Object;)V

    .line 38
    :cond_1
    return-void

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/pocketchange/android/util/SingletonFactory;, "Lcom/pocketchange/android/util/SingletonFactory<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/util/SingletonFactory;->setImplementation(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-void
.end method

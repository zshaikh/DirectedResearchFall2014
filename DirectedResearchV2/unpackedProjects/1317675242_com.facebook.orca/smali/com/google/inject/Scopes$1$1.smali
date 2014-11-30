.class Lcom/google/inject/Scopes$1$1;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/Scopes$1;

.field final synthetic val$creator:Lcom/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/google/inject/Scopes$1;Lcom/google/inject/Provider;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/inject/Scopes$1$1;->this$0:Lcom/google/inject/Scopes$1;

    iput-object p2, p0, Lcom/google/inject/Scopes$1$1;->val$creator:Lcom/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/google/inject/InjectorImpl;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/inject/Scopes$1$1;->val$creator:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    return-object v0

    .line 56
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string v0, "%s[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/inject/Scopes$1$1;->val$creator:Lcom/google/inject/Provider;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

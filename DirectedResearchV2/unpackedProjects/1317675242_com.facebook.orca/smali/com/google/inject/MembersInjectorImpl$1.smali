.class Lcom/google/inject/MembersInjectorImpl$1;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/google/inject/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/ContextualCallable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/MembersInjectorImpl;

.field final synthetic val$errors:Lcom/google/inject/internal/Errors;

.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/inject/MembersInjectorImpl;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/inject/MembersInjectorImpl$1;->this$0:Lcom/google/inject/MembersInjectorImpl;

    iput-object p2, p0, Lcom/google/inject/MembersInjectorImpl$1;->val$instance:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/inject/MembersInjectorImpl$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/inject/MembersInjectorImpl$1;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl$1;->this$0:Lcom/google/inject/MembersInjectorImpl;

    iget-object v1, p0, Lcom/google/inject/MembersInjectorImpl$1;->val$instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/inject/MembersInjectorImpl$1;->val$errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/inject/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;)V

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

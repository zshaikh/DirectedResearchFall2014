.class Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;
.super Ljava/lang/Object;
.source "InjectionRequestProcessor.java"

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
.field final synthetic this$1:Lcom/google/inject/InjectionRequestProcessor$StaticInjection;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectionRequestProcessor$StaticInjection;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;->this$1:Lcom/google/inject/InjectionRequestProcessor$StaticInjection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;->this$1:Lcom/google/inject/InjectionRequestProcessor$StaticInjection;

    iget-object v0, v0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/SingleMemberInjector;

    .line 109
    iget-object v2, p0, Lcom/google/inject/InjectionRequestProcessor$StaticInjection$1;->this$1:Lcom/google/inject/InjectionRequestProcessor$StaticInjection;

    iget-object v2, v2, Lcom/google/inject/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/InjectionRequestProcessor;

    iget-object v2, v2, Lcom/google/inject/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-interface {v0, v2, p1, v3}, Lcom/google/inject/SingleMemberInjector;->inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    return-object v3
.end method

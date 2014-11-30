.class Lcom/google/inject/BindingProcessor$1$1;
.super Ljava/lang/Object;
.source "BindingProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/inject/BindingProcessor$1;

.field final synthetic val$binding:Lcom/google/inject/internal/BindingImpl;


# direct methods
.method constructor <init>(Lcom/google/inject/BindingProcessor$1;Lcom/google/inject/internal/BindingImpl;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/inject/BindingProcessor$1$1;->this$1:Lcom/google/inject/BindingProcessor$1;

    iput-object p2, p0, Lcom/google/inject/BindingProcessor$1$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/BindingProcessor$1$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getInjector()Lcom/google/inject/Injector;

    move-result-object v0

    check-cast v0, Lcom/google/inject/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1$1;->val$binding:Lcom/google/inject/internal/BindingImpl;

    iget-object v2, p0, Lcom/google/inject/BindingProcessor$1$1;->this$1:Lcom/google/inject/BindingProcessor$1;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    iget-object v3, p0, Lcom/google/inject/BindingProcessor$1$1;->this$1:Lcom/google/inject/BindingProcessor$1;

    iget-object v3, v3, Lcom/google/inject/BindingProcessor$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/InjectorImpl;->initializeBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/google/inject/BindingProcessor$1$1;->this$1:Lcom/google/inject/BindingProcessor$1;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor$1;->this$0:Lcom/google/inject/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

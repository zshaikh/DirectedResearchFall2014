.class Lcom/google/inject/SingleMethodInjector$1;
.super Ljava/lang/Object;
.source "SingleMethodInjector.java"

# interfaces
.implements Lcom/google/inject/InjectorImpl$MethodInvoker;


# instance fields
.field final synthetic this$0:Lcom/google/inject/SingleMethodInjector;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/inject/SingleMethodInjector;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/inject/SingleMethodInjector$1;->this$0:Lcom/google/inject/SingleMethodInjector;

    iput-object p2, p0, Lcom/google/inject/SingleMethodInjector$1;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/inject/SingleMethodInjector$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

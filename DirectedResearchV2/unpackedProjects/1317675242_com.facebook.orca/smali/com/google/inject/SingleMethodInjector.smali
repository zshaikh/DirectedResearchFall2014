.class Lcom/google/inject/SingleMethodInjector;
.super Ljava/lang/Object;
.source "SingleMethodInjector.java"

# interfaces
.implements Lcom/google/inject/SingleMemberInjector;


# instance fields
.field final injectionPoint:Lcom/google/inject/spi/InjectionPoint;

.field final methodInvoker:Lcom/google/inject/InjectorImpl$MethodInvoker;

.field final parameterInjectors:[Lcom/google/inject/SingleParameterInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/inject/SingleParameterInjector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/google/inject/SingleMethodInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 41
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 42
    invoke-direct {p0, v0}, Lcom/google/inject/SingleMethodInjector;->createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/google/inject/InjectorImpl$MethodInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/SingleMethodInjector;->methodInvoker:Lcom/google/inject/InjectorImpl$MethodInvoker;

    .line 43
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/inject/InjectorImpl;->getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/SingleParameterInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/SingleMethodInjector;->parameterInjectors:[Lcom/google/inject/SingleParameterInjector;

    .line 44
    return-void
.end method

.method private createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/google/inject/InjectorImpl$MethodInvoker;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    :cond_1
    new-instance v0, Lcom/google/inject/SingleMethodInjector$1;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/SingleMethodInjector$1;-><init>(Lcom/google/inject/SingleMethodInjector;Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/inject/SingleMethodInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/SingleMethodInjector;->parameterInjectors:[Lcom/google/inject/SingleParameterInjector;

    invoke-static {p1, p2, v0}, Lcom/google/inject/SingleParameterInjector;->getAll(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;[Lcom/google/inject/SingleParameterInjector;)[Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/google/inject/SingleMethodInjector;->methodInvoker:Lcom/google/inject/InjectorImpl$MethodInvoker;

    invoke-interface {v1, p3, v0}, Lcom/google/inject/InjectorImpl$MethodInvoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 100
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 94
    :catch_2
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/google/inject/SingleMethodInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->errorInjectingMethod(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

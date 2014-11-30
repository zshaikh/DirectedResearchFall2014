.class Lcom/google/inject/BindingProcessor;
.super Lcom/google/inject/AbstractProcessor;
.source "BindingProcessor.java"


# static fields
.field private static final FORBIDDEN_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final creationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/BindingProcessor$CreationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final initializer:Lcom/google/inject/Initializer;

.field private final uninitializedBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 272
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/google/inject/AbstractModule;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/inject/Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/inject/Binding;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/inject/Injector;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/google/inject/Key;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/inject/MembersInjector;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/google/inject/Module;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/google/inject/Provider;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/google/inject/Scope;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/google/inject/TypeLiteral;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->of([Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/inject/BindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Initializer;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/inject/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 57
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/BindingProcessor;->creationListeners:Ljava/util/List;

    .line 59
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/BindingProcessor;->uninitializedBindings:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/google/inject/BindingProcessor;->initializer:Lcom/google/inject/Initializer;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/BindingProcessor;)Lcom/google/inject/Initializer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->initializer:Lcom/google/inject/Initializer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/BindingProcessor;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->creationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/inject/BindingProcessor;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->uninitializedBindings:Ljava/util/List;

    return-object v0
.end method

.method private bindExposed(Lcom/google/inject/spi/PrivateElements;Lcom/google/inject/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/PrivateElements;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v4, Lcom/google/inject/ExposedKeyFactory;

    invoke-direct {v4, p2, p1}, Lcom/google/inject/ExposedKeyFactory;-><init>(Lcom/google/inject/Key;Lcom/google/inject/spi/PrivateElements;)V

    .line 209
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->creationListeners:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Lcom/google/inject/internal/ExposedBindingImpl;

    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    invoke-interface {p1, p2}, Lcom/google/inject/spi/PrivateElements;->getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ExposedBindingImpl;-><init>(Lcom/google/inject/Injector;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/spi/PrivateElements;)V

    invoke-direct {p0, v0}, Lcom/google/inject/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 212
    return-void
.end method

.method private isOkayDuplicate(Lcom/google/inject/Binding;Lcom/google/inject/internal/BindingImpl;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 261
    instance-of v0, p1, Lcom/google/inject/internal/ExposedBindingImpl;

    if-eqz v0, :cond_1

    .line 262
    check-cast p1, Lcom/google/inject/internal/ExposedBindingImpl;

    .line 263
    invoke-virtual {p1}, Lcom/google/inject/internal/ExposedBindingImpl;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object p0

    check-cast p0, Lcom/google/inject/InjectorImpl;

    .line 264
    invoke-virtual {p2}, Lcom/google/inject/internal/BindingImpl;->getInjector()Lcom/google/inject/Injector;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 264
    goto :goto_0

    :cond_1
    move v0, v1

    .line 266
    goto :goto_0
.end method

.method private putBinding(Lcom/google/inject/internal/BindingImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/google/inject/Key;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 238
    sget-object v2, Lcom/google/inject/BindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->cannotBindToGuiceType(Ljava/lang/String;)Lcom/google/inject/internal/Errors;

    .line 252
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1, v0}, Lcom/google/inject/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/google/inject/BindingProcessor;->isOkayDuplicate(Lcom/google/inject/Binding;Lcom/google/inject/internal/BindingImpl;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-interface {v1}, Lcom/google/inject/Binding;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/inject/internal/Errors;->bindingAlreadySet(Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1}, Lcom/google/inject/State;->parent()Lcom/google/inject/State;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/inject/State;->blacklist(Lcom/google/inject/Key;)V

    .line 251
    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1, v0, p1}, Lcom/google/inject/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p2}, Lcom/google/inject/Key;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-static {v0, p1, v1}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 216
    return-void
.end method


# virtual methods
.method public initializeBindings()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->uninitializedBindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    .line 224
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method invalidBinding(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/UntargettedBindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/inject/internal/UntargettedBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;)V

    return-object v0
.end method

.method public runCreationListeners()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/inject/BindingProcessor;->creationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/BindingProcessor$CreationListener;

    .line 230
    iget-object v2, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-interface {v0, v2}, Lcom/google/inject/BindingProcessor$CreationListener;->notify(Lcom/google/inject/internal/Errors;)V

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 67
    invoke-interface {p1}, Lcom/google/inject/Binding;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 69
    const-class v1, Ljava/lang/Void;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/Key;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    instance-of v1, p1, Lcom/google/inject/spi/ProviderInstanceBinding;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/inject/spi/ProviderInstanceBinding;

    invoke-interface {p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getProviderInstance()Lcom/google/inject/Provider;

    move-result-object v1

    instance-of v1, v1, Lcom/google/inject/internal/ProviderMethod;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->voidProviderMethod()Lcom/google/inject/internal/Errors;

    .line 76
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 197
    :goto_1
    return-object v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->missingConstantValues()Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 82
    const-class v4, Lcom/google/inject/Provider;

    if-ne v1, v4, :cond_2

    .line 83
    iget-object v1, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->bindingToProvider()Lcom/google/inject/internal/Errors;

    .line 84
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_2
    invoke-interface {p1}, Lcom/google/inject/Binding;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/google/inject/BindingProcessor;->validateKey(Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/google/inject/internal/BindingImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v1

    iget-object v4, p0, Lcom/google/inject/BindingProcessor;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v5, p0, Lcom/google/inject/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-static {v1, v4, v5}, Lcom/google/inject/Scopes;->makeInjectable(Lcom/google/inject/internal/Scoping;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Scoping;

    move-result-object v1

    .line 92
    new-instance v4, Lcom/google/inject/BindingProcessor$1;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/google/inject/BindingProcessor$1;-><init>(Lcom/google/inject/BindingProcessor;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    invoke-interface {p1, v4}, Lcom/google/inject/Binding;->acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;

    .line 197
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 201
    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/google/inject/BindingProcessor;->bindExposed(Lcom/google/inject/spi/PrivateElements;Lcom/google/inject/Key;)V

    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/inject/BindingProcessor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

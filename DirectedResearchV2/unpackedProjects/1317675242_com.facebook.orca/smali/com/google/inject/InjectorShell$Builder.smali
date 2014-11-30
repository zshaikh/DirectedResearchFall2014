.class Lcom/google/inject/InjectorShell$Builder;
.super Ljava/lang/Object;
.source "InjectorShell.java"


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/inject/InjectorImpl;

.field private privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

.field private stage:Lcom/google/inject/Stage;

.field private state:Lcom/google/inject/State;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    .line 74
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->modules:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/InjectorShell$Builder;)Lcom/google/inject/internal/PrivateElementsImpl;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    return-object v0
.end method

.method private getState()Lcom/google/inject/State;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->state:Lcom/google/inject/State;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/google/inject/InheritingState;

    sget-object v1, Lcom/google/inject/State;->NONE:Lcom/google/inject/State;

    invoke-direct {v0, v1}, Lcom/google/inject/InheritingState;-><init>(Lcom/google/inject/State;)V

    iput-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->state:Lcom/google/inject/State;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->state:Lcom/google/inject/State;

    return-object v0
.end method


# virtual methods
.method addModules(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Module;

    .line 104
    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->modules:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method build(Lcom/google/inject/Initializer;Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/Stopwatch;Lcom/google/inject/internal/Errors;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Initializer;",
            "Lcom/google/inject/BindingProcessor;",
            "Lcom/google/inject/internal/Stopwatch;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/InjectorShell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    const-string v1, "Stage not initialized"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->parent:Lcom/google/inject/InjectorImpl;

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    const-string v1, "PrivateElements with no parent"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->state:Lcom/google/inject/State;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    const-string v1, "no state. Did you remember to lock() ?"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 124
    new-instance v0, Lcom/google/inject/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->parent:Lcom/google/inject/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->state:Lcom/google/inject/State;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/inject/InjectorImpl;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/State;Lcom/google/inject/Initializer;)V

    .line 125
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/PrivateElementsImpl;->initInjector(Lcom/google/inject/Injector;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->parent:Lcom/google/inject/InjectorImpl;

    if-nez v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->modules:Ljava/util/List;

    new-instance v2, Lcom/google/inject/InjectorShell$RootModule;

    iget-object v3, p0, Lcom/google/inject/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    invoke-direct {v2, v3, v5}, Lcom/google/inject/InjectorShell$RootModule;-><init>(Lcom/google/inject/Stage;Lcom/google/inject/InjectorShell$1;)V

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    new-instance v1, Lcom/google/inject/TypeConverterBindingProcessor;

    invoke-direct {v1, p4}, Lcom/google/inject/TypeConverterBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    invoke-virtual {v1, v0}, Lcom/google/inject/TypeConverterBindingProcessor;->prepareBuiltInConverters(Lcom/google/inject/InjectorImpl;)V

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    iget-object v3, p0, Lcom/google/inject/InjectorShell$Builder;->modules:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    const-string v1, "Module execution"

    invoke-virtual {p3, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/google/inject/MessageProcessor;

    invoke-direct {v1, p4}, Lcom/google/inject/MessageProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/MessageProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 146
    new-instance v1, Lcom/google/inject/TypeListenerBindingProcessor;

    invoke-direct {v1, p4}, Lcom/google/inject/TypeListenerBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/TypeListenerBindingProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 147
    iget-object v1, v0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1}, Lcom/google/inject/State;->getTypeListenerBindings()Ljava/util/List;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/google/inject/MembersInjectorStore;

    invoke-direct {v2, v0, v1}, Lcom/google/inject/MembersInjectorStore;-><init>(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    .line 149
    const-string v1, "TypeListeners creation"

    invoke-virtual {p3, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/google/inject/ScopeBindingProcessor;

    invoke-direct {v1, p4}, Lcom/google/inject/ScopeBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/ScopeBindingProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 152
    const-string v1, "Scopes creation"

    invoke-virtual {p3, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/google/inject/TypeConverterBindingProcessor;

    invoke-direct {v1, p4}, Lcom/google/inject/TypeConverterBindingProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v2, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/TypeConverterBindingProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 155
    const-string v1, "Converters creation"

    invoke-virtual {p3, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 157
    # invokes: Lcom/google/inject/InjectorShell;->bindInjector(Lcom/google/inject/InjectorImpl;)V
    invoke-static {v0}, Lcom/google/inject/InjectorShell;->access$200(Lcom/google/inject/InjectorImpl;)V

    .line 158
    # invokes: Lcom/google/inject/InjectorShell;->bindLogger(Lcom/google/inject/InjectorImpl;)V
    invoke-static {v0}, Lcom/google/inject/InjectorShell;->access$300(Lcom/google/inject/InjectorImpl;)V

    .line 159
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {p2, v0, v1}, Lcom/google/inject/BindingProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 160
    const-string v1, "Binding creation"

    invoke-virtual {p3, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 163
    new-instance v2, Lcom/google/inject/InjectorShell;

    iget-object v3, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-direct {v2, p0, v3, v0, v5}, Lcom/google/inject/InjectorShell;-><init>(Lcom/google/inject/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/InjectorImpl;Lcom/google/inject/InjectorShell$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/google/inject/PrivateElementProcessor;

    iget-object v3, p0, Lcom/google/inject/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    invoke-direct {v2, p4, v3}, Lcom/google/inject/PrivateElementProcessor;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Stage;)V

    .line 167
    iget-object v3, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/inject/PrivateElementProcessor;->process(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V

    .line 168
    invoke-virtual {v2}, Lcom/google/inject/PrivateElementProcessor;->getInjectorShellBuilders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/InjectorShell$Builder;

    .line 169
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/inject/InjectorShell$Builder;->build(Lcom/google/inject/Initializer;Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/Stopwatch;Lcom/google/inject/internal/Errors;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_3
    move v0, v4

    .line 120
    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 121
    goto/16 :goto_1

    :cond_5
    move v0, v4

    .line 122
    goto/16 :goto_2

    .line 171
    :cond_6
    const-string v0, "Private environment creation"

    invoke-virtual {p3, v0}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 173
    return-object v1
.end method

.method lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/inject/InjectorShell$Builder;->getState()Lcom/google/inject/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/State;->lock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parent(Lcom/google/inject/InjectorImpl;)Lcom/google/inject/InjectorShell$Builder;
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/inject/InjectorShell$Builder;->parent:Lcom/google/inject/InjectorImpl;

    .line 87
    new-instance v0, Lcom/google/inject/InheritingState;

    iget-object v1, p1, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-direct {v0, v1}, Lcom/google/inject/InheritingState;-><init>(Lcom/google/inject/State;)V

    iput-object v0, p0, Lcom/google/inject/InjectorShell$Builder;->state:Lcom/google/inject/State;

    .line 88
    return-object p0
.end method

.method privateElements(Lcom/google/inject/spi/PrivateElements;)Lcom/google/inject/InjectorShell$Builder;
    .locals 3

    .prologue
    .line 97
    move-object v0, p1

    check-cast v0, Lcom/google/inject/internal/PrivateElementsImpl;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 98
    iget-object v1, p0, Lcom/google/inject/InjectorShell$Builder;->elements:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-object p0
.end method

.method stage(Lcom/google/inject/Stage;)Lcom/google/inject/InjectorShell$Builder;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/inject/InjectorShell$Builder;->stage:Lcom/google/inject/Stage;

    .line 93
    return-object p0
.end method

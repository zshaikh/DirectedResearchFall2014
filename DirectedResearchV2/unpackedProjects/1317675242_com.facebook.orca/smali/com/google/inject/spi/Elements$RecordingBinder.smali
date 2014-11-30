.class Lcom/google/inject/spi/Elements$RecordingBinder;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/google/inject/Binder;
.implements Lcom/google/inject/PrivateBinder;


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

.field private final modules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/spi/Elements$RecordingBinder;

.field private final privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

.field private final source:Ljava/lang/Object;

.field private final sourceProvider:Lcom/google/inject/internal/SourceProvider;

.field private final stage:Lcom/google/inject/Stage;


# direct methods
.method private constructor <init>(Lcom/google/inject/Stage;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 137
    invoke-static {}, Lcom/google/inject/internal/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 138
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 139
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/google/inject/internal/SourceProvider;

    invoke-direct {v0}, Lcom/google/inject/internal/SourceProvider;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/google/inject/spi/Elements;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/inject/spi/Elements$RecordingBinder;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/inject/AbstractModule;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/inject/internal/ConstantBindingBuilderImpl;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/inject/internal/AbstractBindingBuilder;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/inject/internal/BindingBuilder;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/SourceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    .line 143
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 144
    iput-object v4, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Stage;Lcom/google/inject/spi/Elements$1;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/Stage;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/Elements$RecordingBinder;Lcom/google/inject/internal/PrivateElementsImpl;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 164
    invoke-static {}, Lcom/google/inject/internal/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 165
    invoke-virtual {p2}, Lcom/google/inject/internal/PrivateElementsImpl;->getElementsMutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 166
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 167
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    .line 168
    iput-object p1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 169
    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 170
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/SourceProvider;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-nez p2, :cond_1

    move v0, v2

    :goto_0
    if-nez p3, :cond_0

    move v1, v2

    :cond_0
    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/inject/internal/Preconditions;->checkArgument(Z)V

    .line 152
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    .line 153
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 154
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 155
    iput-object p2, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    .line 157
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/google/inject/spi/Elements$RecordingBinder;

    .line 158
    iget-object v0, p1, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    iput-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    .line 159
    return-void

    :cond_1
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/inject/spi/Elements$RecordingBinder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    return-object v0
.end method

.method private exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "Cannot expose %s on a standard binder. Exposed bindings are only applicable to private binders."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder$1;

    invoke-direct {v0, p0}, Lcom/google/inject/spi/Elements$RecordingBinder$1;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;)V

    .line 328
    :goto_0
    return-object v0

    .line 326
    :cond_0
    new-instance v0, Lcom/google/inject/internal/ExposureBuilder;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/inject/internal/ExposureBuilder;-><init>(Lcom/google/inject/Binder;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 327
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/PrivateElementsImpl;->addExposureBuilder(Lcom/google/inject/internal/ExposureBuilder;)V

    goto :goto_0
.end method


# virtual methods
.method public addError(Lcom/google/inject/spi/Message;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/inject/spi/Message;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An exception was caught and reported. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v2, Lcom/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/inject/internal/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/google/inject/internal/BindingBuilder;

    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/inject/internal/BindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    return-object v0
.end method

.method public bind(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bindConstant()Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 3

    .prologue
    .line 266
    new-instance v0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;

    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/TypeListenerBinding;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/google/inject/spi/TypeListenerBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/spi/TypeListener;Lcom/google/inject/matcher/Matcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/ScopeBinding;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/ScopeBinding;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/inject/Scope;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/TypeConverterBinding;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public currentStage()Lcom/google/inject/Stage;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/google/inject/Stage;

    return-object v0
.end method

.method public expose(Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/google/inject/Key;)Lcom/google/inject/binder/AnnotatedElementBuilder;

    .line 306
    return-void
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/google/inject/spi/MembersInjectorLookup;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/spi/MembersInjectorLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;)V

    .line 197
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v0}, Lcom/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/google/inject/spi/ProviderLookup;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/spi/ProviderLookup;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 271
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v0}, Lcom/google/inject/spi/ProviderLookup;->getProvider()Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    invoke-virtual {v0}, Lcom/google/inject/internal/SourceProvider;->get()Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    goto :goto_0
.end method

.method public install(Lcom/google/inject/Module;)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    instance-of v0, p1, Lcom/google/inject/PrivateModule;

    if-eqz v0, :cond_2

    .line 219
    invoke-interface {p0}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v0

    .line 223
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/inject/Module;->configure(Lcom/google/inject/Binder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    invoke-static {p1}, Lcom/google/inject/internal/ProviderMethodsModule;->forModule(Lcom/google/inject/Module;)Lcom/google/inject/Module;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->install(Lcom/google/inject/Module;)V

    .line 234
    :cond_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    invoke-static {v1}, Lcom/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v2

    .line 226
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method public newPrivateBinder()Lcom/google/inject/PrivateBinder;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/PrivateElementsImpl;-><init>(Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lcom/google/inject/spi/Elements$RecordingBinder;

    invoke-direct {v1, p0, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Lcom/google/inject/internal/PrivateElementsImpl;)V

    return-object v1
.end method

.method public requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/google/inject/spi/InjectionRequest;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/google/inject/spi/InjectionRequest;-><init>(Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public requestInjection(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->requestInjection(Lcom/google/inject/TypeLiteral;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 211
    iget-object v3, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v4, Lcom/google/inject/spi/StaticInjectionRequest;

    invoke-virtual {p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/google/inject/spi/StaticInjectionRequest;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/google/inject/Binder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public varargs skipSources([Ljava/lang/Class;)Lcom/google/inject/spi/Elements$RecordingBinder;
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 295
    :goto_0
    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/google/inject/internal/SourceProvider;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/SourceProvider;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/SourceProvider;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-string v0, "Binder"

    return-object v0
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;

    move-result-object v0

    return-object v0
.end method

.method public withSource(Ljava/lang/Object;)Lcom/google/inject/spi/Elements$RecordingBinder;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/google/inject/internal/SourceProvider;)V

    return-object v0
.end method

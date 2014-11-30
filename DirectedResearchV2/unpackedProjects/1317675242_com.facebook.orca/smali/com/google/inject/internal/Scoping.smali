.class public abstract Lcom/google/inject/internal/Scoping;
.super Ljava/lang/Object;
.source "Scoping.java"


# static fields
.field public static final EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

.field public static final SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

.field public static final SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

.field public static final UNSCOPED:Lcom/google/inject/internal/Scoping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/inject/internal/Scoping$1;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$1;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    .line 57
    new-instance v0, Lcom/google/inject/internal/Scoping$2;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$2;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

    .line 75
    new-instance v0, Lcom/google/inject/internal/Scoping$3;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$3;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

    .line 93
    new-instance v0, Lcom/google/inject/internal/Scoping$4;

    invoke-direct {v0}, Lcom/google/inject/internal/Scoping$4;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/Scoping$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/inject/internal/Scoping;-><init>()V

    return-void
.end method

.method public static forAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Scoping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Scoping;"
        }
    .end annotation

    .prologue
    .line 112
    const-class v0, Lcom/google/inject/Singleton;

    if-ne p0, v0, :cond_0

    .line 113
    sget-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/Scoping$5;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Scoping$5;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    if-ne p0, v0, :cond_0

    .line 137
    sget-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

    .line 140
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/Scoping$6;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Scoping$6;-><init>(Lcom/google/inject/Scope;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract acceptVisitor(Lcom/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingScopingVisitor",
            "<TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V
.end method

.method public getScopeAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScopeInstance()Lcom/google/inject/Scope;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEagerSingleton(Lcom/google/inject/Stage;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    sget-object v0, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    if-ne p0, v0, :cond_0

    move v0, v2

    .line 187
    :goto_0
    return v0

    .line 183
    :cond_0
    sget-object v0, Lcom/google/inject/Stage;->PRODUCTION:Lcom/google/inject/Stage;

    if-ne p1, v0, :cond_3

    .line 184
    sget-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/google/inject/internal/Scoping;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/google/inject/internal/Scoping;

    if-ne p0, v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public isExplicitlyScoped()Z
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoScope()Z
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/inject/internal/Scoping;->getScopeInstance()Lcom/google/inject/Scope;

    move-result-object v0

    sget-object v1, Lcom/google/inject/Scopes;->NO_SCOPE:Lcom/google/inject/Scope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/google/inject/internal/SourceProvider;
.super Ljava/lang/Object;
.source "SourceProvider.java"


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/google/inject/internal/SourceProvider;

.field public static final UNKNOWN_SOURCE:Ljava/lang/Object;


# instance fields
.field private final classNamesToSkip:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "[unknown source]"

    sput-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/inject/internal/SourceProvider;

    const-class v1, Lcom/google/inject/internal/SourceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/SourceProvider;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/google/inject/internal/SourceProvider;->DEFAULT_INSTANCE:Lcom/google/inject/internal/SourceProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/google/inject/internal/SourceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/SourceProvider;->classNamesToSkip:Lcom/google/inject/internal/ImmutableSet;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/SourceProvider;->classNamesToSkip:Lcom/google/inject/internal/ImmutableSet;

    .line 43
    return-void
.end method

.method private static varargs asStrings([Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 54
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/StackTraceElement;
    .locals 6

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, p0, Lcom/google/inject/internal/SourceProvider;->classNamesToSkip:Lcom/google/inject/internal/ImmutableSet;

    invoke-virtual {v5, v4}, Lcom/google/inject/internal/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    return-object v3

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public varargs plusSkippedClasses([Ljava/lang/Class;)Lcom/google/inject/internal/SourceProvider;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/inject/internal/SourceProvider;

    iget-object v1, p0, Lcom/google/inject/internal/SourceProvider;->classNamesToSkip:Lcom/google/inject/internal/ImmutableSet;

    invoke-static {p1}, Lcom/google/inject/internal/SourceProvider;->asStrings([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/inject/internal/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/internal/SourceProvider;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

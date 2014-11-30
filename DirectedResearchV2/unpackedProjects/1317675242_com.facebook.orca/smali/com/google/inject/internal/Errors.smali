.class public final Lcom/google/inject/internal/Errors;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final converters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/internal/Errors$Converter",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/internal/Errors;

.field private final root:Lcom/google/inject/internal/Errors;

.field private final source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 561
    new-instance v0, Lcom/google/inject/internal/Errors$2;

    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Errors$2;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/google/inject/internal/Errors$3;

    const-class v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, v2}, Lcom/google/inject/internal/Errors$3;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/google/inject/internal/Errors$4;

    const-class v3, Lcom/google/inject/Key;

    invoke-direct {v2, v3}, Lcom/google/inject/internal/Errors$4;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/Errors;->converters:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    .line 86
    sget-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/Errors;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iput-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    .line 97
    iput-object p1, p0, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    .line 98
    iput-object p2, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    .line 92
    iput-object p1, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method private varargs addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 427
    invoke-static {p2, p3}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getSources()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;

    .line 429
    return-object p0
.end method

.method public static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 584
    sget-object v0, Lcom/google/inject/internal/Errors;->converters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/Errors$Converter;

    .line 585
    invoke-virtual {v0, p0}, Lcom/google/inject/internal/Errors$Converter;->appliesTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {v0, p0}, Lcom/google/inject/internal/Errors$Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/spi/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 464
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    const-string v1, ":%n%n"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    .line 466
    invoke-static {p1}, Lcom/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v8

    .line 468
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v8

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/spi/Message;

    .line 469
    const-string v4, "%s) %s%n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 471
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getSources()Ljava/util/List;

    move-result-object v3

    .line 472
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    :goto_2
    if-ltz v4, :cond_1

    .line 473
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 474
    invoke-static {v0, v5}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    .line 472
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_0
    move v1, v7

    .line 466
    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 478
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 479
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 480
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 481
    const-string v3, "Caused by: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 484
    :cond_2
    const-string v3, "%n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v3, v6

    .line 485
    goto :goto_1

    .line 487
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 488
    const-string v1, "1 error"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 493
    :goto_3
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 490
    :cond_4
    const-string v1, "%s errors"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 442
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatInjectionPoint(Ljava/util/Formatter;Lcom/google/inject/spi/Dependency;Lcom/google/inject/spi/InjectionPoint;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Formatter;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;",
            "Lcom/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 625
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    .line 626
    invoke-static {v1}, Lcom/google/inject/internal/MoreTypes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v0

    .line 628
    const-class v2, Ljava/lang/reflect/Field;

    if-ne v0, v2, :cond_0

    .line 629
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Dependency;

    .line 630
    const-string v2, "  while locating %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 631
    const-string v0, "    for field at %s%n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/inject/internal/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 641
    :goto_0
    return-void

    .line 633
    :cond_0
    if-eqz p1, :cond_1

    .line 634
    const-string v0, "  while locating %s%n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-static {v3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 635
    const-string v0, "    for parameter %s at %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getParameterIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, Lcom/google/inject/internal/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 593
    instance-of v0, p1, Lcom/google/inject/spi/Dependency;

    if-eqz v0, :cond_1

    .line 594
    check-cast p1, Lcom/google/inject/spi/Dependency;

    .line 595
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    invoke-static {p0, p1, v0}, Lcom/google/inject/internal/Errors;->formatInjectionPoint(Ljava/util/Formatter;Lcom/google/inject/spi/Dependency;Lcom/google/inject/spi/InjectionPoint;)V

    .line 621
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    goto :goto_0

    .line 602
    :cond_1
    instance-of v0, p1, Lcom/google/inject/spi/InjectionPoint;

    if-eqz v0, :cond_2

    .line 603
    const/4 v0, 0x0

    check-cast p1, Lcom/google/inject/spi/InjectionPoint;

    invoke-static {p0, v0, p1}, Lcom/google/inject/internal/Errors;->formatInjectionPoint(Ljava/util/Formatter;Lcom/google/inject/spi/Dependency;Lcom/google/inject/spi/InjectionPoint;)V

    goto :goto_0

    .line 605
    :cond_2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 606
    const-string v0, "  at %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/inject/internal/StackTraceElements;->forType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 608
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_4

    .line 609
    const-string v0, "  at %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Member;

    invoke-static {p1}, Lcom/google/inject/internal/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 611
    :cond_4
    instance-of v0, p1, Lcom/google/inject/TypeLiteral;

    if-eqz v0, :cond_5

    .line 612
    const-string v0, "  while locating %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 614
    :cond_5
    instance-of v0, p1, Lcom/google/inject/Key;

    if-eqz v0, :cond_6

    .line 615
    check-cast p1, Lcom/google/inject/Key;

    .line 616
    const-string v0, "  while locating %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 619
    :cond_6
    const-string v0, "  at %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0
.end method

.method public static getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    instance-of v0, p0, Lcom/google/inject/ProvisionException;

    if-eqz v0, :cond_0

    .line 307
    check-cast p0, Lcom/google/inject/ProvisionException;

    invoke-virtual {p0}, Lcom/google/inject/ProvisionException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 308
    :cond_0
    instance-of v0, p0, Lcom/google/inject/ConfigurationException;

    if-eqz v0, :cond_1

    .line 309
    check-cast p0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_1
    instance-of v0, p0, Lcom/google/inject/CreationException;

    if-eqz v0, :cond_2

    .line 311
    check-cast p0, Lcom/google/inject/CreationException;

    invoke-virtual {p0}, Lcom/google/inject/CreationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_2
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/spi/Message;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 521
    .line 522
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/spi/Message;

    .line 523
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 524
    if-eqz v2, :cond_0

    .line 528
    if-eqz v1, :cond_1

    move-object v0, v3

    .line 535
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v2

    .line 533
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 535
    goto :goto_1
.end method

.method private merge(Lcom/google/inject/spi/Message;)Lcom/google/inject/spi/Message;
    .locals 4

    .prologue
    .line 374
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    return-object p0
.end method

.method public varargs addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public ambiguousTypeConversion(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;Lcom/google/inject/internal/MatcherAndConverter;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "Multiple converters can convert \'%s\' (bound at %s) to %s:%n %s and%n %s.%n Please adjust your type converter configuration to avoid overlapping matches."

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public bindingAlreadySet(Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 262
    const-string v0, "A binding to %s was already configured at %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public bindingToProvider()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 160
    const-string v0, "Binding to Provider is not allowed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotBindToGuiceType(Ljava/lang/String;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 195
    const-string v0, "Binding to core guice framework type is not allowed: %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectInnerClass(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 242
    const-string v0, "Injecting into inner classes is not supported.  Please use a \'static\' class (top-level or nested) instead of %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawMembersInjector()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 332
    const-string v0, "Cannot inject a MembersInjector that has no type parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawProvider()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 328
    const-string v0, "Cannot inject a Provider that has no type parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawTypeLiteral()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 340
    const-string v0, "Cannot inject a TypeLiteral that has no type parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 336
    const-string v0, "Cannot inject a TypeLiteral of %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotSatisfyCircularDependency(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "Tried proxying %s to support a circular dependency, but it is not an interface."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    return-object p1

    .line 506
    :cond_1
    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getParameterIndex()I

    move-result v0

    .line 507
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    :goto_0
    const-string v1, "null returned by binding at %s%n but %s%s is not @Nullable"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 513
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 507
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public childBindingAlreadySet(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 266
    const-string v0, "A binding to %s already exists on a child injector."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "Error converting \'%s\' (bound at %s) to %s%n using %s.%n Reason: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {p0, p5, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "Type mismatch converting \'%s\' (bound at %s) to %s%n using %s.%n Converter returned %s."

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, "Received null converting \'%s\' (bound at %s) to %s%n using %s."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public duplicateBindingAnnotations(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 248
    const-string v0, "%s has more than one annotation annotated with @BindingAnnotation: %s and %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public duplicateScopeAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 254
    const-string v0, "More than one scope annotation was found: %s and %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public duplicateScopes(Lcom/google/inject/Scope;Ljava/lang/Class;Lcom/google/inject/Scope;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Scope;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "Scope %s is already bound to %s. Cannot bind %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 286
    const-string v0, "Error in custom provider, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public varargs errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 318
    invoke-static {p1}, Lcom/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    goto :goto_0
.end method

.method public errorInUserInjector(Lcom/google/inject/MembersInjector;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/MembersInjector",
            "<*>;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 291
    const-string v0, "Error injecting %s using %s.%n Reason: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 282
    const-string v0, "Error injecting constructor, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public errorInjectingMethod(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 270
    const-string v0, "Error injecting method, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public errorNotifyingInjectionListener(Lcom/google/inject/spi/InjectionListener;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionListener",
            "<*>;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 297
    const-string v0, "Error notifying InjectionListener %s of %s.%n Reason: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public errorNotifyingTypeListener(Lcom/google/inject/spi/TypeListenerBinding;Lcom/google/inject/TypeLiteral;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 275
    const-string v0, "Error notifying TypeListener %s (bound at %s) of %s.%n Reason: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeListenerBinding;->getListener()Lcom/google/inject/spi/TypeListener;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeListenerBinding;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public exposedButNotBound(Lcom/google/inject/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "Could not expose() %s, it must be explicitly bound."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 303
    return-void
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-static {v0}, Lcom/google/inject/internal/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 453
    new-instance v1, Lcom/google/inject/internal/Errors$1;

    invoke-direct {v1, p0}, Lcom/google/inject/internal/Errors$1;-><init>(Lcom/google/inject/internal/Errors;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getSources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p0

    .line 398
    :goto_0
    if-eqz v1, :cond_1

    .line 399
    iget-object v2, v1, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    sget-object v3, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 400
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    :cond_0
    iget-object v1, v1, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 403
    :cond_1
    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_1
    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    move-object v0, p0

    .line 393
    goto :goto_0
.end method

.method public merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/spi/Message;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Message;

    .line 382
    invoke-direct {p0, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/spi/Message;)Lcom/google/inject/spi/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/Errors;->addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 384
    :cond_0
    return-object p0
.end method

.method public misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 209
    const-string v0, "%s is annotated with %s, but binding annotations should be applied to its parameters instead."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingConstantValues()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 238
    const-string v0, "Missing constant value. Please call to(...)."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "Could not find a suitable constructor in %s. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 124
    const-string v0, "No implementation for %s was bound."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingRuntimeRetention(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 4

    .prologue
    .line 181
    const-string v0, "Please annotate with @Retention(RUNTIME).%n Bound at %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingScopeAnnotation()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 186
    const-string v0, "Please annotate with @ScopeAnnotation."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "%s doesn\'t extend %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/internal/Errors;
    .locals 3

    .prologue
    .line 190
    const-string v0, "%s is annotated @Inject(optional=true), but constructors cannot be optional."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveBinding()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 258
    const-string v0, "Binding points to itself."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveImplementationType()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 173
    const-string v0, "@ImplementedBy points to the same class it annotates."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveProviderType()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 177
    const-string v0, "@ProvidedBy points to the same class it annotates."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public scopeAnnotationOnAbstractType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "%s is annotated with %s, but scope annotations are not supported for abstract types.%n Bound at %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public scopeNotFound(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "No scope is bound to %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/inject/Provider",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "%s doesn\'t provide instances of %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public throwConfigurationExceptionIfErrorsExist()V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public throwCreationExceptionIfErrorsExist()V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    new-instance v0, Lcom/google/inject/CreationException;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/CreationException;-><init>(Ljava/util/Collection;)V

    throw v0
.end method

.method public throwIfNewErrors(I)V
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 408
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
.end method

.method public throwProvisionExceptionIfErrorsExist()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/google/inject/ProvisionException;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public toException()Lcom/google/inject/internal/ErrorsException;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/google/inject/internal/ErrorsException;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ErrorsException;-><init>(Lcom/google/inject/internal/Errors;)V

    return-object v0
.end method

.method public tooManyConstructors(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, "%s has more than one constructor annotated with @Inject. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public voidProviderMethod()Lcom/google/inject/internal/Errors;
    .locals 2

    .prologue
    .line 234
    const-string v0, "Provider methods must return a value. Do not return void."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/Errors;-><init>(Lcom/google/inject/internal/Errors;Ljava/lang/Object;)V

    goto :goto_0
.end method

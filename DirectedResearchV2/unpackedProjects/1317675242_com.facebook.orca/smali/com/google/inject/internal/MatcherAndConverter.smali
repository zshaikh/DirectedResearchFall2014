.class public final Lcom/google/inject/internal/MatcherAndConverter;
.super Ljava/lang/Object;
.source "MatcherAndConverter.java"


# instance fields
.field private final source:Ljava/lang/Object;

.field private final typeConverter:Lcom/google/inject/spi/TypeConverter;

.field private final typeMatcher:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "type matcher"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/matcher/Matcher;

    iput-object v0, p0, Lcom/google/inject/internal/MatcherAndConverter;->typeMatcher:Lcom/google/inject/matcher/Matcher;

    .line 36
    const-string v0, "converter"

    invoke-static {p2, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/TypeConverter;

    iput-object v0, p0, Lcom/google/inject/internal/MatcherAndConverter;->typeConverter:Lcom/google/inject/spi/TypeConverter;

    .line 37
    iput-object p3, p0, Lcom/google/inject/internal/MatcherAndConverter;->source:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public getTypeConverter()Lcom/google/inject/spi/TypeConverter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/inject/internal/MatcherAndConverter;->typeConverter:Lcom/google/inject/spi/TypeConverter;

    return-object v0
.end method

.method public getTypeMatcher()Lcom/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/inject/internal/MatcherAndConverter;->typeMatcher:Lcom/google/inject/matcher/Matcher;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/inject/internal/MatcherAndConverter;->typeConverter:Lcom/google/inject/spi/TypeConverter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which matches "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/MatcherAndConverter;->typeMatcher:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (bound at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/MatcherAndConverter;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/inject/spi/TypeConverterBinding;
.super Ljava/lang/Object;
.source "TypeConverterBinding.java"

# interfaces
.implements Lcom/google/inject/spi/Element;


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
.method constructor <init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/matcher/Matcher",
            "<-",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/TypeConverterBinding;->source:Ljava/lang/Object;

    .line 42
    const-string v0, "typeMatcher"

    invoke-static {p2, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/matcher/Matcher;

    iput-object v0, p0, Lcom/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/google/inject/matcher/Matcher;

    .line 43
    const-string v0, "typeConverter"

    invoke-static {p3, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/TypeConverter;

    iput-object v0, p0, Lcom/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/google/inject/spi/TypeConverter;

    .line 44
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/inject/spi/TypeConverterBinding;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/google/inject/matcher/Matcher;

    iget-object v2, p0, Lcom/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/google/inject/spi/TypeConverter;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->convertToTypes(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    .line 64
    return-void
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/inject/spi/TypeConverterBinding;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeConverter()Lcom/google/inject/spi/TypeConverter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/google/inject/spi/TypeConverter;

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
    .line 51
    iget-object v0, p0, Lcom/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/google/inject/matcher/Matcher;

    return-object v0
.end method

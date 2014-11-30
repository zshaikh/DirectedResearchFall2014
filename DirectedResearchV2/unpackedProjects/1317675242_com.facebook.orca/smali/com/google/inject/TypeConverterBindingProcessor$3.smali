.class Lcom/google/inject/TypeConverterBindingProcessor$3;
.super Lcom/google/inject/matcher/AbstractMatcher;
.source "TypeConverterBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/matcher/AbstractMatcher",
        "<",
        "Lcom/google/inject/TypeLiteral",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/TypeConverterBindingProcessor;


# direct methods
.method constructor <init>(Lcom/google/inject/TypeConverterBindingProcessor;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/inject/TypeConverterBindingProcessor$3;->this$0:Lcom/google/inject/TypeConverterBindingProcessor;

    invoke-direct {p0}, Lcom/google/inject/matcher/AbstractMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/inject/TypeLiteral;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 84
    check-cast p1, Lcom/google/inject/TypeLiteral;

    invoke-virtual {p0, p1}, Lcom/google/inject/TypeConverterBindingProcessor$3;->matches(Lcom/google/inject/TypeLiteral;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "Class<?>"

    return-object v0
.end method

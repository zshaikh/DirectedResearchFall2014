.class Lcom/google/inject/TypeConverterBindingProcessor$1;
.super Ljava/lang/Object;
.source "TypeConverterBindingProcessor.java"

# interfaces
.implements Lcom/google/inject/spi/TypeConverter;


# instance fields
.field final synthetic this$0:Lcom/google/inject/TypeConverterBindingProcessor;


# direct methods
.method constructor <init>(Lcom/google/inject/TypeConverterBindingProcessor;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/inject/TypeConverterBindingProcessor$1;->this$0:Lcom/google/inject/TypeConverterBindingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Length != 1."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "TypeConverter<Character>"

    return-object v0
.end method

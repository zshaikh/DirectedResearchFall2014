.class Lcom/google/inject/TypeConverterBindingProcessor$2;
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
    .line 72
    iput-object p1, p0, Lcom/google/inject/TypeConverterBindingProcessor$2;->this$0:Lcom/google/inject/TypeConverterBindingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;
    .locals 1
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
    .line 75
    invoke-virtual {p2}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "TypeConverter<E extends Enum<E>>"

    return-object v0
.end method

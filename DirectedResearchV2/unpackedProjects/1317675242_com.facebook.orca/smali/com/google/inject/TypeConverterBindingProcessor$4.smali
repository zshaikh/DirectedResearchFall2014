.class Lcom/google/inject/TypeConverterBindingProcessor$4;
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
    .line 93
    iput-object p1, p0, Lcom/google/inject/TypeConverterBindingProcessor$4;->this$0:Lcom/google/inject/TypeConverterBindingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;
    .locals 2
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
    .line 97
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "TypeConverter<Class<?>>"

    return-object v0
.end method

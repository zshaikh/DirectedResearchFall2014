.class Lcom/google/inject/internal/Errors$1;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/inject/spi/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/inject/internal/Errors$1;->this$0:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/inject/spi/Message;Lcom/google/inject/spi/Message;)I
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 453
    check-cast p1, Lcom/google/inject/spi/Message;

    check-cast p2, Lcom/google/inject/spi/Message;

    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/Errors$1;->compare(Lcom/google/inject/spi/Message;Lcom/google/inject/spi/Message;)I

    move-result v0

    return v0
.end method

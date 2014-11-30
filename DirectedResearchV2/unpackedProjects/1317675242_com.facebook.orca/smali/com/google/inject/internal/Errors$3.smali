.class final Lcom/google/inject/internal/Errors$3;
.super Lcom/google/inject/internal/Errors$Converter;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/Errors$Converter",
        "<",
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/google/inject/internal/Errors$Converter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/Errors$3;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

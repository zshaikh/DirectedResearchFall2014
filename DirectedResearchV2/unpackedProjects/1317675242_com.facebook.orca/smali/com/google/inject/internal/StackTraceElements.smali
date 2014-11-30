.class public Lcom/google/inject/internal/StackTraceElements;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    sget-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    .line 65
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, -0x1

    .line 63
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v3

    .line 64
    const-class v4, Ljava/lang/reflect/Constructor;

    if-ne v3, v4, :cond_1

    const-string v3, "<init>"

    .line 65
    :goto_1
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v4

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static forType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    const/4 v1, -0x1

    .line 79
    new-instance v2, Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class"

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

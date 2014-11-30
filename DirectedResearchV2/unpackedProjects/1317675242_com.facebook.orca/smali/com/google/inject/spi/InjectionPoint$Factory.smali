.class interface abstract Lcom/google/inject/spi/InjectionPoint$Factory;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ":",
        "Ljava/lang/reflect/AnnotatedElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FIELDS:Lcom/google/inject/spi/InjectionPoint$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/InjectionPoint$Factory",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHODS:Lcom/google/inject/spi/InjectionPoint$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/InjectionPoint$Factory",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/google/inject/spi/InjectionPoint$Factory$1;

    invoke-direct {v0}, Lcom/google/inject/spi/InjectionPoint$Factory$1;-><init>()V

    sput-object v0, Lcom/google/inject/spi/InjectionPoint$Factory;->FIELDS:Lcom/google/inject/spi/InjectionPoint$Factory;

    .line 393
    new-instance v0, Lcom/google/inject/spi/InjectionPoint$Factory$2;

    invoke-direct {v0}, Lcom/google/inject/spi/InjectionPoint$Factory$2;-><init>()V

    sput-object v0, Lcom/google/inject/spi/InjectionPoint$Factory;->METHODS:Lcom/google/inject/spi/InjectionPoint$Factory;

    return-void
.end method


# virtual methods
.method public abstract create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;TM;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation
.end method

.method public abstract getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[TM;"
        }
    .end annotation
.end method

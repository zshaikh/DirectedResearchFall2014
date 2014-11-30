.class public Lcom/google/inject/matcher/Matchers;
.super Ljava/lang/Object;
.source "Matchers.java"


# static fields
.field private static final ANY:Lcom/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/matcher/Matcher",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/inject/matcher/Matchers$Any;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/matcher/Matchers$Any;-><init>(Lcom/google/inject/matcher/Matchers$1;)V

    sput-object v0, Lcom/google/inject/matcher/Matchers;->ANY:Lcom/google/inject/matcher/Matcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identicalTo(Ljava/lang/Object;)Lcom/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/matcher/Matcher",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/google/inject/matcher/Matchers$IdenticalTo;

    invoke-direct {v0, p0}, Lcom/google/inject/matcher/Matchers$IdenticalTo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static subclassesOf(Ljava/lang/Class;)Lcom/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/matcher/Matcher",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lcom/google/inject/matcher/Matchers$SubclassesOf;

    invoke-direct {v0, p0}, Lcom/google/inject/matcher/Matchers$SubclassesOf;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.class Lcom/google/inject/matcher/Matchers$Any;
.super Lcom/google/inject/matcher/AbstractMatcher;
.source "Matchers.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/matcher/AbstractMatcher",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/inject/matcher/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/matcher/Matchers$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/inject/matcher/Matchers$Any;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "any()"

    return-object v0
.end method

.class public Lcom/google/inject/internal/Nullability;
.super Ljava/lang/Object;
.source "Nullability.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowsNull([Ljava/lang/annotation/Annotation;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    array-length v0, p0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 25
    const-string v3, "Nullable"

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 29
    goto :goto_1
.end method

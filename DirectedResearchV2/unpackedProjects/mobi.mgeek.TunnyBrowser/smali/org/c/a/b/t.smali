.class public Lorg/c/a/b/t;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# static fields
.field private static final a:[Lorg/c/a/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 670
    const/16 v0, 0x1fc

    new-array v0, v0, [Lorg/c/a/b/u;

    sput-object v0, Lorg/c/a/b/t;->a:[Lorg/c/a/b/u;

    .line 674
    invoke-static {}, Lorg/c/a/b/u;->values()[Lorg/c/a/b/u;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 676
    sget-object v4, Lorg/c/a/b/t;->a:[Lorg/c/a/b/u;

    invoke-static {v3}, Lorg/c/a/b/u;->a(Lorg/c/a/b/u;)I

    move-result v5

    aput-object v3, v4, v5

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method public static a(I)Lorg/c/a/b/u;
    .locals 1

    .prologue
    .line 929
    const/16 v0, 0x1fb

    if-gt p0, v0, :cond_0

    .line 931
    sget-object v0, Lorg/c/a/b/t;->a:[Lorg/c/a/b/u;

    aget-object v0, v0, p0

    .line 933
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

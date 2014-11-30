.class public final Lcom/dolphin/browser/util/e;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static a:[Ljava/lang/Object;

.field private static b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/dolphin/browser/util/e;->a:[Ljava/lang/Object;

    .line 27
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/dolphin/browser/util/e;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 33
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 34
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 35
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 37
    :cond_0
    return p0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-eqz p0, :cond_3

    .line 131
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p0, v2

    .line 132
    if-nez v4, :cond_1

    .line 133
    if-nez p1, :cond_2

    .line 141
    :cond_0
    :goto_1
    return v0

    .line 136
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 141
    goto :goto_1
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 53
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/dolphin/browser/util/e;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 218
    if-nez p0, :cond_1

    move v0, v1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 222
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 226
    goto :goto_0
.end method

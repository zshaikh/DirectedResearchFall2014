.class final Lcom/voxel/api/AuthHelper$1;
.super Ljava/lang/Object;
.source "AuthHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/api/AuthHelper;->getSignedQuery(Lcom/voxel/api/ApiKeystore;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/voxel/api/AuthHelper$1;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "a"    # [Ljava/lang/String;
    .param p2, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    aget-object v0, p1, v2

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    aget-object v0, p1, v3

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    aget-object v0, p1, v2

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

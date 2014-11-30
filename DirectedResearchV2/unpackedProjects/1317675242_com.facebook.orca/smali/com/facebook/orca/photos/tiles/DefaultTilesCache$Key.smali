.class public Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;
.super Ljava/lang/Object;
.source "DefaultTilesCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    .line 31
    iput p2, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    .line 32
    iput p3, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 46
    :goto_0
    return v0

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 40
    :cond_2
    check-cast p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;

    .line 42
    iget v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    iget v1, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    .line 43
    :cond_3
    iget v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    iget v1, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    iget-object v1, p1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    .line 46
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->a:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->hashCode()I

    move-result v0

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->b:I

    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;->c:I

    add-int/2addr v0, v1

    .line 54
    return v0
.end method

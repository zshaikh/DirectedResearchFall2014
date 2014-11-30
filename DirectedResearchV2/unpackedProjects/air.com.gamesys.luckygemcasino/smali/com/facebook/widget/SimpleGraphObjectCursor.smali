.class Lcom/facebook/widget/SimpleGraphObjectCursor;
.super Ljava/lang/Object;
.source "SimpleGraphObjectCursor.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/widget/GraphObjectCursor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private fromCache:Z

.field private graphObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private moreObjectsAvailable:Z

.field private pos:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 28
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 30
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 31
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    .local p1, "other":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 28
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 30
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 31
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 37
    iget v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 38
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 44
    return-void
.end method


# virtual methods
.method public addGraphObjects(Ljava/util/Collection;Z)V
    .locals 1
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    .local p1, "graphObjects":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 50
    return-void
.end method

.method public areMoreObjectsAvailable()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 156
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-gez v0, :cond_0

    .line 145
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    iget-object v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 148
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 139
    .local v0, "count":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromCache()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return v0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    .line 127
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 128
    .local v0, "count":I
    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 80
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 86
    .local v0, "count":I
    if-lt p1, v0, :cond_0

    .line 87
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 97
    :goto_0
    return v1

    .line 91
    :cond_0
    if-gez p1, :cond_1

    .line 92
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    goto :goto_0

    .line 96
    :cond_1
    iput p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 97
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public setFromCache(Z)V
    .locals 0
    .param p1, "fromCache"    # Z

    .prologue
    .line 57
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 58
    return-void
.end method

.method public setMoreObjectsAvailable(Z)V
    .locals 0
    .param p1, "moreObjectsAvailable"    # Z

    .prologue
    .line 65
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 66
    return-void
.end method

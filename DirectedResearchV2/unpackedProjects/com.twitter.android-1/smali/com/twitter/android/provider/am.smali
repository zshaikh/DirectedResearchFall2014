.class public final Lcom/twitter/android/provider/am;
.super Lcom/twitter/android/provider/an;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/provider/an;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v9, 0x2

    iget-object v1, p0, Lcom/twitter/android/provider/am;->d:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/twitter/android/provider/am;->a:I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v0, v3, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/16 v5, 0xb

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/twitter/android/provider/am;->b:Ljava/util/List;

    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/provider/am;->b:Ljava/util/List;

    goto :goto_1
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 10

    const/16 v9, 0xb

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/twitter/android/provider/am;->d:Landroid/database/Cursor;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/provider/am;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v0, "conn_names"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final moveToPosition(I)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/provider/an;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/provider/am;->d:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/twitter/android/provider/am;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

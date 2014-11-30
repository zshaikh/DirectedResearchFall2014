.class public Ldolphin/webkit/WebBackForwardList;
.super Ljava/lang/Object;
.source "WebBackForwardList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/WebHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackProxy:Ldolphin/webkit/ae;

.field private mClearPending:Z

.field private mCurrentIndex:I

.field private mPrereadItem:Ldolphin/webkit/WebHistoryItem;


# direct methods
.method constructor <init>(Ldolphin/webkit/ae;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    .line 55
    return-void
.end method

.method private getItemUrl(Ldolphin/webkit/WebHistoryItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ldolphin/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native nativeClose(I)V
.end method

.method private declared-synchronized removeHistoryItem(I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebHistoryItem;

    .line 191
    iget v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synchronized native declared-synchronized restoreIndex(II)V
.end method


# virtual methods
.method declared-synchronized addHistoryItem(Ldolphin/webkit/WebHistoryItem;Z)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    if-eqz p2, :cond_0

    move v2, v0

    .line 127
    :goto_0
    if-eq v2, v0, :cond_1

    .line 128
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 129
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebHistoryItem;

    .line 128
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 126
    :cond_0
    iget v1, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_0

    .line 132
    :cond_1
    if-eqz p2, :cond_4

    .line 133
    invoke-virtual {p1}, Ldolphin/webkit/WebHistoryItem;->getPrereadStatus()Ldolphin/webkit/hj;

    move-result-object v0

    .line 134
    sget-object v1, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    if-ne v0, v1, :cond_2

    .line 135
    sget-object v0, Ldolphin/webkit/hj;->b:Ldolphin/webkit/hj;

    .line 139
    :cond_2
    invoke-virtual {p1, v0}, Ldolphin/webkit/WebHistoryItem;->setPrereadStatus(Ldolphin/webkit/hj;)V

    .line 140
    iput-object p1, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;

    .line 152
    :goto_2
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_3
    monitor-exit p0

    return-void

    .line 145
    :cond_4
    :try_start_1
    iget v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    .line 146
    sget-object v0, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    invoke-virtual {p1, v0}, Ldolphin/webkit/WebHistoryItem;->setPrereadStatus(Ldolphin/webkit/hj;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;

    .line 149
    invoke-virtual {p1}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/fo;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized clone()Ldolphin/webkit/WebBackForwardList;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v1, Ldolphin/webkit/WebBackForwardList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldolphin/webkit/WebBackForwardList;-><init>(Ldolphin/webkit/ae;)V

    .line 201
    iget-boolean v2, p0, Ldolphin/webkit/WebBackForwardList;->mClearPending:Z

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p0}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    .line 205
    invoke-virtual {p0}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ldolphin/webkit/WebBackForwardList;->addHistoryItem(Ldolphin/webkit/WebHistoryItem;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 216
    :goto_0
    monitor-exit p0

    return-object v0

    .line 209
    :cond_0
    :try_start_1
    iget v2, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    iput v2, v1, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    .line 210
    invoke-virtual {p0}, Ldolphin/webkit/WebBackForwardList;->getSize()I

    move-result v3

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    move v2, v0

    .line 212
    :goto_1
    if-ge v2, v3, :cond_1

    .line 214
    iget-object v4, v1, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebHistoryItem;

    invoke-virtual {v0}, Ldolphin/webkit/WebHistoryItem;->clone()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 216
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Ldolphin/webkit/WebBackForwardList;->clone()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized close(I)V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    .line 173
    invoke-static {p1}, Ldolphin/webkit/WebBackForwardList;->nativeClose(I)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebBackForwardList;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getClearPending()Z
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebBackForwardList;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentIndex()I
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentItem()Ldolphin/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebBackForwardList;->getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/WebBackForwardList;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebHistoryItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPrereadItem()Ldolphin/webkit/WebHistoryItem;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;

    invoke-virtual {v1}, Ldolphin/webkit/WebHistoryItem;->getPrereadStatus()Ldolphin/webkit/hj;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    if-eq v1, v2, :cond_0

    .line 253
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    monitor-exit p0

    return-object v0

    .line 255
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebBackForwardList;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setClearPending()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldolphin/webkit/WebBackForwardList;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCurrentIndex(I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ldolphin/webkit/WebBackForwardList;->mCurrentIndex:I

    .line 226
    invoke-virtual {p0, p1}, Ldolphin/webkit/WebBackForwardList;->getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 230
    sget-object v1, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebHistoryItem;->setPrereadStatus(Ldolphin/webkit/hj;)V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mPrereadItem:Ldolphin/webkit/WebHistoryItem;

    .line 233
    invoke-virtual {v0}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/fo;->e(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v1, v0, p1}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/WebHistoryItem;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updatePrereadItemStatus(Ldolphin/webkit/hj;)V
    .locals 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/WebBackForwardList;->getPrereadItem()Ldolphin/webkit/WebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 243
    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ldolphin/webkit/WebHistoryItem;->setPrereadStatus(Ldolphin/webkit/hj;)V

    .line 246
    iget-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Ldolphin/webkit/WebBackForwardList;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v1, v0}, Ldolphin/webkit/ae;->b(Ldolphin/webkit/WebHistoryItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

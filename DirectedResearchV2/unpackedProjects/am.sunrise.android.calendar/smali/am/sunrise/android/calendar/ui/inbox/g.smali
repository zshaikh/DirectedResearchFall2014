.class public Lam/sunrise/android/calendar/ui/inbox/g;
.super Ljava/lang/Object;
.source "InboxCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    .line 28
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/inbox/g;->b:[I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    .line 218
    :cond_1
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 163
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 203
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->b:[I

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->b:[I

    array-length v0, v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v0

    .line 106
    iget v1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 54
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/g;->getCount()I

    move-result v1

    .line 55
    if-lt p1, v1, :cond_0

    .line 56
    iput v1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    .line 75
    :goto_0
    return v0

    .line 60
    :cond_0
    if-gez p1, :cond_1

    .line 61
    iput v2, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    goto :goto_0

    .line 65
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    if-ne p1, v0, :cond_2

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->b:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    iput v2, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    goto :goto_0

    .line 73
    :cond_3
    iput p1, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 238
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 248
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/g;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 243
    return-void
.end method

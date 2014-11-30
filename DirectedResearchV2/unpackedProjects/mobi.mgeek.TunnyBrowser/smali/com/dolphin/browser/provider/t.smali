.class public Lcom/dolphin/browser/provider/t;
.super Landroid/database/AbstractCursor;
.source "MergedCursor.java"


# instance fields
.field private a:Landroid/database/DataSetObserver;

.field private b:Ljava/lang/String;

.field private c:Landroid/database/Cursor;

.field private d:[Landroid/database/Cursor;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 12
    new-instance v1, Lcom/dolphin/browser/provider/u;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/provider/u;-><init>(Lcom/dolphin/browser/provider/t;)V

    iput-object v1, p0, Lcom/dolphin/browser/provider/t;->a:Landroid/database/DataSetObserver;

    .line 26
    const-string v1, "MergedCursor"

    iput-object v1, p0, Lcom/dolphin/browser/provider/t;->b:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    .line 31
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 33
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->a:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/provider/t;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/dolphin/browser/provider/t;->mPos:I

    return p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 229
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPos = -1, changed to 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 233
    if-nez v0, :cond_1

    .line 234
    iget v0, p0, Lcom/dolphin/browser/provider/t;->mPos:I

    iget v1, p0, Lcom/dolphin/browser/provider/t;->mPos:I

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/provider/t;->onMove(II)Z

    .line 237
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/provider/t;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/dolphin/browser/provider/t;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v0

    .line 162
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 162
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 166
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 167
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v0

    .line 151
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 157
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v2, v1

    move v1, v0

    .line 45
    :goto_0
    if-ge v1, v2, :cond_1

    .line 46
    iget-object v3, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/dolphin/browser/provider/t;->a()V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v4, v0

    move v3, v1

    move v0, v1

    .line 60
    :goto_0
    if-ge v3, v4, :cond_1

    .line 61
    iget-object v5, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v5, v5, v3

    if-nez v5, :cond_0

    .line 60
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v5, v5, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v5, v0

    if-ge p2, v5, :cond_2

    .line 66
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v3

    .line 74
    :cond_1
    if-eqz v2, :cond_3

    .line 75
    iput-object v2, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->c:Landroid/database/Cursor;

    sub-int v0, p2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 79
    :goto_2
    return v0

    .line 70
    :cond_2
    iget-object v5, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v5, v5, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    move v0, v1

    .line 79
    goto :goto_2
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v0

    .line 172
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v0

    .line 191
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 192
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v2, v1

    move v1, v0

    .line 212
    :goto_0
    if-ge v1, v2, :cond_2

    .line 213
    iget-object v3, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 212
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v0

    .line 181
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    array-length v1, v0

    .line 201
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 202
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/dolphin/browser/provider/t;->d:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

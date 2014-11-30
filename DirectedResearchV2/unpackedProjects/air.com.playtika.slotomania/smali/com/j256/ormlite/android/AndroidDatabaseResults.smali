.class public Lcom/j256/ormlite/android/AndroidDatabaseResults;
.super Ljava/lang/Object;
.source "AndroidDatabaseResults.java"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseResults;


# static fields
.field private static final MIN_NUM_COLUMN_NAMES_MAP:I = 0x8

.field private static final databaseType:Lcom/j256/ormlite/db/DatabaseType;


# instance fields
.field private final columnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnNames:[Ljava/lang/String;

.field private final cursor:Landroid/database/Cursor;

.field private final objectCache:Lcom/j256/ormlite/dao/ObjectCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    .line 46
    :cond_1
    iput-object p2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ZLcom/j256/ormlite/dao/ObjectCache;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "firstCall"    # Z
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V

    .line 57
    return-void
.end method

.method private lookupColumn(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 187
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 201
    .end local v0    # "i":I
    :goto_1
    return v2

    .line 188
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 194
    goto :goto_1

    .line 197
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->columnNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 198
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_3

    move v2, v3

    .line 199
    goto :goto_1

    .line 201
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public findColumn(Ljava/lang/String;)I
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->lookupColumn(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "index":I
    if-ltz v1, :cond_0

    move v2, v1

    .line 94
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    return v2

    .line 90
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/j256/ormlite/android/AndroidDatabaseResults;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v4, v3, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->lookupColumn(Ljava/lang/String;)I

    move-result v1

    .line 93
    if-ltz v1, :cond_1

    move v2, v1

    .line 94
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 96
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "columnNames":[Ljava/lang/String;
    new-instance v4, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' from the Android sqlite cursor, not in:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public first()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Android does not support BigDecimal type.  Use BIG_DECIMAL or BIG_DECIMAL_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlobStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getShort(I)S

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 119
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 121
    :cond_2
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than 1 character stored in database column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
.end method

.method public getRawCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Android does not support timestamp.  Use JAVA_DATE_LONG or JAVA_DATE_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveRelative(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public next()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

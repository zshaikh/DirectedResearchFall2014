.class public Lcom/j256/ormlite/table/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private fieldNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private final foreignAutoCreate:Z

.field private final foreignCollections:[Lcom/j256/ormlite/field/FieldType;

.field private final idField:Lcom/j256/ormlite/field/FieldType;

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/table/TableInfo;->NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 10
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    .local p3, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/j256/ormlite/table/TableInfo;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 63
    invoke-virtual {p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    .line 64
    invoke-virtual {p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    .line 65
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "findIdFieldType":Lcom/j256/ormlite/field/FieldType;
    const/4 v3, 0x0

    .line 69
    .local v3, "foreignAutoCreate":Z
    const/4 v4, 0x0

    .line 70
    .local v4, "foreignCollectionCount":I
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v1, v0, v5

    .line 71
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isId()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    :cond_0
    if-eqz v2, :cond_1

    .line 73
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "More than 1 idField configured for class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_1
    move-object v2, v1

    .line 78
    :cond_2
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 79
    const/4 v3, 0x1

    .line 81
    :cond_3
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 70
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_5
    iput-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    .line 87
    invoke-virtual {p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    .line 88
    iput-boolean v3, p0, Lcom/j256/ormlite/table/TableInfo;->foreignAutoCreate:Z

    .line 89
    if-nez v4, :cond_7

    .line 90
    sget-object v7, Lcom/j256/ormlite/table/TableInfo;->NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    .line 101
    :cond_6
    return-void

    .line 92
    :cond_7
    new-array v7, v4, [Lcom/j256/ormlite/field/FieldType;

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    .line 93
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v1, v0, v5

    .line 95
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 96
    iget-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    aput-object v1, v7, v4

    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 94
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;Ljava/lang/Class;)V
    .locals 2
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 51
    return-void
.end method

.method public static createObject(Ljava/lang/reflect/Constructor;Lcom/j256/ormlite/dao/Dao;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 194
    .local v3, "instance":Ljava/lang/Object;, "TT;"
    instance-of v4, v3, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v4, :cond_0

    .line 196
    move-object v0, v3

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    move-object v1, v0

    .line 197
    .local v1, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v1, p1}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_0
    return-object v3

    .line 200
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create object for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableInfo;->createObject(Ljava/lang/reflect/Constructor;Lcom/j256/ormlite/dao/Dao;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 128
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v6, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 130
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 132
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    iput-object v5, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    .line 136
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;>;"
    :cond_1
    iget-object v6, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/FieldType;

    .line 138
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-eqz v1, :cond_2

    .line 139
    return-object v1

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .restart local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 143
    .local v2, "fieldType2":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You should use columnName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' for table "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead of fieldName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    .end local v2    # "fieldType2":Lcom/j256/ormlite/field/FieldType;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown column name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in table "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getForeignCollections()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getIdField()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hasColumnName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 232
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 233
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const/4 v4, 0x1

    .line 237
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :goto_1
    return v4

    .line 232
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignAutoCreate:Z

    return v0
.end method

.method public isUpdatable()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 169
    .local v2, "fieldType":Lcom/j256/ormlite/field/FieldType;
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not generate toString of field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

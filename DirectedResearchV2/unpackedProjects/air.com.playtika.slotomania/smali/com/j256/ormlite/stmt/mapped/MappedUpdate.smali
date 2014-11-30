.class public Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedUpdate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private final versionFieldType:Lcom/j256/ormlite/field/FieldType;

.field private final versionFieldTypeIndex:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "versionFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p5, "versionFieldTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/field/FieldType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedUpdate;, "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 25
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 26
    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    .line 27
    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .locals 13
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v9

    .line 32
    .local v9, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v9, :cond_0

    .line 33
    new-instance p0, Ljava/sql/SQLException;

    .end local p0    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object p1

    .end local p1    # "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because it doesn\'t have an id field"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    .restart local p0    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    .restart local p1    # "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v0, "UPDATE "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v11, v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v6, 0x1

    .line 38
    .local v6, "first":Z
    const/4 v0, 0x0

    .line 39
    .local v0, "argFieldC":I
    const/4 v4, 0x0

    .line 40
    .local v4, "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    const/4 v5, -0x1

    .line 42
    .local v5, "versionFieldTypeIndex":I
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .local v1, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_3

    aget-object v2, v1, v3

    .line 43
    .local v2, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {v2, v9}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 44
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    move-object v4, v2

    .line 46
    move v5, v0

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i$":I
    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 53
    if-eqz v4, :cond_4

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_4
    new-array v3, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 58
    .local v3, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    .end local v1    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .local v2, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v10, v2

    .end local v7    # "len$":I
    .local v10, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v8, v1

    .end local v1    # "i$":I
    .local v8, "i$":I
    move v1, v0

    .end local v0    # "argFieldC":I
    .local v1, "argFieldC":I
    move v0, v6

    .end local v6    # "first":Z
    .local v0, "first":Z
    :goto_1
    if-ge v8, v10, :cond_7

    aget-object v6, v2, v8

    .line 60
    .local v6, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-static {v6, v9}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v7

    if-nez v7, :cond_5

    move v12, v1

    .end local v1    # "argFieldC":I
    .local v12, "argFieldC":I
    move v1, v0

    .end local v0    # "first":Z
    .local v1, "first":Z
    move v0, v12

    .line 59
    .end local v12    # "argFieldC":I
    .local v0, "argFieldC":I
    :goto_2
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "i$":I
    .local v6, "i$":I
    move v8, v6

    .end local v6    # "i$":I
    .restart local v8    # "i$":I
    move v12, v0

    .end local v0    # "argFieldC":I
    .restart local v12    # "argFieldC":I
    move v0, v1

    .end local v1    # "first":Z
    .local v0, "first":Z
    move v1, v12

    .end local v12    # "argFieldC":I
    .local v1, "argFieldC":I
    goto :goto_1

    .line 63
    .local v6, "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_5
    if-eqz v0, :cond_6

    .line 64
    const-string v0, "SET "

    .end local v0    # "first":Z
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v0, 0x0

    .restart local v0    # "first":Z
    move v7, v0

    .line 69
    .end local v0    # "first":Z
    .local v7, "first":Z
    :goto_3
    const/4 v0, 0x0

    invoke-static {p0, v11, v6, v0}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "argFieldC":I
    .local v0, "argFieldC":I
    aput-object v6, v3, v1

    .line 71
    const-string v1, "= ?"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v7

    .end local v7    # "first":Z
    .local v1, "first":Z
    goto :goto_2

    .line 67
    .local v0, "first":Z
    .local v1, "argFieldC":I
    :cond_6
    const-string v7, ", "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v0

    .end local v0    # "first":Z
    .restart local v7    # "first":Z
    goto :goto_3

    .line 73
    .end local v6    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v7    # "first":Z
    .restart local v0    # "first":Z
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .end local v0    # "first":Z
    const/4 v0, 0x0

    invoke-static {p0, v9, v11, v0}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "argFieldC":I
    .local v0, "argFieldC":I
    aput-object v9, v3, v1

    .line 76
    if-eqz v4, :cond_8

    .line 77
    const-string v1, " AND "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v1, 0x0

    invoke-static {p0, v11, v4, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 79
    const-string p0, "= ?"

    .end local p0    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 p0, v0, 0x1

    .end local v0    # "argFieldC":I
    .local p0, "argFieldC":I
    aput-object v4, v3, v0

    .line 82
    :goto_4
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V

    return-object v0

    .restart local v0    # "argFieldC":I
    .restart local v2    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .local p0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :cond_8
    move p0, v0

    .end local v0    # "argFieldC":I
    .local p0, "argFieldC":I
    goto :goto_4
.end method

.method private static isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 1
    .param p0, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p1, "idField"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    .line 134
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 20
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedUpdate;, "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    array-length v15, v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_0

    .line 92
    const/4 v15, 0x0

    .line 127
    :goto_0
    return v15

    .line 94
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 95
    .local v5, "args":[Ljava/lang/Object;
    const/4 v13, 0x0

    .line 96
    .local v13, "newVersion":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    if-eqz v15, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    invoke-virtual {v15, v13}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v5, v15

    .line 101
    .end local v13    # "newVersion":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v5

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v14

    .line 102
    .local v14, "rowC":I
    if-lez v14, :cond_4

    .line 103
    if-eqz v13, :cond_2

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v2, v13

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 107
    :cond_2
    if-eqz p3, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 110
    .local v11, "id":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->clazz:Ljava/lang/Class;

    move-object v15, v0

    move-object/from16 v0, p3

    move-object v1, v15

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 111
    .local v7, "cachedData":Ljava/lang/Object;, "TT;"
    if-eqz v7, :cond_4

    move-object v0, v7

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    .local v6, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_4

    aget-object v9, v6, v10

    .line 114
    .local v9, "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    move-object v15, v0

    if-eq v9, v15, :cond_3

    .line 115
    move-object v0, v9

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v9

    move-object v1, v7

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 113
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 122
    .end local v6    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v7    # "cachedData":Ljava/lang/Object;, "TT;"
    .end local v9    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v10    # "i$":I
    .end local v11    # "id":Ljava/lang/Object;
    .end local v12    # "len$":I
    :cond_4
    sget-object v15, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v16, "update data with statement \'{}\' and {} args, changed {} rows"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v15 .. v19}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    array-length v15, v5

    if-lez v15, :cond_5

    .line 125
    sget-object v15, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v16, "update arguments: {}"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v15, v14

    .line 127
    goto/16 :goto_0

    .line 128
    .end local v5    # "args":[Ljava/lang/Object;
    .end local v14    # "rowC":I
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 129
    .local v8, "e":Ljava/sql/SQLException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to run update stmt on object "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v15

    throw v15
.end method

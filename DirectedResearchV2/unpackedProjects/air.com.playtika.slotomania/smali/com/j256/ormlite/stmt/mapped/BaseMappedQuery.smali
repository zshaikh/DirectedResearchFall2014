.class public abstract Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "BaseMappedQuery.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private columnPositions:Ljava/util/Map;
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

.field private parent:Ljava/lang/Object;

.field private parentId:Ljava/lang/Object;

.field protected final resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 1
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultsFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 23
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 30
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 31
    return-void
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 20
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery<TT;TID;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 36
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v7, "colPosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/support/DatabaseResults;->getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;

    move-result-object v15

    .line 42
    .local v15, "objectCache":Lcom/j256/ormlite/dao/ObjectCache;
    if-eqz v15, :cond_1

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->idField:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/field/FieldType;->resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v12

    .line 44
    .local v12, "id":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->clazz:Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    .local v6, "cachedInstance":Ljava/lang/Object;, "TT;"
    if-eqz v6, :cond_1

    move-object/from16 v17, v6

    .line 96
    .end local v6    # "cachedInstance":Ljava/lang/Object;, "TT;"
    .end local v12    # "id":Ljava/lang/Object;
    :goto_1
    return-object v17

    .line 38
    .end local v7    # "colPosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "objectCache":Lcom/j256/ormlite/dao/ObjectCache;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    move-object v7, v0

    .restart local v7    # "colPosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 52
    .restart local v15    # "objectCache":Lcom/j256/ormlite/dao/ObjectCache;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/j256/ormlite/table/TableInfo;->createObject()Ljava/lang/Object;

    move-result-object v13

    .line 54
    .local v13, "instance":Ljava/lang/Object;, "TT;"
    const/4 v12, 0x0

    .line 55
    .restart local v12    # "id":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 56
    .local v10, "foreignCollections":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    move-object v5, v0

    .local v5, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move-object/from16 v17, v12

    .end local v12    # "id":Ljava/lang/Object;
    :goto_2
    if-ge v11, v14, :cond_5

    aget-object v9, v5, v11

    .line 57
    .local v9, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v9}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 58
    const/4 v10, 0x1

    .line 56
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 60
    :cond_3
    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/field/FieldType;->resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v16

    .line 67
    .local v16, "val":Ljava/lang/Object;
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual {v9}, Lcom/j256/ormlite/field/FieldType;->getField()Ljava/lang/reflect/Field;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 73
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->idField:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 74
    move-object/from16 v12, v16

    .restart local v12    # "id":Ljava/lang/Object;
    move-object/from16 v17, v12

    goto :goto_3

    .line 71
    .end local v12    # "id":Ljava/lang/Object;
    :cond_4
    const/16 v18, 0x0

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, v16

    move/from16 v3, v18

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    goto :goto_4

    .line 78
    .end local v9    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v16    # "val":Ljava/lang/Object;
    :cond_5
    if-eqz v10, :cond_7

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    move-object v5, v0

    array-length v14, v5

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v14, :cond_7

    aget-object v9, v5, v11

    .line 81
    .restart local v9    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v9}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 82
    const/16 v18, 0x0

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/field/FieldType;->buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/j256/ormlite/dao/BaseForeignCollection;

    move-result-object v8

    .line 83
    .local v8, "collection":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<**>;"
    if-eqz v8, :cond_6

    .line 84
    const/16 v18, 0x0

    move-object v0, v9

    move-object v1, v13

    move-object v2, v8

    move/from16 v3, v18

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 80
    .end local v8    # "collection":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<**>;"
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 90
    .end local v9    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_7
    if-eqz v15, :cond_8

    if-eqz v17, :cond_8

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->clazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object v3, v13

    invoke-interface {v0, v1, v2, v3}, Lcom/j256/ormlite/dao/ObjectCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 94
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    :cond_9
    move-object/from16 v17, v13

    .line 96
    goto/16 :goto_1
.end method

.method public setParentInformation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "parentId"    # Ljava/lang/Object;

    .prologue
    .line 103
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 105
    return-void
.end method

.class public Lcom/j256/ormlite/field/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/field/FieldType$LevelCounters;
    }
.end annotation


# static fields
.field private static DEFAULT_VALUE_BOOLEAN:Z = false

.field private static DEFAULT_VALUE_BYTE:B = 0x0t

.field private static DEFAULT_VALUE_CHAR:C = '\u0000'

.field private static DEFAULT_VALUE_DOUBLE:D = 0.0

.field private static DEFAULT_VALUE_FLOAT:F = 0.0f

.field private static DEFAULT_VALUE_INT:I = 0x0

.field private static DEFAULT_VALUE_LONG:J = 0x0L

.field private static DEFAULT_VALUE_SHORT:S = 0x0s

.field public static final FOREIGN_ID_FIELD_SUFFIX:Ljava/lang/String; = "_id"

.field private static final threadLevelCounters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/j256/ormlite/field/FieldType$LevelCounters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field private dataPersister:Lcom/j256/ormlite/field/DataPersister;

.field private dataTypeConfigObj:Ljava/lang/Object;

.field private defaultValue:Ljava/lang/Object;

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

.field private fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

.field private final fieldGetMethod:Ljava/lang/reflect/Method;

.field private final fieldSetMethod:Ljava/lang/reflect/Method;

.field private foreignConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private foreignDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;"
        }
    .end annotation
.end field

.field private foreignFieldType:Lcom/j256/ormlite/field/FieldType;

.field private foreignIdField:Lcom/j256/ormlite/field/FieldType;

.field private final generatedIdSequence:Ljava/lang/String;

.field private final isGeneratedId:Z

.field private final isId:Z

.field private mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/j256/ormlite/field/FieldType$1;

    invoke-direct {v0}, Lcom/j256/ormlite/field/FieldType$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V
    .locals 18
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "fieldConfig"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 90
    .local p5, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 92
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v5

    .line 94
    .local v5, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    .line 95
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 97
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v15

    if-nez v15, :cond_5

    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getPersisterClass()Ljava/lang/Class;

    move-result-object v11

    .line 99
    .local v11, "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    if-eqz v11, :cond_0

    const-class v15, Lcom/j256/ormlite/field/types/VoidType;

    if-ne v11, v15, :cond_3

    .line 100
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/j256/ormlite/field/DataPersisterManager;->lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object v4

    .line 137
    .end local v11    # "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    .local v4, "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    :cond_1
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "foreignColumnName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "defaultFieldName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v8, :cond_8

    .line 140
    :cond_2
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 141
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is a primitive class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " but marked as foreign"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 104
    .end local v4    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    .end local v6    # "defaultFieldName":Ljava/lang/String;
    .end local v8    # "foreignColumnName":Ljava/lang/String;
    .restart local v11    # "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    :cond_3
    :try_start_0
    const-string v15, "getSingleton"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 111
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_1
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 118
    .local v12, "result":Ljava/lang/Object;
    if-nez v12, :cond_4

    .line 119
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Static getSingleton method should not return null on class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 105
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 106
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not find getSingleton static method on class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v7}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v15

    throw v15

    .line 112
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v15

    move-object v7, v15

    .line 113
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not run getSingleton method on class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v15

    throw v15

    .line 115
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v15

    move-object v7, v15

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not run getSingleton method on class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v7}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v15

    throw v15

    .line 123
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "result":Ljava/lang/Object;
    :cond_4
    :try_start_2
    move-object v0, v12

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .restart local v4    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    goto/16 :goto_0

    .line 124
    .end local v4    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    :catch_3
    move-exception v7

    .line 125
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not cast result of static getSingleton method to DataPersister from class "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v7}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v15

    throw v15

    .line 131
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    .end local v12    # "result":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v4

    .line 132
    .restart local v4    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    move-object v0, v4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/j256/ormlite/field/DataPersister;->isValidForField(Ljava/lang/reflect/Field;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 133
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is not valid for data persister "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 144
    .restart local v6    # "defaultFieldName":Ljava/lang/String;
    .restart local v8    # "foreignColumnName":Ljava/lang/String;
    :cond_6
    if-nez v8, :cond_7

    .line 145
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    :goto_1
    const-class v15, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v15, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 150
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' in class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' should use the @"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Lcom/j256/ormlite/field/ForeignCollectionField;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " annotation not foreign=true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 147
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 153
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 154
    const-class v15, Ljava/util/Collection;

    if-eq v3, v15, :cond_9

    const-class v15, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v15, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 155
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field class for \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' must be of class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " or Collection."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 158
    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 159
    .local v14, "type":Ljava/lang/reflect/Type;
    instance-of v15, v14, Ljava/lang/reflect/ParameterizedType;

    if-nez v15, :cond_a

    .line 160
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field class for \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' must be a parameterized Collection."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 162
    :cond_a
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .end local v14    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 163
    .local v9, "genericArguments":[Ljava/lang/reflect/Type;
    array-length v15, v9

    if-nez v15, :cond_e

    .line 165
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field class for \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' must be a parameterized Collection with at least 1 type."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 168
    .end local v9    # "genericArguments":[Ljava/lang/reflect/Type;
    :cond_b
    if-nez v4, :cond_e

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v15

    if-nez v15, :cond_e

    .line 169
    const-class v15, [B

    invoke-virtual {v15, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 170
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ORMLite can\'t store unknown class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for field \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'. byte[] fields must specify dataType=DataType.BYTE_ARRAY or SERIALIZABLE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 172
    :cond_c
    const-class v15, Ljava/io/Serializable;

    invoke-virtual {v15, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 173
    new-instance v15, Ljava/sql/SQLException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ORMLite can\'t store unknown class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for field \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'. Serializable fields must specify dataType=DataType.SERIALIZABLE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 176
    :cond_d
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ORMLite does not know how to store field class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 180
    :cond_e
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_10

    .line 181
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    .line 185
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 186
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isId()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 187
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 188
    :cond_f
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Must specify one of id, generatedId, and generatedIdSequence with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 183
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    goto :goto_2

    .line 191
    :cond_11
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 192
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 193
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    .line 219
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    move v15, v0

    if-eqz v15, :cond_19

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v15

    if-nez v15, :cond_12

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v15

    if-eqz v15, :cond_19

    .line 220
    :cond_12
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Id field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " cannot also be a foreign object"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 194
    :cond_13
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 195
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 196
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Must specify one of id, generatedId, and generatedIdSequence with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 199
    :cond_14
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 200
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 201
    invoke-interface {v5}, Lcom/j256/ormlite/db/DatabaseType;->isIdSequenceNeeded()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 202
    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/db/DatabaseType;->generateIdSequenceName(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto :goto_3

    .line 204
    :cond_15
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto/16 :goto_3

    .line 206
    :cond_16
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_18

    .line 207
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 208
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 209
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "seqName":Ljava/lang/String;
    invoke-interface {v5}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 211
    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 213
    :cond_17
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto/16 :goto_3

    .line 215
    .end local v13    # "seqName":Ljava/lang/String;
    :cond_18
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 216
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 217
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto/16 :goto_3

    .line 222
    :cond_19
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUseGetSet()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 223
    const/4 v15, 0x1

    move-object/from16 v0, p3

    move v1, v15

    invoke-static {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findGetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    .line 224
    const/4 v15, 0x1

    move-object/from16 v0, p3

    move v1, v15

    invoke-static {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findSetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    .line 237
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isAllowGeneratedIdInsert()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v15

    if-nez v15, :cond_1c

    .line 238
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " must be a generated-id if allowGeneratedIdInsert = true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 226
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v15

    if-nez v15, :cond_1b

    .line 228
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    .line 234
    :cond_1b
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    .line 235
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    goto :goto_4

    .line 229
    :catch_4
    move-exception v15

    move-object v7, v15

    .line 230
    .local v7, "e":Ljava/lang/SecurityException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not open access to field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".  You may have to set useGetSet=true to fix."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 241
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_1c
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v15

    if-nez v15, :cond_1d

    .line 242
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " must have foreign = true if foreignAutoRefresh = true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 245
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoCreate()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 246
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " must have foreign = true if foreignAutoCreate = true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 249
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1f

    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v15

    if-nez v15, :cond_1f

    .line 250
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " must have foreign = true if foreignColumnName is set"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 253
    :cond_1f
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isVersion()Z

    move-result v15

    if-eqz v15, :cond_21

    if-eqz v4, :cond_20

    invoke-interface {v4}, Lcom/j256/ormlite/field/DataPersister;->isValidForVersion()Z

    move-result v15

    if-nez v15, :cond_21

    .line 254
    :cond_20
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is not a valid type to be a version field"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 257
    :cond_21
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/FieldType;->assignDataType(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V

    .line 258
    return-void
.end method

.method private assignDataType(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V
    .locals 11
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const-string v10, "Field \'"

    .line 962
    iput-object p2, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 963
    if-nez p2, :cond_0

    .line 964
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v7

    if-nez v7, :cond_7

    .line 966
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data persister for field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null but the field is not a foreign or foreignCollection"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 971
    :cond_0
    invoke-interface {p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->getFieldConverter(Lcom/j256/ormlite/field/DataPersister;)Lcom/j256/ormlite/field/FieldConverter;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 972
    iget-boolean v7, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    if-eqz v7, :cond_3

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->isValidGeneratedType()Z

    move-result v7

    if-nez v7, :cond_3

    .line 973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v7, "Generated-id field \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const-string v7, "\' in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v7, " can\'t be type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v8}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    const-string v7, ".  Must be one of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/DataType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 979
    .local v1, "dataType":Lcom/j256/ormlite/field/DataType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v5

    .line 980
    .local v5, "persister":Lcom/j256/ormlite/field/DataPersister;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->isValidGeneratedType()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 981
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 984
    .end local v1    # "dataType":Lcom/j256/ormlite/field/DataType;
    .end local v5    # "persister":Lcom/j256/ormlite/field/DataPersister;
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 986
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/DataType;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isThrowIfNull()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_4

    .line 987
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must be a primitive if set with throwIfNull"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 989
    :cond_4
    iget-boolean v7, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    if-eqz v7, :cond_5

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->isAppropriateId()Z

    move-result v7

    if-nez v7, :cond_5

    .line 990
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is of data type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " which cannot be the ID field"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 993
    :cond_5
    invoke-interface {p2, p0}, Lcom/j256/ormlite/field/DataPersister;->makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->dataTypeConfigObj:Ljava/lang/Object;

    .line 994
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, "defaultStr":Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 996
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->defaultValue:Ljava/lang/Object;

    .line 1003
    .end local v2    # "defaultStr":Ljava/lang/String;
    :cond_7
    :goto_1
    return-void

    .line 997
    .restart local v2    # "defaultStr":Ljava/lang/String;
    :cond_8
    iget-boolean v7, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    if-eqz v7, :cond_9

    .line 998
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' cannot be a generatedId and have a default value \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1001
    :cond_9
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v7, p0, v2}, Lcom/j256/ormlite/field/FieldConverter;->parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->defaultValue:Ljava/lang/Object;

    goto :goto_1
.end method

.method public static createFieldType(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
    .locals 7
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 887
    .local p3, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v6

    .line 888
    .local v6, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {v6, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v4

    .line 889
    .local v4, "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-nez v4, :cond_0

    .line 890
    const/4 v0, 0x0

    .line 892
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/field/FieldType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private findForeignFieldType(Ljava/lang/Class;Ljava/lang/Class;Lcom/j256/ormlite/dao/BaseDaoImpl;)Lcom/j256/ormlite/field/FieldType;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "foreignClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "foreignDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    const-string v9, " for field \'"

    .line 934
    iget-object v6, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionForeignFieldName()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "foreignColumnName":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 936
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p2, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 938
    :cond_0
    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v6

    if-nez v6, :cond_4

    .line 940
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Foreign collection object "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for field \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' contains a field of class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but it\'s not foreign"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 935
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 947
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "Foreign collection class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v6, " for field \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' column-name does not contain a foreign field"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    if-eqz v2, :cond_3

    .line 951
    const-string v6, " named \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    :cond_3
    const-string v6, " of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    new-instance v6, Ljava/sql/SQLException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 943
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_4
    return-object v1
.end method

.method private isFieldValueDefault(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "fieldValue"    # Ljava/lang/Object;

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 922
    const/4 v0, 0x1

    .line 924
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->getJavaDefaultValueDefault()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "parentObject"    # Z
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "Could not assign object \'"

    const-string v9, "\' to field "

    .line 486
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 488
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 494
    .local v2, "foreignId":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 543
    .end local v2    # "foreignId":Ljava/lang/Object;
    :goto_0
    return-void

    .line 497
    .restart local v2    # "foreignId":Ljava/lang/Object;
    :cond_0
    if-nez p3, :cond_2

    .line 503
    sget-object v5, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .line 504
    .local v4, "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    iget-object v6, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 507
    :cond_1
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->foreignConstructor:Ljava/lang/reflect/Constructor;

    iget-object v6, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/Dao;

    invoke-static {v5, v6}, Lcom/j256/ormlite/table/TableInfo;->createObject(Ljava/lang/reflect/Constructor;Lcom/j256/ormlite/dao/Dao;)Ljava/lang/Object;

    move-result-object v3

    .line 508
    .local v3, "foreignObject":Ljava/lang/Object;
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v5, v3, p2, v8, p4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 523
    :goto_1
    move-object p2, v3

    .line 527
    .end local v2    # "foreignId":Ljava/lang/Object;
    .end local v3    # "foreignObject":Ljava/lang/Object;
    .end local v4    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    :cond_2
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    .line 529
    :try_start_0
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 531
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not assign object \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to field "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 510
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "foreignId":Ljava/lang/Object;
    .restart local v4    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    :cond_3
    iget v5, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    .line 512
    :try_start_1
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v5}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 514
    .local v0, "databaseConnection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_2
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    invoke-virtual {v5, v0, p2, p4}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 516
    .restart local v3    # "foreignObject":Ljava/lang/Object;
    :try_start_3
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v5, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    iget v5, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    sub-int/2addr v5, v7

    iput v5, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    goto :goto_1

    .line 516
    .end local v3    # "foreignObject":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :try_start_4
    iget-object v6, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v6, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 519
    .end local v0    # "databaseConnection":Lcom/j256/ormlite/support/DatabaseConnection;
    :catchall_1
    move-exception v5

    iget v6, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    sub-int/2addr v6, v7

    iput v6, v4, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshlevel:I

    throw v5

    .line 532
    .end local v2    # "foreignId":Ljava/lang/Object;
    .end local v4    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 533
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not assign object \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to field "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 537
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 538
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on object with \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5
.end method

.method public assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Number;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v1, p2}, Lcom/j256/ormlite/field/DataPersister;->convertIdNumber(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    .local v0, "idVal":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 551
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sequence-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 554
    return-object v0
.end method

.method public buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/j256/ormlite/dao/BaseForeignCollection;
    .locals 8
    .param p3, "forceEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            "FID:",
            "Ljava/lang/Object;",
            ">(TFT;TFID;Z)",
            "Lcom/j256/ormlite/dao/BaseForeignCollection",
            "<TFT;TFID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "parent":Ljava/lang/Object;, "TFT;"
    .local p2, "id":Ljava/lang/Object;, "TFID;"
    const/4 v7, 0x1

    .line 724
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/Dao;

    .line 729
    .local v1, "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TFT;TFID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionEager()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 731
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    iget-object v4, v2, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_1
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .line 737
    .local v6, "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    iget v0, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionMaxEagerLevel()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 739
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    iget-object v4, v2, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_2
    iget v0, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    .line 744
    :try_start_0
    new-instance v0, Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    iget-object v4, v2, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/dao/EagerForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget v2, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    sub-int/2addr v2, v7

    iput v2, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v2, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    sub-int/2addr v2, v7

    iput v2, v6, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    throw v0
.end method

.method public configDaoInformation(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 23
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 268
    .local v8, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v7

    .line 276
    .local v7, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "foreignColumnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v20

    if-nez v20, :cond_0

    if-eqz v9, :cond_5

    .line 278
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v18

    .line 279
    .local v18, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    if-nez v18, :cond_1

    .line 281
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v11

    check-cast v11, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 282
    .local v11, "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    move-object v0, v11

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v14

    .line 289
    .local v14, "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    :goto_0
    if-nez v9, :cond_2

    .line 290
    invoke-virtual {v14}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v13

    .line 291
    .local v13, "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    if-nez v13, :cond_3

    .line 292
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Foreign field "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not have id field"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 284
    .end local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    .end local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 286
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v11

    check-cast v11, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 287
    .restart local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    move-object v0, v11

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v14

    .restart local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v14, v9}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v13

    .line 296
    .restart local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    if-nez v13, :cond_3

    .line 297
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Foreign field "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not have field named \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 302
    :cond_3
    invoke-static {v7, v14, v13}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    move-result-object v5

    .line 305
    .local v5, "castMappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v17, v5

    .line 306
    .local v17, "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v14}, Lcom/j256/ormlite/table/TableInfo;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 307
    .local v10, "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v12, 0x0

    .line 382
    .end local v5    # "castMappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    .end local v18    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    .local v12, "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    .line 383
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->foreignConstructor:Ljava/lang/reflect/Constructor;

    .line 384
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 385
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/Dao;

    .line 386
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/FieldType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v20

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/field/FieldType;->assignDataType(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V

    .line 392
    :cond_4
    return-void

    .line 308
    .end local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v12    # "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    .end local v17    # "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 310
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Field "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is a primitive class "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " but marked as foreign"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 313
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v18

    .line 314
    .restart local v18    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    if-eqz v18, :cond_7

    .line 315
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v11

    .line 328
    .restart local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    :goto_2
    move-object v0, v11

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v14

    .line 329
    .restart local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    invoke-virtual {v14}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v13

    .line 330
    .restart local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v14}, Lcom/j256/ormlite/table/TableInfo;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 331
    .restart local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v13, :cond_8

    .line 332
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Foreign field "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not have id field"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 326
    .end local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    .end local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    :cond_7
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v11

    .restart local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    goto :goto_2

    .line 334
    .restart local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    .restart local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual {v13}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v20

    if-nez v20, :cond_9

    .line 335
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Field "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", if foreignAutoCreate = true then class "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " must have id field with generatedId = true"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 339
    :cond_9
    const/4 v12, 0x0

    .line 340
    .restart local v12    # "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    const/16 v17, 0x0

    .line 341
    .restart local v17    # "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_1

    .end local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v12    # "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    .end local v14    # "foreignTableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<**>;"
    .end local v17    # "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v18    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 342
    const-class v20, Ljava/util/Collection;

    move-object v0, v8

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    const-class v20, Lcom/j256/ormlite/dao/ForeignCollection;

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 343
    new-instance v20, Ljava/sql/SQLException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Field class for \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' must be of class "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-class v22, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " or Collection."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 346
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v19

    .line 347
    .local v19, "type":Ljava/lang/reflect/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 348
    new-instance v20, Ljava/sql/SQLException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Field class for \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' must be a parameterized Collection."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 350
    :cond_c
    check-cast v19, Ljava/lang/reflect/ParameterizedType;

    .end local v19    # "type":Ljava/lang/reflect/Type;
    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    .line 351
    .local v16, "genericArguments":[Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 353
    new-instance v20, Ljava/sql/SQLException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Field class for \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' must be a parameterized Collection with at least 1 type."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 356
    :cond_d
    const/16 v20, 0x0

    aget-object v6, v16, v20

    check-cast v6, Ljava/lang/Class;

    .line 357
    .local v6, "collectionClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v18

    .line 359
    .restart local v18    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    if-nez v18, :cond_e

    .line 361
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 363
    .local v4, "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v15, v4

    .line 369
    .local v15, "foundDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_3
    move-object v11, v15

    .line 370
    .restart local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    check-cast v15, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .end local v15    # "foundDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/field/FieldType;->findForeignFieldType(Ljava/lang/Class;Ljava/lang/Class;Lcom/j256/ormlite/dao/BaseDaoImpl;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v12

    .line 371
    .restart local v12    # "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    const/4 v13, 0x0

    .line 372
    .restart local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    const/4 v10, 0x0

    .line 373
    .restart local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v17, 0x0

    .line 374
    .restart local v17    # "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_1

    .line 366
    .end local v4    # "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    .end local v12    # "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    .end local v17    # "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 367
    .restart local v4    # "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v15, v4

    .restart local v15    # "foundDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_3

    .line 375
    .end local v4    # "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "collectionClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "foundDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "genericArguments":[Ljava/lang/reflect/Type;
    .end local v18    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    :cond_f
    const/4 v10, 0x0

    .line 376
    .restart local v10    # "foreignConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v13, 0x0

    .line 377
    .restart local v13    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    const/4 v12, 0x0

    .line 378
    .restart local v12    # "foreignFieldType":Lcom/j256/ormlite/field/FieldType;
    const/4 v11, 0x0

    .line 379
    .restart local v11    # "foreignDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<**>;"
    const/16 v17, 0x0

    .restart local v17    # "mappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_1
.end method

.method public convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldVal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 610
    if-nez p1, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/field/FieldConverter;->javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createWithForeignDao(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "foreignData":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/Dao;

    .line 879
    .local v0, "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 898
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 899
    :cond_0
    const/4 v2, 0x0

    .line 902
    :goto_0
    return v2

    .line 901
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/field/FieldType;

    move-object v1, v0

    .line 902
    .local v1, "other":Lcom/j256/ormlite/field/FieldType;
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    iget-object v3, v1, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public extractJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 593
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, v0}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 596
    :cond_0
    return-object v0
.end method

.method public extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FV:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TFV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 579
    .local v2, "val":Ljava/lang/Object;
    :goto_0
    move-object v0, v2

    .line 580
    .local v0, "converted":Ljava/lang/Object;, "TFV;"
    return-object v0

    .line 567
    .end local v0    # "converted":Ljava/lang/Object;, "TFV;"
    .end local v2    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get field value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 572
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 573
    .end local v2    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 574
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method public generateId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->generateId()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPersister()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    return-object v0
.end method

.method public getDataTypeConfigObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataTypeConfigObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValueIfNotDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FV:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TFV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 832
    .local v0, "fieldValue":Ljava/lang/Object;, "TFV;"
    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/FieldType;->isFieldValueDefault(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    const/4 v1, 0x0

    .line 835
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getForeignIdField()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneratedIdSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaDefaultValueDefault()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 853
    sget-boolean v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_BOOLEAN:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    .line 855
    :cond_1
    sget-byte v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_BYTE:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_4

    .line 857
    :cond_3
    sget-char v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_CHAR:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_4
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_6

    .line 859
    :cond_5
    sget-short v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_SHORT:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 860
    :cond_6
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_8

    .line 861
    :cond_7
    sget v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_8
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_a

    .line 863
    :cond_9
    sget-wide v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_LONG:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 864
    :cond_a
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_c

    .line 865
    :cond_b
    sget v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_FLOAT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 866
    :cond_c
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_e

    .line 867
    :cond_d
    sget-wide v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_DOUBLE:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 869
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0}, Lcom/j256/ormlite/field/FieldConverter;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueIndexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUniqueIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownEnumVal()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllowGeneratedIdInsert()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isAllowGeneratedIdInsert()Z

    move-result v0

    return v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isArgumentHolderRequired()Z

    move-result v0

    return v0
.end method

.method public isCanBeNull()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isCanBeNull()Z

    move-result v0

    return v0
.end method

.method public isComparable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 691
    :goto_0
    return v0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_1

    .line 688
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error.  Data-persister is not configured for field.  Please post _full_ exception with associated data objects to mailing list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isComparable()Z

    move-result v0

    goto :goto_0
.end method

.method public isEscapedDefaultValue()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isEscapedDefaultValue()Z

    move-result v0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isEscapedValue()Z

    move-result v0

    return v0
.end method

.method public isForeign()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    return v0
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoCreate()Z

    move-result v0

    return v0
.end method

.method public isForeignCollection()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    return v0
.end method

.method public isGeneratedId()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    return v0
.end method

.method public isGeneratedIdSequence()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    return v0
.end method

.method public isObjectsFieldValueDefault(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 844
    .local v0, "fieldValue":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/FieldType;->isFieldValueDefault(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSelfGeneratedId()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isSelfGeneratedId()Z

    move-result v0

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUnique()Z

    move-result v0

    return v0
.end method

.method public isUniqueCombo()Z
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUniqueCombo()Z

    move-result v0

    return v0
.end method

.method public isVersion()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isVersion()Z

    move-result v0

    return v0
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 624
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/field/DataPersister;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p2, "columnPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 755
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 756
    .local v1, "dbColumnPos":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 757
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->findColumn(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 758
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, p1, v3}, Lcom/j256/ormlite/field/FieldConverter;->resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    move-result-object v0

    .line 762
    .local v0, "converted":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->wasNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    .line 780
    :goto_0
    return-object v2

    .line 771
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v2}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isThrowIfNull()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->wasNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 773
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Results value for primitive field \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' was an invalid null value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    :cond_2
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v2}, Lcom/j256/ormlite/field/FieldConverter;->isStreamType()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->wasNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    .line 778
    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 780
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

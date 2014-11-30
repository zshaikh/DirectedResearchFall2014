.class public Lcom/j256/ormlite/field/DatabaseFieldConfig;
.super Ljava/lang/Object;
.source "DatabaseFieldConfig.java"


# static fields
.field private static final DEFAULT_CAN_BE_NULL:Z = true

.field private static final DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

.field private static final DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL:I = 0x1

.field private static final DEFAULT_MAX_FOREIGN_AUTO_REFRESH_LEVEL:I = 0x2

.field private static final DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowGeneratedIdInsert:Z

.field private canBeNull:Z

.field private columnDefinition:Ljava/lang/String;

.field private columnName:Ljava/lang/String;

.field private dataPersister:Lcom/j256/ormlite/field/DataPersister;

.field private dataType:Lcom/j256/ormlite/field/DataType;

.field private defaultValue:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private foreign:Z

.field private foreignAutoCreate:Z

.field private foreignAutoRefresh:Z

.field private foreignCollection:Z

.field private foreignCollectionColumnName:Ljava/lang/String;

.field private foreignCollectionEager:Z

.field private foreignCollectionForeignFieldName:Ljava/lang/String;

.field private foreignCollectionMaxEagerLevel:I

.field private foreignCollectionOrderColumnName:Ljava/lang/String;

.field private foreignColumnName:Ljava/lang/String;

.field private foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;"
        }
    .end annotation
.end field

.field private format:Ljava/lang/String;

.field private generatedId:Z

.field private generatedIdSequence:Ljava/lang/String;

.field private id:Z

.field private index:Z

.field private indexName:Ljava/lang/String;

.field private maxForeignAutoRefreshLevel:I

.field private persisted:Z

.field private persisterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field private throwIfNull:Z

.field private unique:Z

.field private uniqueCombo:Z

.field private uniqueIndex:Z

.field private uniqueIndexName:Ljava/lang/String;

.field private unknownEnumValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private useGetSet:Z

.field private version:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/j256/ormlite/field/types/VoidType;

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    .line 24
    sget-object v0, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 33
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 42
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 52
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 61
    iput v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 33
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 42
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 52
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 61
    iput v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 71
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/field/DataType;Ljava/lang/String;IZZZLjava/lang/String;ZLcom/j256/ormlite/table/DatabaseTableConfig;ZLjava/lang/Enum;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZII)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "dataType"    # Lcom/j256/ormlite/field/DataType;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "canBeNull"    # Z
    .param p7, "id"    # Z
    .param p8, "generatedId"    # Z
    .param p9, "generatedIdSequence"    # Ljava/lang/String;
    .param p10, "foreign"    # Z
    .param p12, "useGetSet"    # Z
    .param p14, "throwIfNull"    # Z
    .param p15, "format"    # Ljava/lang/String;
    .param p16, "unique"    # Z
    .param p17, "indexName"    # Ljava/lang/String;
    .param p18, "uniqueIndexName"    # Ljava/lang/String;
    .param p19, "autoRefresh"    # Z
    .param p20, "maxForeignAutoRefreshLevel"    # I
    .param p21, "maxForeignCollectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/DataType;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;Z",
            "Ljava/lang/Enum",
            "<*>;Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p11, "foreignTableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    .local p13, "unknownEnumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    iput-object v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 51
    const/4 v2, 0x2

    iput v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 52
    sget-object v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    iput-object v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 61
    const/4 v2, 0x1

    iput v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 79
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    iput-object v2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 82
    iput-object p4, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    .line 83
    iput p5, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    .line 84
    iput-boolean p6, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 85
    iput-boolean p7, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    .line 86
    iput-boolean p8, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    .line 87
    iput-object p9, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    .line 88
    iput-boolean p10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    .line 89
    iput-object p11, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 90
    iput-boolean p12, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    .line 91
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    .line 92
    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    .line 93
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    .line 94
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    .line 95
    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 97
    move/from16 v0, p19

    move-object v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 98
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 99
    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 100
    return-void
.end method

.method public static findGetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "throwExceptions"    # Z

    .prologue
    const/4 v5, 0x0

    .line 533
    const-string v3, "get"

    invoke-static {p0, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "methodName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 544
    .local v1, "fieldGetMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 545
    if-eqz p1, :cond_1

    .line 546
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Return type of get method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    .end local v1    # "fieldGetMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 539
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find appropriate get method for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v5

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v3

    .restart local v1    # "fieldGetMethod":Ljava/lang/reflect/Method;
    :cond_1
    move-object v3, v5

    .line 549
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 552
    goto :goto_0
.end method

.method private findIndexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const-string v3, "_idx"

    const-string v2, "_"

    .line 676
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_idx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_idx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "unknownEnumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 635
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 636
    :cond_0
    const/4 v5, 0x0

    .line 640
    :goto_0
    return-object v5

    .line 638
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Enum;

    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/Enum;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 639
    .local v2, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 640
    goto :goto_0

    .line 638
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 643
    .end local v2    # "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknwown enum unknown name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static findSetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "throwExceptions"    # Z

    .prologue
    const/4 v7, 0x0

    .line 561
    const-string v3, "set"

    invoke-static {p0, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "methodName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 572
    .local v1, "fieldSetMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_2

    .line 573
    if-eqz p1, :cond_1

    .line 574
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Return type of set method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of void"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    .end local v1    # "fieldSetMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 567
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find appropriate set method for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v7

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v3

    .restart local v1    # "fieldSetMethod":Ljava/lang/reflect/Method;
    :cond_1
    move-object v3, v7

    .line 577
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 580
    goto :goto_0
.end method

.method public static fromDatabaseField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "databaseField"    # Lcom/j256/ormlite/field/DatabaseField;

    .prologue
    .line 585
    new-instance v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 586
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 587
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 590
    :cond_0
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->columnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 591
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->dataType()Lcom/j256/ormlite/field/DataType;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 593
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->defaultValue()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "defaultValue":Ljava/lang/String;
    const-string v2, "__ormlite__ no default value string was specified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 595
    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    .line 597
    :cond_1
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->width()I

    move-result v2

    iput v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    .line 598
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->canBeNull()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 599
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->id()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    .line 600
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->generatedId()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    .line 601
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->generatedIdSequence()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    .line 602
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreign()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    .line 603
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->useGetSet()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    .line 604
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->unknownEnumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    .line 605
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->throwIfNull()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    .line 606
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->format()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    .line 607
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->unique()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    .line 608
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->uniqueCombo()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueCombo:Z

    .line 611
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->index()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    .line 612
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->indexName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 613
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->uniqueIndex()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    .line 614
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->uniqueIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 615
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreignAutoRefresh()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 616
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->maxForeignAutoRefreshLevel()I

    move-result v2

    iput v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 617
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->persisterClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 618
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->allowGeneratedIdInsert()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->allowGeneratedIdInsert:Z

    .line 619
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->columnDefinition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnDefinition:Ljava/lang/String;

    .line 620
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreignAutoCreate()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoCreate:Z

    .line 621
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->version()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->version:Z

    .line 622
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreignColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    .line 624
    return-object v0
.end method

.method public static fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 4
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 503
    const-class v3, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/DatabaseField;

    .line 504
    .local v1, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    if-eqz v1, :cond_1

    .line 505
    invoke-interface {v1}, Lcom/j256/ormlite/field/DatabaseField;->persisted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-static {p0, p1, p2, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromDatabaseField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v3

    .line 524
    :goto_0
    return-object v3

    .line 508
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 513
    :cond_1
    const-class v3, Lcom/j256/ormlite/field/ForeignCollectionField;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/field/ForeignCollectionField;

    .line 514
    .local v2, "foreignCollection":Lcom/j256/ormlite/field/ForeignCollectionField;
    if-eqz v2, :cond_2

    .line 515
    invoke-static {p0, p2, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromForeignCollection(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/ForeignCollectionField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v3

    goto :goto_0

    .line 521
    :cond_2
    invoke-static {p0, p2}, Lcom/j256/ormlite/misc/JavaxPersistence;->createFieldConfig(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    move-object v3, v0

    .line 524
    goto :goto_0
.end method

.method private static fromForeignCollection(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/ForeignCollectionField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 6
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "foreignCollection"    # Lcom/j256/ormlite/field/ForeignCollectionField;

    .prologue
    const/4 v5, 0x1

    .line 648
    new-instance v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 649
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 650
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 651
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 653
    :cond_0
    iput-boolean v5, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollection:Z

    .line 654
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->eager()Z

    move-result v4

    iput-boolean v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionEager:Z

    .line 656
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->maxEagerForeignCollectionLevel()I

    move-result v3

    .line 657
    .local v3, "maxEagerLevel":I
    if-eq v3, v5, :cond_1

    .line 658
    iput v3, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 662
    :goto_0
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->orderColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    .line 663
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionColumnName:Ljava/lang/String;

    .line 664
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->foreignFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "foreignFieldName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 667
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->foreignColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "foreignColumnName":Ljava/lang/String;
    invoke-static {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    .line 672
    .end local v1    # "foreignColumnName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 660
    .end local v2    # "foreignFieldName":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->maxEagerLevel()I

    move-result v4

    iput v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    goto :goto_0

    .line 670
    .restart local v2    # "foreignFieldName":Ljava/lang/String;
    :cond_2
    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    goto :goto_1
.end method

.method private static methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;

    .prologue
    .line 684
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 685
    :cond_0
    const/4 v0, 0x0

    .line 687
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public getColumnDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPersister()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    goto :goto_0
.end method

.method public getDataType()Lcom/j256/ormlite/field/DataType;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignCollectionColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignCollectionForeignFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignCollectionMaxEagerLevel()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    return v0
.end method

.method public getForeignCollectionOrderColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedIdSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxForeignAutoRefreshLevel()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    return v0
.end method

.method public getPersisterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUniqueIndexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownEnumValue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    return-object v0
.end method

.method public getUnknownEnumvalue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    return v0
.end method

.method public isAllowGeneratedIdInsert()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->allowGeneratedIdInsert:Z

    return v0
.end method

.method public isCanBeNull()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    return v0
.end method

.method public isForeign()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    return v0
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoCreate:Z

    return v0
.end method

.method public isForeignAutoRefresh()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    return v0
.end method

.method public isForeignCollection()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollection:Z

    return v0
.end method

.method public isForeignCollectionEager()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionEager:Z

    return v0
.end method

.method public isGeneratedId()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    return v0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    return v0
.end method

.method public isIndex()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    return v0
.end method

.method public isThrowIfNull()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    return v0
.end method

.method public isUniqueCombo()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueCombo:Z

    return v0
.end method

.method public isUniqueIndex()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    return v0
.end method

.method public isUseGetSet()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    return v0
.end method

.method public isVersion()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->version:Z

    return v0
.end method

.method public setAllowGeneratedIdInsert(Z)V
    .locals 0
    .param p1, "allowGeneratedIdInsert"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->allowGeneratedIdInsert:Z

    .line 461
    return-void
.end method

.method public setCanBeNull(Z)V
    .locals 0
    .param p1, "canBeNull"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 184
    return-void
.end method

.method public setColumnDefinition(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnDefinition"    # Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnDefinition:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V
    .locals 0
    .param p1, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 151
    return-void
.end method

.method public setDataType(Lcom/j256/ormlite/field/DataType;)V
    .locals 0
    .param p1, "dataType"    # Lcom/j256/ormlite/field/DataType;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 133
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setForeign(Z)V
    .locals 0
    .param p1, "foreign"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    .line 228
    return-void
.end method

.method public setForeignAutoCreate(Z)V
    .locals 0
    .param p1, "foreignAutoCreate"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoCreate:Z

    .line 477
    return-void
.end method

.method public setForeignAutoRefresh(Z)V
    .locals 0
    .param p1, "foreignAutoRefresh"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 349
    return-void
.end method

.method public setForeignCollection(Z)V
    .locals 0
    .param p1, "foreignCollection"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollection:Z

    .line 373
    return-void
.end method

.method public setForeignCollectionColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionColumn"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionColumnName:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setForeignCollectionEager(Z)V
    .locals 0
    .param p1, "foreignCollectionEager"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionEager:Z

    .line 381
    return-void
.end method

.method public setForeignCollectionForeignColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionForeignColumnName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setForeignCollectionForeignFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionForeignFieldName"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setForeignCollectionMaxEagerForeignCollectionLevel(I)V
    .locals 0
    .param p1, "maxEagerForeignCollectionLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 405
    return-void
.end method

.method public setForeignCollectionMaxEagerLevel(I)V
    .locals 0
    .param p1, "foreignCollectionMaxEagerLevel"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 389
    return-void
.end method

.method public setForeignCollectionOrderColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionOrderColumn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setForeignCollectionOrderColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionOrderColumn"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setForeignColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignColumnName"    # Ljava/lang/String;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public setForeignTableConfig(Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "foreignTableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 240
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setGeneratedId(Z)V
    .locals 0
    .param p1, "generatedId"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    .line 206
    return-void
.end method

.method public setGeneratedIdSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "generatedIdSequence"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setId(Z)V
    .locals 0
    .param p1, "id"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    .line 195
    return-void
.end method

.method public setIndex(Z)V
    .locals 0
    .param p1, "index"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    .line 315
    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0
    .param p1, "indexName"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setMaxEagerForeignCollectionLevel(I)V
    .locals 0
    .param p1, "maxEagerForeignCollectionLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 397
    return-void
.end method

.method public setMaxForeignAutoRefreshLevel(I)V
    .locals 0
    .param p1, "maxForeignLevel"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 361
    return-void
.end method

.method public setPersisted(Z)V
    .locals 0
    .param p1, "persisted"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 283
    return-void
.end method

.method public setPersisterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 453
    return-void
.end method

.method public setThrowIfNull(Z)V
    .locals 0
    .param p1, "throwIfNull"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    .line 275
    return-void
.end method

.method public setUnique(Z)V
    .locals 0
    .param p1, "unique"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    .line 299
    return-void
.end method

.method public setUniqueCombo(Z)V
    .locals 0
    .param p1, "uniqueCombo"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueCombo:Z

    .line 307
    return-void
.end method

.method public setUniqueIndex(Z)V
    .locals 0
    .param p1, "uniqueIndex"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    .line 334
    return-void
.end method

.method public setUniqueIndexName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueIndexName"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setUnknownEnumValue(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "unknownEnumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    .line 267
    return-void
.end method

.method public setUseGetSet(Z)V
    .locals 0
    .param p1, "useGetSet"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    .line 251
    return-void
.end method

.method public setVersion(Z)V
    .locals 0
    .param p1, "version"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->version:Z

    .line 485
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    .line 173
    return-void
.end method

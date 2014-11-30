.class public Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;
.super Ljava/lang/Object;
.source "DatabaseFieldConfigLoader.java"


# static fields
.field private static final CONFIG_FILE_END_MARKER:Ljava/lang/String; = "# --field-end--"

.field private static final CONFIG_FILE_START_MARKER:Ljava/lang/String; = "# --field-start--"

.field private static final DEFAULT_CAN_BE_NULL:Z = true

.field private static final DEFAULT_DATA_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

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

.field private static final FIELD_NAME_ALLOW_GENERATED_ID_INSERT:Ljava/lang/String; = "allowGeneratedIdInsert"

.field private static final FIELD_NAME_CAN_BE_NULL:Ljava/lang/String; = "canBeNull"

.field private static final FIELD_NAME_COLUMN_DEFINITION:Ljava/lang/String; = "columnDefinition"

.field private static final FIELD_NAME_COLUMN_NAME:Ljava/lang/String; = "columnName"

.field private static final FIELD_NAME_DATA_PERSISTER:Ljava/lang/String; = "dataPersister"

.field private static final FIELD_NAME_DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field private static final FIELD_NAME_FIELD_NAME:Ljava/lang/String; = "fieldName"

.field private static final FIELD_NAME_FOREIGN:Ljava/lang/String; = "foreign"

.field private static final FIELD_NAME_FOREIGN_AUTO_CREATE:Ljava/lang/String; = "foreignAutoCreate"

.field private static final FIELD_NAME_FOREIGN_AUTO_REFRESH:Ljava/lang/String; = "foreignAutoRefresh"

.field private static final FIELD_NAME_FOREIGN_COLLECTION:Ljava/lang/String; = "foreignCollection"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_COLUMN_NAME:Ljava/lang/String; = "foreignCollectionColumnName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_EAGER:Ljava/lang/String; = "foreignCollectionEager"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_FOREIGN_FIELD_NAME:Ljava/lang/String; = "foreignCollectionForeignFieldName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_FOREIGN_FIELD_NAME_OLD:Ljava/lang/String; = "foreignCollectionForeignColumnName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_ORDER_COLUMN_NAME:Ljava/lang/String; = "foreignCollectionOrderColumnName"

.field private static final FIELD_NAME_FOREIGN_COLLECTION_ORDER_COLUMN_NAME_OLD:Ljava/lang/String; = "foreignCollectionOrderColumn"

.field private static final FIELD_NAME_FORMAT:Ljava/lang/String; = "format"

.field private static final FIELD_NAME_GENERATED_ID:Ljava/lang/String; = "generatedId"

.field private static final FIELD_NAME_GENERATED_ID_SEQUENCE:Ljava/lang/String; = "generatedIdSequence"

.field private static final FIELD_NAME_ID:Ljava/lang/String; = "id"

.field private static final FIELD_NAME_INDEX:Ljava/lang/String; = "index"

.field private static final FIELD_NAME_INDEX_NAME:Ljava/lang/String; = "indexName"

.field private static final FIELD_NAME_MAX_EAGER_FOREIGN_COLLECTION_LEVEL:Ljava/lang/String; = "foreignCollectionMaxEagerLevel"

.field private static final FIELD_NAME_MAX_EAGER_FOREIGN_COLLECTION_LEVEL_OLD:Ljava/lang/String; = "maxEagerForeignCollectionLevel"

.field private static final FIELD_NAME_MAX_FOREIGN_AUTO_REFRESH_LEVEL:Ljava/lang/String; = "maxForeignAutoRefreshLevel"

.field private static final FIELD_NAME_PERSISTER_CLASS:Ljava/lang/String; = "persisterClass"

.field private static final FIELD_NAME_THROW_IF_NULL:Ljava/lang/String; = "throwIfNull"

.field private static final FIELD_NAME_UNIQUE:Ljava/lang/String; = "unique"

.field private static final FIELD_NAME_UNIQUE_COMBO:Ljava/lang/String; = "uniqueCombo"

.field private static final FIELD_NAME_UNIQUE_INDEX:Ljava/lang/String; = "uniqueIndex"

.field private static final FIELD_NAME_UNIQUE_INDEX_NAME:Ljava/lang/String; = "uniqueIndexName"

.field private static final FIELD_NAME_UNKNOWN_ENUM_VALUE:Ljava/lang/String; = "unknownEnumValue"

.field private static final FIELD_NAME_USE_GET_SET:Ljava/lang/String; = "useGetSet"

.field private static final FIELD_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final FIELD_NAME_WIDTH:Ljava/lang/String; = "width"

.field private static final FOREIGN_COLUMN_NAME:Ljava/lang/String; = "foreignColumnName"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/j256/ormlite/field/types/VoidType;

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    .line 25
    sget-object v0, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->DEFAULT_DATA_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromReader(Ljava/io/BufferedReader;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 8
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 35
    .local v1, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    const/4 v0, 0x0

    .line 39
    .local v0, "anything":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 43
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 62
    :cond_1
    if-eqz v0, :cond_4

    move-object v5, v1

    .line 66
    :goto_1
    return-object v5

    .line 40
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Could not read DatabaseFieldConfig from stream"

    invoke-static {v5, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 47
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    const-string v5, "# --field-end--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "# --field-start--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 54
    const-string v5, "="

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 56
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DatabaseFieldConfig reading from stream cannot parse line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v1, v5, v6}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->readField(Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 66
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static readField(Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "fieldName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFieldName(Ljava/lang/String;)V

    .line 409
    .end local p1    # "field":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local p1    # "field":Ljava/lang/String;
    :cond_1
    const-string v0, "columnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    const-string v0, "dataPersister"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-static {p2}, Lcom/j256/ormlite/field/DataType;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/field/DataType;

    move-result-object p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V

    goto :goto_0

    .line 302
    .restart local p1    # "field":Ljava/lang/String;
    :cond_3
    const-string v0, "defaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_4
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    goto :goto_0

    .line 306
    .restart local p1    # "field":Ljava/lang/String;
    :cond_5
    const-string v0, "canBeNull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    goto :goto_0

    .line 308
    .restart local p1    # "field":Ljava/lang/String;
    :cond_6
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    goto :goto_0

    .line 310
    .restart local p1    # "field":Ljava/lang/String;
    :cond_7
    const-string v0, "generatedId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    goto :goto_0

    .line 312
    .restart local p1    # "field":Ljava/lang/String;
    :cond_8
    const-string v0, "generatedIdSequence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedIdSequence(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_9
    const-string v0, "foreign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    goto/16 :goto_0

    .line 316
    .restart local p1    # "field":Ljava/lang/String;
    :cond_a
    const-string v0, "useGetSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 317
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    goto/16 :goto_0

    .line 318
    .restart local p1    # "field":Ljava/lang/String;
    :cond_b
    const-string v0, "unknownEnumValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    const-string p1, "#"

    .end local p1    # "field":Ljava/lang/String;
    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "parts":[Ljava/lang/String;
    array-length p1, v4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    .line 321
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for unknownEnumValue which should be in class#name format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    .restart local p0    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :cond_c
    const/4 p1, 0x0

    :try_start_0
    aget-object p1, v4, p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 330
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    .line 331
    .local p1, "consts":[Ljava/lang/Object;
    if-nez p1, :cond_d

    .line 332
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "consts":[Ljava/lang/Object;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid class is not an Enum for unknownEnumValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    .restart local p0    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :catch_0
    move-exception p0

    .line 328
    .local p0, "e":Ljava/lang/ClassNotFoundException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown class specified for unknownEnumValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    .local p0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .restart local p1    # "consts":[Ljava/lang/Object;
    :cond_d
    check-cast p1, [Ljava/lang/Enum;

    .end local p1    # "consts":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Enum;

    .line 336
    .local p1, "enumConstants":[Ljava/lang/Enum;
    const/4 v0, 0x0

    .line 337
    .local v0, "found":Z
    move-object p1, p1

    .local p1, "arr$":[Ljava/lang/Enum;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    move v1, v0

    .end local v0    # "found":Z
    .local v1, "found":Z
    :goto_1
    if-ge v2, v3, :cond_e

    aget-object v0, p1, v2

    .line 338
    .local v0, "enumInstance":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 339
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnknownEnumValue(Ljava/lang/Enum;)V

    .line 340
    const/4 v0, 0x1

    .line 337
    .end local v1    # "found":Z
    .local v0, "found":Z
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i$":I
    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    move v1, v0

    .end local v0    # "found":Z
    .local v1, "found":Z
    goto :goto_1

    .line 343
    :cond_e
    if-nez v1, :cond_0

    .line 344
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "arr$":[Ljava/lang/Enum;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid enum value name for unknownEnumvalue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    .end local v1    # "found":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "parts":[Ljava/lang/String;
    .restart local p0    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .local p1, "field":Ljava/lang/String;
    :cond_f
    const-string v0, "throwIfNull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 347
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setThrowIfNull(Z)V

    goto/16 :goto_0

    .line 348
    .restart local p1    # "field":Ljava/lang/String;
    :cond_10
    const-string v0, "format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 349
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_11
    const-string v0, "unique"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 351
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    goto/16 :goto_0

    .line 352
    .restart local p1    # "field":Ljava/lang/String;
    :cond_12
    const-string v0, "uniqueCombo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 353
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueCombo(Z)V

    goto/16 :goto_0

    .line 354
    .restart local p1    # "field":Ljava/lang/String;
    :cond_13
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 355
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    goto/16 :goto_0

    .line 356
    .restart local p1    # "field":Ljava/lang/String;
    :cond_14
    const-string v0, "indexName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 357
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    .line 358
    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndexName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    .restart local p1    # "field":Ljava/lang/String;
    :cond_15
    const-string v0, "uniqueIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 360
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    goto/16 :goto_0

    .line 361
    .restart local p1    # "field":Ljava/lang/String;
    :cond_16
    const-string v0, "uniqueIndexName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 362
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    .line 363
    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndexName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .restart local p1    # "field":Ljava/lang/String;
    :cond_17
    const-string v0, "foreignAutoRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 365
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoRefresh(Z)V

    goto/16 :goto_0

    .line 366
    .restart local p1    # "field":Ljava/lang/String;
    :cond_18
    const-string v0, "maxForeignAutoRefreshLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setMaxForeignAutoRefreshLevel(I)V

    goto/16 :goto_0

    .line 368
    .restart local p1    # "field":Ljava/lang/String;
    :cond_19
    const-string v0, "persisterClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 371
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 372
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisterClass(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 373
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    :catch_1
    move-exception p0

    .line 374
    .local p0, "e":Ljava/lang/ClassNotFoundException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find persisterClass: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 376
    .local p0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .local p1, "field":Ljava/lang/String;
    :cond_1a
    const-string v0, "allowGeneratedIdInsert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 377
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setAllowGeneratedIdInsert(Z)V

    goto/16 :goto_0

    .line 378
    .restart local p1    # "field":Ljava/lang/String;
    :cond_1b
    const-string v0, "columnDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 379
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :cond_1c
    const-string v0, "foreignAutoCreate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 381
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoCreate(Z)V

    goto/16 :goto_0

    .line 382
    .restart local p1    # "field":Ljava/lang/String;
    :cond_1d
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 383
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    goto/16 :goto_0

    .line 384
    .restart local p1    # "field":Ljava/lang/String;
    :cond_1e
    const-string v0, "foreignColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 385
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignColumnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_1f
    const-string v0, "foreignCollection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 391
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollection(Z)V

    goto/16 :goto_0

    .line 392
    .restart local p1    # "field":Ljava/lang/String;
    :cond_20
    const-string v0, "foreignCollectionEager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 393
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionEager(Z)V

    goto/16 :goto_0

    .line 394
    .restart local p1    # "field":Ljava/lang/String;
    :cond_21
    const-string v0, "maxEagerForeignCollectionLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 395
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionMaxEagerLevel(I)V

    goto/16 :goto_0

    .line 396
    .restart local p1    # "field":Ljava/lang/String;
    :cond_22
    const-string v0, "foreignCollectionMaxEagerLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 397
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionMaxEagerLevel(I)V

    goto/16 :goto_0

    .line 398
    .restart local p1    # "field":Ljava/lang/String;
    :cond_23
    const-string v0, "foreignCollectionColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 399
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionColumnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :cond_24
    const-string v0, "foreignCollectionOrderColumn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 401
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionOrderColumnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_25
    const-string v0, "foreignCollectionOrderColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 403
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionOrderColumnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_26
    const-string v0, "foreignCollectionForeignColumnName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 405
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionForeignFieldName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_27
    const-string v0, "foreignCollectionForeignFieldName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .end local p1    # "field":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignCollectionForeignFieldName(Ljava/lang/String;)V

    goto/16 :goto_0

    .local v0, "enumInstance":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .restart local v1    # "found":Z
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "parts":[Ljava/lang/String;
    .local p1, "arr$":[Ljava/lang/Enum;
    :cond_28
    move v0, v1

    .end local v1    # "found":Z
    .local v0, "found":Z
    goto/16 :goto_2
.end method

.method public static write(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->writeConfig(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Could not write config to writer"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static writeConfig(Ljava/io/BufferedWriter;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;)V
    .locals 13
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/16 v10, 0x3d

    const-string v11, "true"

    .line 126
    const-string v8, "# --field-start--"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 127
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 128
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 129
    const-string v8, "fieldName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 130
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 133
    const-string v8, "columnName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 134
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v8

    sget-object v9, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->DEFAULT_DATA_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    if-eq v8, v9, :cond_4

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "found":Z
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/DataType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 139
    .local v1, "dataType":Lcom/j256/ormlite/field/DataType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 140
    const-string v8, "dataPersister"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v1}, Lcom/j256/ormlite/field/DataType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 141
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 142
    const/4 v3, 0x1

    .line 146
    .end local v1    # "dataType":Lcom/j256/ormlite/field/DataType;
    :cond_2
    if-nez v3, :cond_4

    .line 147
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown data persister field: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 138
    .restart local v1    # "dataType":Lcom/j256/ormlite/field/DataType;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/DataType;
    .end local v1    # "dataType":Lcom/j256/ormlite/field/DataType;
    .end local v3    # "found":Z
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_4
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 151
    const-string v8, "defaultValue"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 152
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 154
    :cond_5
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getWidth()I

    move-result v8

    if-eqz v8, :cond_6

    .line 155
    const-string v8, "width"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 156
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 158
    :cond_6
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isCanBeNull()Z

    move-result v8

    if-eq v8, v12, :cond_7

    .line 159
    const-string v8, "canBeNull"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isCanBeNull()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 160
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 162
    :cond_7
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isId()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 163
    const-string v8, "id"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 164
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 166
    :cond_8
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 167
    const-string v8, "generatedId"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 168
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 170
    :cond_9
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 171
    const-string v8, "generatedIdSequence"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 172
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 174
    :cond_a
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 175
    const-string v8, "foreign"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 176
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 178
    :cond_b
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUseGetSet()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 179
    const-string v8, "useGetSet"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 180
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 182
    :cond_c
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 183
    const-string v8, "unknownEnumValue"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 188
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 190
    :cond_d
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isThrowIfNull()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 191
    const-string v8, "throwIfNull"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 192
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 194
    :cond_e
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 195
    const-string v8, "format"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 196
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 198
    :cond_f
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUnique()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 199
    const-string v8, "unique"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 200
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 202
    :cond_10
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUniqueCombo()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 203
    const-string v8, "uniqueCombo"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 204
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 206
    :cond_11
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "indexName":Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 208
    const-string v8, "indexName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 209
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 211
    :cond_12
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUniqueIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "uniqueIndexName":Ljava/lang/String;
    if-eqz v7, :cond_13

    .line 213
    const-string v8, "uniqueIndexName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 214
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 216
    :cond_13
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 217
    const-string v8, "foreignAutoRefresh"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 218
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 220
    :cond_14
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_15

    .line 221
    const-string v8, "maxForeignAutoRefreshLevel"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 224
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 226
    :cond_15
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getPersisterClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    if-eq v8, v9, :cond_16

    .line 227
    const-string v8, "persisterClass"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getPersisterClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 228
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 230
    :cond_16
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isAllowGeneratedIdInsert()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 231
    const-string v8, "allowGeneratedIdInsert"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 232
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 234
    :cond_17
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnDefinition()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 235
    const-string v8, "columnDefinition"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnDefinition()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 236
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 238
    :cond_18
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoCreate()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 239
    const-string v8, "foreignAutoCreate"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 240
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 242
    :cond_19
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isVersion()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 243
    const-string v8, "version"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 244
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 246
    :cond_1a
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "foreignColumnName":Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 248
    const-string v8, "foreignColumnName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 249
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 255
    :cond_1b
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 256
    const-string v8, "foreignCollection"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 257
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 259
    :cond_1c
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionEager()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 260
    const-string v8, "foreignCollectionEager"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v11}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 261
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 263
    :cond_1d
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionMaxEagerLevel()I

    move-result v8

    if-eq v8, v12, :cond_1e

    .line 264
    const-string v8, "foreignCollectionMaxEagerLevel"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionMaxEagerLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 267
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 269
    :cond_1e
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionColumnName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 270
    const-string v8, "foreignCollectionColumnName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 273
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 275
    :cond_1f
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 276
    const-string v8, "foreignCollectionOrderColumnName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 279
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 281
    :cond_20
    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionForeignFieldName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 282
    const-string v8, "foreignCollectionForeignFieldName"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionForeignFieldName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 285
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 288
    :cond_21
    const-string v8, "# --field-end--"

    invoke-virtual {p0, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 289
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 290
    return-void
.end method

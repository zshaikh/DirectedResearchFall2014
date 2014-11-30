.class public Lcom/j256/ormlite/android/DatabaseTableConfigUtil;
.super Ljava/lang/Object;
.source "DatabaseTableConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;
    }
.end annotation


# static fields
.field private static final ALLOW_GENERATED_ID_INSERT:I = 0x18

.field private static final CAN_BE_NULL:I = 0x5

.field private static final COLUMN_DEFINITON:I = 0x19

.field private static final COLUMN_NAME:I = 0x1

.field private static final DATA_TYPE:I = 0x2

.field private static final DEFAULT_VALUE:I = 0x3

.field private static final FOREIGN:I = 0x9

.field private static final FOREIGN_AUTO_CREATE:I = 0x1a

.field private static final FOREIGN_AUTO_REFRESH:I = 0x15

.field private static final FOREIGN_COLUMN_NAME:I = 0x1c

.field private static final FORMAT:I = 0xe

.field private static final GENERATED_ID:I = 0x7

.field private static final GENERATED_ID_SEQUENCE:I = 0x8

.field private static final ID:I = 0x6

.field private static final INDEX:I = 0x11

.field private static final INDEX_NAME:I = 0x13

.field private static final MAX_FOREIGN_AUTO_REFRESH_LEVEL:I = 0x16

.field private static final PERSISTED:I = 0xd

.field private static final PERSISTER_CLASS:I = 0x17

.field private static final THROW_IF_NULL:I = 0xc

.field private static final UNIQUE:I = 0xf

.field private static final UNIQUE_COMBO:I = 0x10

.field private static final UNIQUE_INDEX:I = 0x12

.field private static final UNIQUE_INDEX_NAME:I = 0x14

.field private static final UNKNOWN_ENUM_NAME:I = 0xb

.field private static final USE_GET_SET:I = 0xa

.field private static final VERSION:I = 0x1b

.field private static final WIDTH:I = 0x4

.field private static annotationFactoryClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static annotationMemberClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final configFieldNums:[I

.field private static elementsField:Ljava/lang/reflect/Field;

.field private static nameField:Ljava/lang/reflect/Field;

.field private static valueField:Ljava/lang/reflect/Field;

.field private static workedC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    .line 38
    invoke-static {}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->lookupClasses()[I

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method private static assignConfigField(ILcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 6
    .param p0, "configNum"    # I
    .param p1, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 296
    packed-switch p0, :pswitch_data_0

    .line 387
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find support for DatabaseField number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :pswitch_0
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 301
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p3, Lcom/j256/ormlite/field/DataType;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    goto :goto_0

    .line 304
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_2
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 305
    .local v2, "defaultValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "__ormlite__ no default value string was specified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    invoke-virtual {p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v2    # "defaultValue":Ljava/lang/String;
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    goto :goto_0

    .line 313
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    goto :goto_0

    .line 316
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    goto :goto_0

    .line 319
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    goto :goto_0

    .line 322
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedIdSequence(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    goto :goto_0

    .line 328
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    goto :goto_0

    .line 331
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p2, p3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnknownEnumValue(Ljava/lang/Enum;)V

    goto :goto_0

    .line 334
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setThrowIfNull(Z)V

    goto :goto_0

    .line 337
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisted(Z)V

    goto :goto_0

    .line 340
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    goto/16 :goto_0

    .line 346
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueCombo(Z)V

    goto/16 :goto_0

    .line 349
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    goto/16 :goto_0

    .line 352
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_11
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    goto/16 :goto_0

    .line 355
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_12
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndexName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_13
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndexName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_14
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoRefresh(Z)V

    goto/16 :goto_0

    .line 364
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_15
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setMaxForeignAutoRefreshLevel(I)V

    goto/16 :goto_0

    .line 368
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_16
    move-object v0, p3

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 369
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    invoke-virtual {p1, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisterClass(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 372
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    :pswitch_17
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setAllowGeneratedIdInsert(Z)V

    goto/16 :goto_0

    .line 375
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_18
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_19
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoCreate(Z)V

    goto/16 :goto_0

    .line 381
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_1a
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    goto/16 :goto_0

    .line 384
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_1b
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignColumnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private static buildConfig(Lcom/j256/ormlite/field/DatabaseField;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 10
    .param p0, "databaseField"    # Lcom/j256/ormlite/field/DatabaseField;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 271
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v5

    .line 272
    .local v5, "proxy":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    if-eq v7, v8, :cond_0

    move-object v7, v9

    .line 288
    :goto_0
    return-object v7

    .line 276
    :cond_0
    sget-object v7, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 277
    .local v2, "elementsObject":Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v7, v9

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    new-instance v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    check-cast v2, [Ljava/lang/Object;

    .end local v2    # "elementsObject":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 282
    .local v4, "objs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v7, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 283
    sget-object v7, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 284
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 285
    sget-object v7, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    aget v7, v7, v3

    invoke-static {v7, v1, p2, v6}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->assignConfigField(ILcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 282
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v6    # "value":Ljava/lang/Object;
    :cond_3
    move-object v7, v1

    .line 288
    goto :goto_0
.end method

.method private static configFieldNameToNum(Ljava/lang/String;)I
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "columnName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    .line 168
    :cond_0
    const-string v0, "dataType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "defaultValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x3

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "width"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const/4 v0, 0x4

    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "canBeNull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    const/4 v0, 0x5

    goto :goto_0

    .line 176
    :cond_4
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    const/4 v0, 0x6

    goto :goto_0

    .line 178
    :cond_5
    const-string v0, "generatedId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const/4 v0, 0x7

    goto :goto_0

    .line 180
    :cond_6
    const-string v0, "generatedIdSequence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    const/16 v0, 0x8

    goto :goto_0

    .line 182
    :cond_7
    const-string v0, "foreign"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    const/16 v0, 0x9

    goto :goto_0

    .line 184
    :cond_8
    const-string v0, "useGetSet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 185
    const/16 v0, 0xa

    goto :goto_0

    .line 186
    :cond_9
    const-string v0, "unknownEnumName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    const/16 v0, 0xb

    goto :goto_0

    .line 188
    :cond_a
    const-string v0, "throwIfNull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    const/16 v0, 0xc

    goto :goto_0

    .line 190
    :cond_b
    const-string v0, "persisted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    const/16 v0, 0xd

    goto :goto_0

    .line 192
    :cond_c
    const-string v0, "format"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 194
    :cond_d
    const-string v0, "unique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 196
    :cond_e
    const-string v0, "uniqueCombo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 197
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 198
    :cond_f
    const-string v0, "index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 199
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 200
    :cond_10
    const-string v0, "uniqueIndex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 201
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 202
    :cond_11
    const-string v0, "indexName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 203
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 204
    :cond_12
    const-string v0, "uniqueIndexName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 205
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 206
    :cond_13
    const-string v0, "foreignAutoRefresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 207
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 208
    :cond_14
    const-string v0, "maxForeignAutoRefreshLevel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 209
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 210
    :cond_15
    const-string v0, "persisterClass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 211
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 212
    :cond_16
    const-string v0, "allowGeneratedIdInsert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 213
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 214
    :cond_17
    const-string v0, "columnDefinition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 215
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 216
    :cond_18
    const-string v0, "foreignAutoCreate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 217
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 218
    :cond_19
    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 219
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 220
    :cond_1a
    const-string v0, "foreignColumnName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 221
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 223
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find support for DatabaseField "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static configFromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    if-nez v2, :cond_0

    .line 234
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    .line 261
    :goto_0
    return-object v2

    .line 241
    :cond_0
    const-class v2, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/DatabaseField;

    .line 243
    .local v1, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    const/4 v0, 0x0

    .line 245
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v1, :cond_1

    .line 246
    :try_start_0
    invoke-static {v1, p1, p2}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->buildConfig(Lcom/j256/ormlite/field/DatabaseField;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 258
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    goto :goto_0

    .line 260
    :cond_2
    sget v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    move-object v2, v0

    .line 261
    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 10
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v3

    .line 46
    .local v3, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v5, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    move-object v1, p1

    .local v1, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v4, v0, v6

    .line 50
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-static {v3, v8, v4}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    .line 51
    .local v2, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isPersisted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 52
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 56
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 57
    const/4 v9, 0x0

    .line 59
    :goto_2
    return-object v9

    :cond_3
    new-instance v9, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v9, p1, v8, v5}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static getWorkedC()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    return v0
.end method

.method private static lookupClasses()[I
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-string v11, "org.apache.harmony.lang.annotation.AnnotationMember"

    .line 77
    :try_start_0
    const-string v11, "org.apache.harmony.lang.annotation.AnnotationFactory"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    .line 78
    const-string v11, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    .line 79
    const-string v11, "[Lorg.apache.harmony.lang.annotation.AnnotationMember;"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    .local v1, "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    const-string v12, "elements"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    .line 88
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    const-string v12, "name"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    .line 91
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    const-string v12, "value"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    .line 93
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    const-class v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;

    const-string v12, "field"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 102
    .local v7, "fieldField":Ljava/lang/reflect/Field;
    const-class v11, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/field/DatabaseField;

    .line 103
    .local v3, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v10

    .line 104
    .local v10, "proxy":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    if-eq v11, v12, :cond_0

    move-object v11, v13

    .line 125
    .end local v1    # "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    .end local v7    # "fieldField":Ljava/lang/reflect/Field;
    .end local v10    # "proxy":Ljava/lang/reflect/InvocationHandler;
    :goto_0
    return-object v11

    .line 81
    :catch_0
    move-exception v11

    move-object v4, v11

    .local v4, "e":Ljava/lang/ClassNotFoundException;
    move-object v11, v13

    .line 82
    goto :goto_0

    .line 96
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v11

    move-object v4, v11

    .local v4, "e":Ljava/lang/SecurityException;
    move-object v11, v13

    .line 97
    goto :goto_0

    .line 98
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v11

    move-object v4, v11

    .local v4, "e":Ljava/lang/NoSuchFieldException;
    move-object v11, v13

    .line 99
    goto :goto_0

    .line 110
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    .restart local v7    # "fieldField":Ljava/lang/reflect/Field;
    .restart local v10    # "proxy":Ljava/lang/reflect/InvocationHandler;
    :cond_0
    :try_start_2
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 111
    .local v6, "elements":Ljava/lang/Object;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v11, v1, :cond_2

    :cond_1
    move-object v11, v13

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    check-cast v6, [Ljava/lang/Object;

    .end local v6    # "elements":Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 116
    .local v5, "elementArray":[Ljava/lang/Object;
    array-length v11, v5

    new-array v2, v11, [I

    .line 119
    .local v2, "configNums":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v11, v5

    if-ge v8, v11, :cond_3

    .line 120
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    aget-object v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 121
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNameToNum(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v8
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v9    # "name":Ljava/lang/String;
    :cond_3
    move-object v11, v2

    .line 123
    goto :goto_0

    .line 124
    .end local v2    # "configNums":[I
    .end local v5    # "elementArray":[Ljava/lang/Object;
    .end local v8    # "i":I
    :catch_3
    move-exception v11

    move-object v4, v11

    .local v4, "e":Ljava/lang/IllegalAccessException;
    move-object v11, v13

    .line 125
    goto :goto_0
.end method

.method private static valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 392
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.class public Lcom/flurry/org/apache/avro/generic/GenericData;
.super Ljava/lang/Object;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/generic/GenericData$1;,
        Lcom/flurry/org/apache/avro/generic/GenericData$EnumSymbol;,
        Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;,
        Lcom/flurry/org/apache/avro/generic/GenericData$Array;,
        Lcom/flurry/org/apache/avro/generic/GenericData$Record;,
        Lcom/flurry/org/apache/avro/generic/GenericData$StringType;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/flurry/org/apache/avro/generic/GenericData;

.field private static final STRINGS:Lcom/flurry/org/apache/avro/Schema;

.field protected static final STRING_PROP:Ljava/lang/String; = "avro.java.string"

.field protected static final STRING_TYPE_STRING:Ljava/lang/String; = "String"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericData;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/generic/GenericData;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData;->INSTANCE:Lcom/flurry/org/apache/avro/generic/GenericData;

    .line 761
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/generic/GenericData;->STRINGS:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/flurry/org/apache/avro/generic/GenericData;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData;->INSTANCE:Lcom/flurry/org/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public static get()Lcom/flurry/org/apache/avro/generic/GenericData;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData;->INSTANCE:Lcom/flurry/org/apache/avro/generic/GenericData;

    return-object v0
.end method

.method public static setStringType(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData$StringType;)V
    .locals 2
    .param p0, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p1, "stringType"    # Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    .prologue
    .line 55
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$StringType;->String:Lcom/flurry/org/apache/avro/generic/GenericData$StringType;

    if-ne p1, v0, :cond_0

    .line 56
    const-string v0, "avro.java.string"

    const-string v1, "String"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/avro/Schema;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method private writeEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 416
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 417
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 418
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 445
    if-ltz v0, :cond_0

    const/16 v4, 0x1f

    if-le v0, v4, :cond_2

    :cond_0
    const/16 v4, 0x7f

    if-lt v0, v4, :cond_1

    const/16 v4, 0x9f

    if-le v0, v4, :cond_2

    :cond_1
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_4

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_4

    .line 446
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 449
    const/16 v4, 0x30

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :sswitch_0
    const-string v4, "\\\""

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 426
    :sswitch_2
    const-string v4, "\\b"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 429
    :sswitch_3
    const-string v4, "\\f"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 432
    :sswitch_4
    const-string v4, "\\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 435
    :sswitch_5
    const-string v4, "\\r"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 438
    :sswitch_6
    const-string v4, "\\t"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 441
    :sswitch_7
    const-string v4, "\\/"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 450
    .restart local v1    # "hex":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 452
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 456
    .end local v0    # "ch":C
    :cond_5
    return-void

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x2f -> :sswitch_7
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .param p3, "s"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v0

    return v0
.end method

.method protected compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I
    .locals 22
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .param p3, "s"    # Lcom/flurry/org/apache/avro/Schema;
    .param p4, "equals"    # Z

    .prologue
    .line 712
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_0

    const/16 v19, 0x0

    .line 757
    .end local p1    # "o1":Ljava/lang/Object;
    .end local p2    # "o2":Ljava/lang/Object;
    .end local p3    # "s":Lcom/flurry/org/apache/avro/Schema;
    :goto_0
    return v19

    .line 713
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    .restart local p3    # "s":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    sget-object v19, Lcom/flurry/org/apache/avro/generic/GenericData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 757
    :pswitch_0
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-interface/range {p1 .. p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v19

    goto :goto_0

    .line 715
    .restart local p1    # "o1":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 716
    .local v11, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v19

    sget-object v20, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 718
    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v16

    .line 719
    .local v16, "pos":I
    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v15

    .line 720
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v15

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v7

    .line 723
    .local v7, "compare":I
    if-eqz v7, :cond_1

    .line 724
    invoke-virtual {v11}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v19

    sget-object v20, Lcom/flurry/org/apache/avro/Schema$Field$Order;->DESCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    move v0, v7

    neg-int v0, v0

    move/from16 v19, v0

    goto :goto_0

    :cond_2
    move/from16 v19, v7

    goto :goto_0

    .line 726
    .end local v7    # "compare":I
    .end local v11    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "pos":I
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 728
    .end local v12    # "i$":Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result v20

    sub-int v19, v19, v20

    goto/16 :goto_0

    .line 730
    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v5, v0

    .line 731
    .local v5, "a1":Ljava/util/Collection;
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/Collection;

    move-object v6, v0

    .line 732
    .local v6, "a2":Ljava/util/Collection;
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 733
    .local v8, "e1":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 734
    .local v9, "e2":Ljava/util/Iterator;
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    .line 735
    .local v10, "elementType":Lcom/flurry/org/apache/avro/Schema;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 736
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v10

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v7

    .line 737
    .restart local v7    # "compare":I
    if-eqz v7, :cond_4

    move/from16 v19, v7

    goto/16 :goto_0

    .line 739
    .end local v7    # "compare":I
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    const/16 v19, -0x1

    goto/16 :goto_0

    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 741
    .end local v5    # "a1":Ljava/util/Collection;
    .end local v6    # "a2":Ljava/util/Collection;
    .end local v8    # "e1":Ljava/util/Iterator;
    .end local v9    # "e2":Ljava/util/Iterator;
    .end local v10    # "elementType":Lcom/flurry/org/apache/avro/Schema;
    :pswitch_4
    if-eqz p4, :cond_9

    .line 742
    check-cast p1, Ljava/util/Map;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-interface/range {p1 .. p2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 743
    .restart local p1    # "o1":Ljava/lang/Object;
    :cond_9
    new-instance v19, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v20, "Can\'t compare maps!"

    invoke-direct/range {v19 .. v20}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 745
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v13

    .line 746
    .local v13, "i1":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v14

    .line 747
    .local v14, "i2":I
    if-ne v13, v14, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "s":Lcom/flurry/org/apache/avro/Schema;
    check-cast p3, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual/range {p0 .. p4}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v19

    goto/16 :goto_0

    .restart local p3    # "s":Lcom/flurry/org/apache/avro/Schema;
    :cond_a
    sub-int v19, v13, v14

    goto/16 :goto_0

    .line 751
    .end local v13    # "i1":I
    .end local v14    # "i2":I
    :pswitch_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 753
    :pswitch_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/flurry/org/apache/avro/util/Utf8;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    check-cast p1, Lcom/flurry/org/apache/avro/util/Utf8;

    .end local p1    # "o1":Ljava/lang/Object;
    move-object/from16 v17, p1

    .line 754
    .local v17, "u1":Lcom/flurry/org/apache/avro/util/Utf8;
    :goto_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/flurry/org/apache/avro/util/Utf8;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    check-cast p2, Lcom/flurry/org/apache/avro/util/Utf8;

    .end local p2    # "o2":Ljava/lang/Object;
    move-object/from16 v18, p2

    .line 755
    .local v18, "u2":Lcom/flurry/org/apache/avro/util/Utf8;
    :goto_2
    invoke-virtual/range {v17 .. v18}, Lcom/flurry/org/apache/avro/util/Utf8;->compareTo(Lcom/flurry/org/apache/avro/util/Utf8;)I

    move-result v19

    goto/16 :goto_0

    .line 753
    .end local v17    # "u1":Lcom/flurry/org/apache/avro/util/Utf8;
    .end local v18    # "u2":Lcom/flurry/org/apache/avro/util/Utf8;
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_b
    new-instance v19, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v19

    goto :goto_1

    .line 754
    .end local p1    # "o1":Ljava/lang/Object;
    .restart local v17    # "u1":Lcom/flurry/org/apache/avro/util/Utf8;
    :cond_c
    new-instance v19, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v19

    goto :goto_2

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public createDatumReader(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/DatumReader;
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 305
    new-instance v0, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;

    invoke-direct {v0, p1, p1, p0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    return-object v0
.end method

.method public createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 3
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 851
    instance-of v1, p1, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    move-object v1, v0

    invoke-interface {v1}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v2

    if-ne v1, v2, :cond_0

    move-object v1, p1

    .line 854
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;

    invoke-direct {v1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData$Fixed;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    goto :goto_0
.end method

.method public createFixed(Ljava/lang/Object;[BLcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 4
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    const/4 v3, 0x0

    .line 860
    invoke-virtual {p0, p1, p3}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .line 861
    .local v0, "fixed":Lcom/flurry/org/apache/avro/generic/GenericFixed;
    invoke-interface {v0}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v1

    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    return-object v0
.end method

.method public deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 771
    if-nez p2, :cond_0

    .line 772
    const/16 v16, 0x0

    .line 839
    .end local p1    # "schema":Lcom/flurry/org/apache/avro/Schema;
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v16

    .line 774
    .restart local p1    # "schema":Lcom/flurry/org/apache/avro/Schema;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    sget-object v16, Lcom/flurry/org/apache/avro/generic/GenericData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 842
    new-instance v16, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Deep copy failed for schema \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" and value \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 776
    :pswitch_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 777
    .local v5, "arrayValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v4, Lcom/flurry/org/apache/avro/generic/GenericData$Array;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move-object v0, v4

    move/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData$Array;-><init>(ILcom/flurry/org/apache/avro/Schema;)V

    .line 779
    .local v4, "arrayCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 780
    .local v13, "obj":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v13    # "obj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v16, v4

    .line 782
    goto :goto_0

    .line 784
    .end local v4    # "arrayCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "arrayValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :pswitch_1
    new-instance v16, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    goto/16 :goto_0

    .line 786
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v6, v0

    .line 787
    .local v6, "byteBufferValue":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v7, v0

    .line 788
    .local v7, "bytesCopy":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 789
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 790
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 791
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    goto/16 :goto_0

    .line 793
    .end local v6    # "byteBufferValue":Ljava/nio/ByteBuffer;
    .end local v7    # "bytesCopy":[B
    :pswitch_3
    new-instance v16, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    move-object/from16 v16, p2

    .line 796
    goto/16 :goto_0

    .line 798
    :pswitch_5
    const/16 v16, 0x0

    check-cast p2, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;[BLcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_0

    .line 800
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    new-instance v16, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 802
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    new-instance v16, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_0

    .line 804
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    new-instance v16, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_0

    .line 806
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v12, v0

    .line 807
    .local v12, "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Object;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v16

    move-object v0, v11

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 809
    .local v11, "mapCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local p2    # "value":Ljava/lang/Object;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 810
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/Object;>;"
    sget-object v16, Lcom/flurry/org/apache/avro/generic/GenericData;->STRINGS:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v16

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/Object;>;"
    :cond_2
    move-object/from16 v16, v11

    .line 813
    goto/16 :goto_0

    .line 815
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "mapCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Object;>;"
    .end local v12    # "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Object;>;"
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 817
    :pswitch_b
    move-object/from16 v0, p2

    check-cast v0, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    move-object v15, v0

    .line 818
    .local v15, "recordValue":Lcom/flurry/org/apache/avro/generic/IndexedRecord;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    .line 819
    .local v14, "recordCopy":Lcom/flurry/org/apache/avro/generic/IndexedRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 820
    .local v9, "field":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v16

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v17

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v18

    move-object v0, v15

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/flurry/org/apache/avro/generic/IndexedRecord;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object v0, v14

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/IndexedRecord;->put(ILjava/lang/Object;)V

    goto :goto_3

    .end local v9    # "field":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_3
    move-object/from16 v16, v14

    .line 823
    goto/16 :goto_0

    .line 826
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "recordCopy":Lcom/flurry/org/apache/avro/generic/IndexedRecord;
    .end local v15    # "recordValue":Lcom/flurry/org/apache/avro/generic/IndexedRecord;
    :pswitch_c
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v16, p2

    .line 827
    goto/16 :goto_0

    .line 832
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/flurry/org/apache/avro/util/Utf8;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 835
    new-instance v16, Lcom/flurry/org/apache/avro/util/Utf8;

    check-cast p2, Lcom/flurry/org/apache/avro/util/Utf8;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Lcom/flurry/org/apache/avro/util/Utf8;)V

    goto/16 :goto_0

    .line 837
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v16, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "schema":Lcom/flurry/org/apache/avro/Schema;
    check-cast p1, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual/range {p0 .. p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->deepCopy(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_c
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method

.method protected getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "enu"    # Ljava/lang/Object;

    .prologue
    .line 632
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericContainer;

    .end local p1    # "enu":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/generic/GenericContainer;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 518
    check-cast p1, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-interface {p1, p3}, Lcom/flurry/org/apache/avro/generic/IndexedRecord;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "state"    # Ljava/lang/Object;

    .prologue
    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFixedSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "fixed"    # Ljava/lang/Object;

    .prologue
    .line 649
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericContainer;

    .end local p1    # "fixed":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/generic/GenericContainer;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 620
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericContainer;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/generic/GenericContainer;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordState(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSchemaName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 550
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_4
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isFixed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getFixedSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_5
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_6
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 563
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 565
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 567
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_9
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 569
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 570
    :cond_a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_b

    .line 571
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 572
    :cond_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 573
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema$Type;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 574
    :cond_c
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown datum type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    const/4 v9, 0x0

    .line 665
    if-nez p1, :cond_0

    move v7, v9

    .line 691
    :goto_0
    return v7

    .line 666
    :cond_0
    const/4 v5, 0x1

    .line 667
    .local v5, "hashCode":I
    sget-object v7, Lcom/flurry/org/apache/avro/generic/GenericData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 691
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_0

    .line 669
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 670
    .local v4, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v7

    sget-object v8, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    if-eq v7, v8, :cond_1

    .line 672
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v8

    invoke-virtual {p0, p1, v7, v8}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/flurry/org/apache/avro/generic/GenericData;->hashCodeAdd(ILjava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v5

    .line 674
    goto :goto_1

    .end local v4    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_2
    move v7, v5

    .line 675
    goto :goto_0

    .line 677
    .end local v6    # "i$":Ljava/util/Iterator;
    :pswitch_2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 678
    .local v1, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v3

    .line 679
    .local v3, "elementType":Lcom/flurry/org/apache/avro/Schema;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 680
    .local v2, "e":Ljava/lang/Object;
    invoke-virtual {p0, v5, v2, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->hashCodeAdd(ILjava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v5

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Object;
    :cond_3
    move v7, v5

    .line 681
    goto :goto_0

    .line 683
    .end local v1    # "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v3    # "elementType":Lcom/flurry/org/apache/avro/Schema;
    .end local v6    # "i$":Ljava/util/Iterator;
    :pswitch_3
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, p2, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, p1, v7}, Lcom/flurry/org/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v7

    goto :goto_0

    .line 685
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/flurry/org/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :pswitch_5
    move v7, v9

    .line 687
    goto/16 :goto_0

    .line 689
    :pswitch_6
    instance-of v7, p1, Lcom/flurry/org/apache/avro/util/Utf8;

    if-eqz v7, :cond_4

    move-object v7, p1

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto/16 :goto_0

    :cond_4
    new-instance v7, Lcom/flurry/org/apache/avro/util/Utf8;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/flurry/org/apache/avro/util/Utf8;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected hashCodeAdd(ILjava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 2
    .param p1, "hashCode"    # I
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "s"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 697
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0, p2, p3}, Lcom/flurry/org/apache/avro/generic/GenericData;->hashCode(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public induce(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 10
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 460
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    .line 502
    .end local p1    # "datum":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 462
    .restart local p1    # "datum":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, Ljava/util/Collection;

    if-eqz v7, :cond_5

    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, "elementType":Lcom/flurry/org/apache/avro/Schema;
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 465
    .local v1, "element":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 466
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    goto :goto_1

    .line 467
    :cond_2
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 468
    new-instance v7, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v8, "No mixed type arrays."

    invoke-direct {v7, v8}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 471
    .end local v1    # "element":Ljava/lang/Object;
    :cond_3
    if-nez v2, :cond_4

    .line 472
    new-instance v7, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Empty array: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 474
    :cond_4
    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto :goto_0

    .line 476
    .end local v2    # "elementType":Lcom/flurry/org/apache/avro/Schema;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_a

    .line 478
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 479
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 480
    .local v6, "value":Lcom/flurry/org/apache/avro/Schema;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 481
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v6, :cond_7

    .line 482
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/flurry/org/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v6

    goto :goto_2

    .line 483
    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/flurry/org/apache/avro/generic/GenericData;->induce(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 484
    new-instance v7, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v8, "No mixed type map values."

    invoke-direct {v7, v8}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 487
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_8
    if-nez v6, :cond_9

    .line 488
    new-instance v7, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Empty map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 490
    :cond_9
    invoke-static {v6}, Lcom/flurry/org/apache/avro/Schema;->createMap(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 491
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "value":Lcom/flurry/org/apache/avro/Schema;
    :cond_a
    instance-of v7, p1, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    if-eqz v7, :cond_b

    .line 492
    check-cast p1, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .end local p1    # "datum":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v8, v8, v8, v7}, Lcom/flurry/org/apache/avro/Schema;->createFixed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 495
    .restart local p1    # "datum":Ljava/lang/Object;
    :cond_b
    instance-of v7, p1, Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 496
    :cond_c
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_d

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 497
    :cond_d
    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_e

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 498
    :cond_e
    instance-of v7, p1, Ljava/lang/Long;

    if-eqz v7, :cond_f

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 499
    :cond_f
    instance-of v7, p1, Ljava/lang/Float;

    if-eqz v7, :cond_10

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 500
    :cond_10
    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_11

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 501
    :cond_11
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_12

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 502
    :cond_12
    if-nez p1, :cond_13

    sget-object v7, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v7}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    goto/16 :goto_0

    .line 504
    :cond_13
    new-instance v7, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t create schema for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected instanceOf(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    sget-object v0, Lcom/flurry/org/apache/avro/generic/GenericData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 602
    :pswitch_0
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 601
    :goto_0
    return v0

    .line 583
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 587
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 588
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 589
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isArray(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 590
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isMap(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 592
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isFixed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 593
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->getFixedSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 594
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 595
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 596
    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    goto :goto_0

    .line 597
    :pswitch_9
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    .line 598
    :pswitch_a
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    .line 599
    :pswitch_b
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    .line 600
    :pswitch_c
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    .line 601
    :pswitch_d
    if-nez p2, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 608
    instance-of v0, p1, Ljava/util/Collection;

    return v0
.end method

.method protected isBytes(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 659
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    return v0
.end method

.method protected isEnum(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 625
    instance-of v0, p1, Lcom/flurry/org/apache/avro/generic/GenericEnumSymbol;

    return v0
.end method

.method protected isFixed(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 642
    instance-of v0, p1, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    return v0
.end method

.method protected isMap(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 637
    instance-of v0, p1, Ljava/util/Map;

    return v0
.end method

.method protected isRecord(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 613
    instance-of v0, p1, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    return v0
.end method

.method protected isString(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 654
    instance-of v0, p1, Ljava/lang/CharSequence;

    return v0
.end method

.method public newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 3
    .param p1, "old"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 874
    instance-of v2, p1, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    if-eqz v2, :cond_0

    .line 875
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    move-object v1, v0

    .line 876
    .local v1, "record":Lcom/flurry/org/apache/avro/generic/IndexedRecord;
    invoke-interface {v1}, Lcom/flurry/org/apache/avro/generic/IndexedRecord;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    if-ne v2, p2, :cond_0

    move-object v2, v1

    .line 879
    .end local v1    # "record":Lcom/flurry/org/apache/avro/generic/IndexedRecord;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/flurry/org/apache/avro/generic/GenericData$Record;

    invoke-direct {v2, p2}, Lcom/flurry/org/apache/avro/generic/GenericData$Record;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    goto :goto_0
.end method

.method public resolveUnion(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)I
    .locals 2
    .param p1, "union"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;

    .prologue
    .line 539
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->getSchemaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flurry/org/apache/avro/Schema;->getIndexNamed(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 540
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 542
    :cond_0
    new-instance v1, Lcom/flurry/org/apache/avro/UnresolvedUnionException;

    invoke-direct {v1, p1, p2}, Lcom/flurry/org/apache/avro/UnresolvedUnionException;-><init>(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)V

    throw v1
.end method

.method public setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 511
    check-cast p1, Lcom/flurry/org/apache/avro/generic/IndexedRecord;

    .end local p1    # "record":Ljava/lang/Object;
    invoke-interface {p1, p3, p4}, Lcom/flurry/org/apache/avro/generic/IndexedRecord;->put(ILjava/lang/Object;)V

    .line 512
    return-void
.end method

.method protected setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "p"    # I
    .param p4, "o"    # Ljava/lang/Object;
    .param p5, "state"    # Ljava/lang/Object;

    .prologue
    .line 528
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/org/apache/avro/generic/GenericData;->setField(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 529
    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "datum"    # Ljava/lang/Object;

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 19
    .param p1, "datum"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 362
    invoke-virtual/range {p0 .. p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 363
    const-string v17, "{"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, "count":I
    invoke-virtual/range {p0 .. p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getRecordSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v16

    .line 366
    .local v16, "schema":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual/range {v16 .. v16}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 367
    .local v9, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 368
    const-string v17, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 370
    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 371
    const-string v17, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    .end local v9    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_1
    const-string v17, "}"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .end local v6    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "schema":Lcom/flurry/org/apache/avro/Schema;
    :goto_1
    return-void

    .line 374
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 375
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v4, v0

    .line 376
    .local v4, "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v17, "["

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v13, v0

    .line 378
    .local v13, "last":J
    const/4 v10, 0x0

    .line 379
    .local v10, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 380
    .local v7, "element":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 381
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v17, v13

    if-gez v17, :cond_3

    .line 382
    const-string v17, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move v10, v11

    .line 383
    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_2

    .line 384
    .end local v7    # "element":Ljava/lang/Object;
    :cond_4
    const-string v17, "]"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 385
    .end local v4    # "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v10    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "last":J
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 386
    const-string v17, "{"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const/4 v6, 0x0

    .line 389
    .restart local v6    # "count":I
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v15, v0

    .line 390
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 391
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 392
    const-string v17, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->toString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 394
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v17

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 395
    const-string v17, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 397
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_7
    const-string v17, "}"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 398
    .end local v6    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/flurry/org/apache/avro/generic/GenericEnumSymbol;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 400
    :cond_9
    const-string v17, "\""

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/generic/GenericData;->writeEscapedString(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 402
    const-string v17, "\""

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 403
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 404
    const-string v17, "{\"bytes\": \""

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-object/from16 v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v5, v0

    .line 406
    .local v5, "bytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 407
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 408
    :cond_b
    const-string v17, "\"}"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 410
    .end local v5    # "bytes":Ljava/nio/ByteBuffer;
    .end local v10    # "i":I
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;
    .param p2, "datum"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 310
    sget-object v7, Lcom/flurry/org/apache/avro/generic/GenericData$1;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    move v7, v10

    .line 350
    .end local p2    # "datum":Ljava/lang/Object;
    :goto_0
    return v7

    .line 312
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isRecord(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v10

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 314
    .local v3, "f":Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Field;->pos()I

    move-result v9

    invoke-virtual {p0, p2, v8, v9}, Lcom/flurry/org/apache/avro/generic/GenericData;->getField(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/flurry/org/apache/avro/generic/GenericData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v10

    .line 315
    goto :goto_0

    .end local v3    # "f":Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_2
    move v7, v11

    .line 317
    goto :goto_0

    .line 319
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    .line 321
    :pswitch_2
    instance-of v7, p2, Ljava/util/Collection;

    if-nez v7, :cond_3

    move v7, v10

    goto :goto_0

    .line 322
    :cond_3
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 323
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-virtual {p0, v7, v1}, Lcom/flurry/org/apache/avro/generic/GenericData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v10

    .line 324
    goto :goto_0

    .end local v1    # "element":Ljava/lang/Object;
    :cond_5
    move v7, v11

    .line 325
    goto :goto_0

    .line 327
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_3
    instance-of v7, p2, Ljava/util/Map;

    if-nez v7, :cond_6

    move v7, v10

    goto :goto_0

    .line 329
    :cond_6
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 330
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 331
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/flurry/org/apache/avro/generic/GenericData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v10

    .line 332
    goto/16 :goto_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_8
    move v7, v11

    .line 333
    goto/16 :goto_0

    .line 335
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema;

    .line 336
    .local v6, "type":Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p0, v6, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->validate(Lcom/flurry/org/apache/avro/Schema;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v11

    .line 337
    goto/16 :goto_0

    .end local v6    # "type":Lcom/flurry/org/apache/avro/Schema;
    :cond_a
    move v7, v10

    .line 338
    goto/16 :goto_0

    .line 340
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_5
    instance-of v7, p2, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    if-eqz v7, :cond_b

    check-cast p2, Lcom/flurry/org/apache/avro/generic/GenericFixed;

    .end local p2    # "datum":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/flurry/org/apache/avro/generic/GenericFixed;->bytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v8

    if-ne v7, v8, :cond_b

    move v7, v11

    goto/16 :goto_0

    :cond_b
    move v7, v10

    goto/16 :goto_0

    .line 342
    .restart local p2    # "datum":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isString(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0

    .line 343
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->isBytes(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0

    .line 344
    :pswitch_8
    instance-of v7, p2, Ljava/lang/Integer;

    goto/16 :goto_0

    .line 345
    :pswitch_9
    instance-of v7, p2, Ljava/lang/Long;

    goto/16 :goto_0

    .line 346
    :pswitch_a
    instance-of v7, p2, Ljava/lang/Float;

    goto/16 :goto_0

    .line 347
    :pswitch_b
    instance-of v7, p2, Ljava/lang/Double;

    goto/16 :goto_0

    .line 348
    :pswitch_c
    instance-of v7, p2, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 349
    :pswitch_d
    if-nez p2, :cond_c

    move v7, v11

    goto/16 :goto_0

    :cond_c
    move v7, v10

    goto/16 :goto_0

    .line 310
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
    .end packed-switch
.end method

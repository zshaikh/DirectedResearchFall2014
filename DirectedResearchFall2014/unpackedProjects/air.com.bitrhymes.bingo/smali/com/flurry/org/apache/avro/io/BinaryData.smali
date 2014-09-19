.class public Lcom/flurry/org/apache/avro/io/BinaryData;
.super Ljava/lang/Object;
.source "BinaryData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/BinaryData$3;,
        Lcom/flurry/org/apache/avro/io/BinaryData$HashData;,
        Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    }
.end annotation


# static fields
.field private static final DECODERS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;",
            ">;"
        }
    .end annotation
.end field

.field private static final HASH_DATA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/flurry/org/apache/avro/io/BinaryData$HashData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryData$1;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/BinaryData$1;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BinaryData;->DECODERS:Ljava/lang/ThreadLocal;

    .line 208
    new-instance v0, Lcom/flurry/org/apache/avro/io/BinaryData$2;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/BinaryData$2;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/io/BinaryData;->HASH_DATA:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 21
    .parameter "d"
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v3

    .local v3, d1:Lcom/flurry/org/apache/avro/io/Decoder;
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v4

    .line 82
    .local v4, d2:Lcom/flurry/org/apache/avro/io/Decoder;
    sget-object v2, Lcom/flurry/org/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 176
    new-instance p0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    .end local p0
    const-string p1, "Unexpected schema to compare!"

    .end local p1
    invoke-direct/range {p0 .. p1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    .restart local p0
    .restart local p1
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    .end local p1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 85
    .local v2, field:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object p1

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-object/from16 v0, p1

    move-object v1, v6

    if-ne v0, v1, :cond_1

    .line 86
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    .line 87
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I

    move-result p1

    .line 91
    .local p1, c:I
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object p0

    .end local p0
    sget-object v2, Lcom/flurry/org/apache/avro/Schema$Field$Order;->DESCENDING:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    .end local v2           #field:Lcom/flurry/org/apache/avro/Schema$Field;
    move-object/from16 v0, p0

    move-object v1, v2

    if-eq v0, v1, :cond_2

    move/from16 p0, p1

    .line 174
    .end local v3           #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .end local v4           #d2:Lcom/flurry/org/apache/avro/io/Decoder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local p1           #c:I
    :goto_1
    return p0

    .line 92
    .restart local v3       #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .restart local v4       #d2:Lcom/flurry/org/apache/avro/io/Decoder;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local p1       #c:I
    :cond_2
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 p0, v0

    goto :goto_1

    .line 94
    .end local p1           #c:I
    .restart local p0
    :cond_3
    const/16 p0, 0x0

    goto :goto_1

    .line 97
    .end local v5           #i$:Ljava/util/Iterator;
    .local p1, schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_1
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result p0

    .line 98
    .local p0, i1:I
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result p1

    .line 99
    .local p1, i2:I
    move/from16 v0, p0

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    const/16 p0, 0x0

    goto :goto_1

    :cond_4
    move/from16 v0, p0

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    const/16 p0, 0x1

    goto :goto_1

    :cond_5
    const/16 p0, -0x1

    goto :goto_1

    .line 102
    .local p0, d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .local p1, schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_2
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide p0

    .line 103
    .end local p1           #schema:Lcom/flurry/org/apache/avro/Schema;
    .local p0, l1:J
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v2

    .line 104
    .end local v3           #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .local v2, l2:J
    cmp-long v4, p0, v2

    if-nez v4, :cond_6

    .end local v4           #d2:Lcom/flurry/org/apache/avro/io/Decoder;
    const/16 p0, 0x0

    goto :goto_1

    :cond_6
    cmp-long p0, p0, v2

    if-lez p0, :cond_7

    .end local p0           #l1:J
    const/16 p0, 0x1

    goto :goto_1

    :cond_7
    const/16 p0, -0x1

    goto :goto_1

    .line 107
    .end local v2           #l2:J
    .restart local v3       #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .restart local v4       #d2:Lcom/flurry/org/apache/avro/io/Decoder;
    .local p0, d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .restart local p1       #schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_3
    const-wide/16 v5, 0x0

    .line 108
    .local v5, i:J
    const-wide/16 v11, 0x0

    .local v11, r1:J
    const-wide/16 v13, 0x0

    .line 109
    .local v13, r2:J
    const-wide/16 v7, 0x0

    .local v7, l1:J
    const-wide/16 v9, 0x0

    .local v9, l2:J
    move-wide v15, v13

    .end local v13           #r2:J
    .local v15, r2:J
    move-wide/from16 v19, v9

    .end local v9           #l2:J
    .local v19, l2:J
    move-wide v9, v11

    .end local v11           #r1:J
    .local v9, r1:J
    move-wide/from16 v11, v19

    .line 111
    .end local v19           #l2:J
    .local v11, l2:J
    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-nez v2, :cond_18

    .line 112
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v9

    .line 113
    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-gez v2, :cond_8

    neg-long v9, v9

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    .line 114
    :cond_8
    add-long/2addr v7, v9

    move-wide v13, v9

    .end local v9           #r1:J
    .local v13, r1:J
    move-wide v9, v7

    .line 116
    .end local v7           #l1:J
    .local v9, l1:J
    :goto_3
    const-wide/16 v7, 0x0

    cmp-long v2, v15, v7

    if-nez v2, :cond_a

    .line 117
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v7

    .line 118
    .end local v15           #r2:J
    .local v7, r2:J
    const-wide/16 v15, 0x0

    cmp-long v2, v7, v15

    if-gez v2, :cond_9

    neg-long v7, v7

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    :cond_9
    move-wide v15, v7

    .line 119
    .end local v7           #r2:J
    .restart local v15       #r2:J
    add-long v7, v11, v15

    .end local v11           #l2:J
    .local v7, l2:J
    move-wide v11, v7

    .line 121
    .end local v7           #l2:J
    .restart local v11       #l2:J
    :cond_a
    const-wide/16 v7, 0x0

    cmp-long v2, v13, v7

    if-eqz v2, :cond_b

    const-wide/16 v7, 0x0

    cmp-long v2, v15, v7

    if-nez v2, :cond_e

    .line 122
    :cond_b
    cmp-long p0, v9, v11

    if-nez p0, :cond_c

    .end local p0           #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    const/16 p0, 0x0

    goto/16 :goto_1

    :cond_c
    cmp-long p0, v9, v11

    if-lez p0, :cond_d

    const/16 p0, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 123
    .restart local p0       #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    :cond_e
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 124
    .local v7, l:J
    :goto_4
    cmp-long v2, v5, v7

    if-gez v2, :cond_10

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v2

    .line 126
    .local v2, c:I
    if-eqz v2, :cond_f

    move/from16 p0, v2

    goto/16 :goto_1

    .line 127
    :cond_f
    const-wide/16 v17, 0x1

    add-long v5, v5, v17

    const-wide/16 v17, 0x1

    sub-long v13, v13, v17

    const-wide/16 v17, 0x1

    sub-long v15, v15, v17

    .line 128
    goto :goto_4

    .end local v2           #c:I
    :cond_10
    move-wide v7, v9

    .end local v9           #l1:J
    .local v7, l1:J
    move-wide v9, v13

    .line 129
    .end local v13           #r1:J
    .local v9, r1:J
    goto :goto_2

    .line 132
    .end local v5           #i:J
    .end local v7           #l1:J
    .end local v9           #r1:J
    .end local v11           #l2:J
    .end local v15           #r2:J
    :pswitch_4
    new-instance p0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    .end local p0           #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    const-string p1, "Can\'t compare maps!"

    .end local p1           #schema:Lcom/flurry/org/apache/avro/Schema;
    invoke-direct/range {p0 .. p1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    .restart local p0       #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .restart local p1       #schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_5
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v2

    .line 135
    .local v2, i1:I
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v3

    .line 136
    .local v3, i2:I
    if-ne v2, v3, :cond_11

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object p1

    .end local p1           #schema:Lcom/flurry/org/apache/avro/Schema;
    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flurry/org/apache/avro/Schema;

    invoke-static/range {p0 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I

    move-result p0

    goto/16 :goto_1

    .line 139
    .restart local p1       #schema:Lcom/flurry/org/apache/avro/Schema;
    :cond_11
    sub-int p0, v2, v3

    goto/16 :goto_1

    .line 143
    .end local v2           #i1:I
    .local v3, d1:Lcom/flurry/org/apache/avro/io/Decoder;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v4

    .line 144
    .local v4, size:I
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    .end local p1           #schema:Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v2

    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v3

    .end local v3           #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v5

    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v6

    move v7, v4

    invoke-static/range {v2 .. v7}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result p1

    .line 146
    .local p1, c:I
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 147
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object p0

    .end local p0           #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    move/from16 p0, p1

    .line 148
    goto/16 :goto_1

    .line 151
    .restart local v3       #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .local v4, d2:Lcom/flurry/org/apache/avro/io/Decoder;
    .restart local p0       #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .local p1, schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_7
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v7

    .line 152
    .local v7, l1:I
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v10

    .line 153
    .local v10, l2:I
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    .end local p1           #schema:Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v5

    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b1:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$200(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v6

    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v8

    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->b2:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$300(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v9

    invoke-static/range {v5 .. v10}, Lcom/flurry/org/apache/avro/io/BinaryData;->compareBytes([BII[BII)I

    move-result p1

    .line 155
    .local p1, c:I
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d1:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$000(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 156
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->d2:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static/range {p0 .. p0}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->access$100(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object p0

    .end local p0           #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    move/from16 p0, p1

    .line 157
    goto/16 :goto_1

    .line 160
    .end local v7           #l1:I
    .end local v10           #l2:I
    .restart local p0       #d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .local p1, schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_8
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result p0

    .line 161
    .local p0, f1:F
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result p1

    .line 162
    .local p1, f2:F
    cmpl-float v2, p0, p1

    if-nez v2, :cond_12

    const/16 p0, 0x0

    goto/16 :goto_1

    :cond_12
    cmpl-float p0, p0, p1

    if-lez p0, :cond_13

    .end local p0           #f1:F
    const/16 p0, 0x1

    goto/16 :goto_1

    :cond_13
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 165
    .local p0, d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .local p1, schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_9
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide p0

    .line 166
    .end local p1           #schema:Lcom/flurry/org/apache/avro/Schema;
    .local p0, f1:D
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v2

    .line 167
    .end local v3           #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .local v2, f2:D
    cmpl-double v4, p0, v2

    if-nez v4, :cond_14

    .end local v4           #d2:Lcom/flurry/org/apache/avro/io/Decoder;
    const/16 p0, 0x0

    goto/16 :goto_1

    :cond_14
    cmpl-double p0, p0, v2

    if-lez p0, :cond_15

    .end local p0           #f1:D
    const/16 p0, 0x1

    goto/16 :goto_1

    :cond_15
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 170
    .end local v2           #f2:D
    .restart local v3       #d1:Lcom/flurry/org/apache/avro/io/Decoder;
    .restart local v4       #d2:Lcom/flurry/org/apache/avro/io/Decoder;
    .local p0, d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .restart local p1       #schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_a
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result p0

    .line 171
    .local p0, b1:Z
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result p1

    .line 172
    .local p1, b2:Z
    move/from16 v0, p0

    move/from16 v1, p1

    if-ne v0, v1, :cond_16

    const/16 p0, 0x0

    goto/16 :goto_1

    :cond_16
    if-eqz p0, :cond_17

    const/16 p0, 0x1

    goto/16 :goto_1

    :cond_17
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 174
    .local p0, d:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    .local p1, schema:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_b
    const/16 p0, 0x0

    goto/16 :goto_1

    .restart local v5       #i:J
    .local v7, l1:J
    .restart local v9       #r1:J
    .restart local v11       #l2:J
    .restart local v15       #r2:J
    :cond_18
    move-wide v13, v9

    .end local v9           #r1:J
    .restart local v13       #r1:J
    move-wide v9, v7

    .end local v7           #l1:J
    .local v9, l1:J
    goto/16 :goto_3

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static compare([BII[BIILcom/flurry/org/apache/avro/Schema;)I
    .locals 8
    .parameter "b1"
    .parameter "s1"
    .parameter "l1"
    .parameter "b2"
    .parameter "s2"
    .parameter "l2"
    .parameter "schema"

    .prologue
    .line 69
    sget-object v1, Lcom/flurry/org/apache/avro/io/BinaryData;->DECODERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;

    .local v0, decoders:Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;->set([BII[BII)V

    .line 72
    :try_start_0
    invoke-static {v0, p6}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare(Lcom/flurry/org/apache/avro/io/BinaryData$Decoders;Lcom/flurry/org/apache/avro/Schema;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 73
    :catch_0
    move-exception v7

    .line 74
    .local v7, e:Ljava/io/IOException;
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v7}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static compare([BI[BILcom/flurry/org/apache/avro/Schema;)I
    .locals 7
    .parameter "b1"
    .parameter "s1"
    .parameter "b2"
    .parameter "s2"
    .parameter "schema"

    .prologue
    .line 60
    array-length v0, p0

    sub-int v2, v0, p1

    array-length v0, p2

    sub-int v5, v0, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/flurry/org/apache/avro/io/BinaryData;->compare([BII[BIILcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public static compareBytes([BII[BII)I
    .locals 7
    .parameter "b1"
    .parameter "s1"
    .parameter "l1"
    .parameter "b2"
    .parameter "s2"
    .parameter "l2"

    .prologue
    .line 184
    add-int v2, p1, p2

    .line 185
    .local v2, end1:I
    add-int v3, p4, p5

    .line 186
    .local v3, end2:I
    move v4, p1

    .local v4, i:I
    move v5, p4

    .local v5, j:I
    :goto_0
    if-ge v4, v2, :cond_1

    if-ge v5, v3, :cond_1

    .line 187
    aget-byte v6, p0, v4

    and-int/lit16 v0, v6, 0xff

    .line 188
    .local v0, a:I
    aget-byte v6, p3, v5

    and-int/lit16 v1, v6, 0xff

    .line 189
    .local v1, b:I
    if-eq v0, v1, :cond_0

    .line 190
    sub-int v6, v0, v1

    .line 193
    .end local v0           #a:I
    .end local v1           #b:I
    :goto_1
    return v6

    .line 186
    .restart local v0       #a:I
    .restart local v1       #b:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_1
    sub-int v6, p2, p5

    goto :goto_1
.end method

.method public static encodeBoolean(Z[BI)I
    .locals 2
    .parameter "b"
    .parameter "buf"
    .parameter "pos"

    .prologue
    const/4 v1, 0x1

    .line 308
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    aput-byte v0, p1, p2

    .line 309
    return v1

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encodeDouble(D[BI)I
    .locals 8
    .parameter "d"
    .parameter "buf"
    .parameter "pos"

    .prologue
    const-wide/16 v6, -0x1

    .line 412
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 413
    .local v0, bits:J
    and-long v4, v0, v6

    long-to-int v2, v4

    .line 414
    .local v2, first:I
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v3, v4

    .line 417
    .local v3, second:I
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, p3

    .line 418
    add-int/lit8 v4, p3, 0x4

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 419
    add-int/lit8 v4, p3, 0x5

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 420
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 421
    add-int/lit8 v4, p3, 0x2

    ushr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 422
    add-int/lit8 v4, p3, 0x6

    ushr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 423
    add-int/lit8 v4, p3, 0x7

    ushr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 424
    add-int/lit8 v4, p3, 0x3

    ushr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 425
    const/16 v4, 0x8

    return v4
.end method

.method public static encodeFloat(F[BI)I
    .locals 5
    .parameter "f"
    .parameter "buf"
    .parameter "pos"

    .prologue
    .line 396
    const/4 v1, 0x1

    .line 397
    .local v1, len:I
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 399
    .local v0, bits:I
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 400
    add-int/lit8 v2, v1, 0x1

    .end local v1           #len:I
    .local v2, len:I
    add-int v3, p2, v1

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 401
    add-int/lit8 v1, v2, 0x1

    .end local v2           #len:I
    .restart local v1       #len:I
    add-int/lit8 v3, p2, 0x2

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 402
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p2, 0x3

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 403
    const/4 v3, 0x4

    return v3
.end method

.method public static encodeInt(I[BI)I
    .locals 5
    .parameter "n"
    .parameter "buf"
    .parameter "pos"

    .prologue
    const/16 v4, 0x7f

    .line 319
    shl-int/lit8 v2, p0, 0x1

    shr-int/lit8 v3, p0, 0x1f

    xor-int p0, v2, v3

    .line 320
    move v1, p2

    .line 321
    .local v1, start:I
    and-int/lit8 v2, p0, -0x80

    if-eqz v2, :cond_0

    .line 322
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, pos:I
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 323
    ushr-int/lit8 p0, p0, 0x7

    .line 324
    if-le p0, v4, :cond_1

    .line 325
    add-int/lit8 p2, v0, 0x1

    .end local v0           #pos:I
    .restart local p2
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 326
    ushr-int/lit8 p0, p0, 0x7

    .line 327
    if-le p0, v4, :cond_0

    .line 328
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #pos:I
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 329
    ushr-int/lit8 p0, p0, 0x7

    .line 330
    if-le p0, v4, :cond_1

    .line 331
    add-int/lit8 p2, v0, 0x1

    .end local v0           #pos:I
    .restart local p2
    or-int/lit16 v2, p0, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 332
    ushr-int/lit8 p0, p0, 0x7

    .line 337
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #pos:I
    int-to-byte v2, p0

    aput-byte v2, p1, p2

    .line 338
    sub-int v2, v0, v1

    return v2

    :cond_1
    move p2, v0

    .end local v0           #pos:I
    .restart local p2
    goto :goto_0
.end method

.method public static encodeLong(J[BI)I
    .locals 6
    .parameter "n"
    .parameter "buf"
    .parameter "pos"

    .prologue
    .line 348
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    .line 349
    move v1, p3

    .line 350
    .local v1, start:I
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 351
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, pos:I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 352
    const/4 p3, 0x7

    ushr-long/2addr p0, p3

    .line 353
    const-wide/16 v2, 0x7f

    cmp-long p3, p0, v2

    if-lez p3, :cond_1

    .line 354
    add-int/lit8 p3, v0, 0x1

    .end local v0           #pos:I
    .restart local p3
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 355
    const/4 v0, 0x7

    ushr-long/2addr p0, v0

    .line 356
    const-wide/16 v2, 0x7f

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    .line 357
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #pos:I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 358
    const/4 p3, 0x7

    ushr-long/2addr p0, p3

    .line 359
    const-wide/16 v2, 0x7f

    cmp-long p3, p0, v2

    if-lez p3, :cond_1

    .line 360
    add-int/lit8 p3, v0, 0x1

    .end local v0           #pos:I
    .restart local p3
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 361
    const/4 v0, 0x7

    ushr-long/2addr p0, v0

    .line 362
    const-wide/16 v2, 0x7f

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    .line 363
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #pos:I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 364
    const/4 p3, 0x7

    ushr-long/2addr p0, p3

    .line 365
    const-wide/16 v2, 0x7f

    cmp-long p3, p0, v2

    if-lez p3, :cond_1

    .line 366
    add-int/lit8 p3, v0, 0x1

    .end local v0           #pos:I
    .restart local p3
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 367
    const/4 v0, 0x7

    ushr-long/2addr p0, v0

    .line 368
    const-wide/16 v2, 0x7f

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    .line 369
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #pos:I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 370
    const/4 p3, 0x7

    ushr-long/2addr p0, p3

    .line 371
    const-wide/16 v2, 0x7f

    cmp-long p3, p0, v2

    if-lez p3, :cond_1

    .line 372
    add-int/lit8 p3, v0, 0x1

    .end local v0           #pos:I
    .restart local p3
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 373
    const/4 v0, 0x7

    ushr-long/2addr p0, v0

    .line 374
    const-wide/16 v2, 0x7f

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    .line 375
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #pos:I
    const-wide/16 v2, 0x80

    or-long/2addr v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 376
    const/4 p3, 0x7

    ushr-long/2addr p0, p3

    move p3, v0

    .line 386
    .end local v0           #pos:I
    .restart local p3
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #pos:I
    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    .line 387
    .end local p0
    sub-int p0, v0, v1

    return p0

    .restart local p0
    :cond_1
    move p3, v0

    .end local v0           #pos:I
    .restart local p3
    goto :goto_0
.end method

.method private static hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I
    .locals 7
    .parameter "init"
    .parameter "data"
    .parameter "len"
    .parameter "rev"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    move v2, p0

    .line 283
    .local v2, hashCode:I
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->bytes:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$500(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getBuf()[B

    move-result-object v0

    .line 284
    .local v0, bytes:[B
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->bytes:Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$500(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/io/BinaryDecoder$BufferAccessor;->getPos()I

    move-result v4

    .line 285
    .local v4, start:I
    add-int v1, v4, p2

    .line 286
    .local v1, end:I
    if-eqz p3, :cond_0

    .line 287
    const/4 v5, 0x1

    sub-int v3, v1, v5

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 288
    mul-int/lit8 v5, v2, 0x1f

    aget-byte v6, v0, v3

    add-int v2, v5, v6

    .line 287
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 290
    .end local v3           #i:I
    :cond_0
    move v3, v4

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 291
    mul-int/lit8 v5, v2, 0x1f

    aget-byte v6, v0, v3

    add-int v2, v5, v6

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    :cond_1
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static {p1}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$400(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/flurry/org/apache/avro/io/BinaryDecoder;->skipFixed(I)V

    .line 293
    return v2
.end method

.method private static hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 14
    .parameter "data"
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x20

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 228
    #getter for: Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->decoder:Lcom/flurry/org/apache/avro/io/BinaryDecoder;
    invoke-static {p0}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->access$400(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 229
    .local v0, decoder:Lcom/flurry/org/apache/avro/io/Decoder;
    sget-object v9, Lcom/flurry/org/apache/avro/io/BinaryData$3;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 276
    new-instance v9, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v10, "Unexpected schema to hashCode!"

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 231
    :pswitch_0
    const/4 v3, 0x1

    .line 232
    .local v3, hashCode:I
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 233
    .local v2, field:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->order()Lcom/flurry/org/apache/avro/Schema$Field$Order;

    move-result-object v9

    sget-object v10, Lcom/flurry/org/apache/avro/Schema$Field$Order;->IGNORE:Lcom/flurry/org/apache/avro/Schema$Field$Order;

    if-ne v9, v10, :cond_0

    .line 234
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;->skip(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/io/Decoder;)V

    goto :goto_0

    .line 237
    :cond_0
    mul-int/lit8 v9, v3, 0x1f

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v10

    add-int v3, v9, v10

    .line 238
    goto :goto_0

    .end local v2           #field:Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_1
    move v9, v3

    .line 274
    .end local v3           #hashCode:I
    .end local v6           #i$:Ljava/util/Iterator;
    :goto_1
    return v9

    .line 242
    :pswitch_1
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v9

    goto :goto_1

    .line 244
    :pswitch_2
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    goto :goto_1

    .line 246
    :pswitch_3
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readLong()J

    move-result-wide v7

    .line 247
    .local v7, l:J
    ushr-long v9, v7, v13

    xor-long/2addr v9, v7

    long-to-int v9, v9

    goto :goto_1

    .line 250
    .end local v7           #l:J
    :pswitch_4
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 251
    .restart local v7       #l:J
    ushr-long v9, v7, v13

    xor-long/2addr v9, v7

    long-to-int v9, v9

    goto :goto_1

    .line 254
    .end local v7           #l:J
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    .line 255
    .local v1, elementType:Lcom/flurry/org/apache/avro/Schema;
    const/4 v3, 0x1

    .line 256
    .restart local v3       #hashCode:I
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readArrayStart()J

    move-result-wide v7

    .restart local v7       #l:J
    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    .line 257
    const-wide/16 v4, 0x0

    .local v4, i:J
    :goto_3
    cmp-long v9, v4, v7

    if-gez v9, :cond_2

    .line 258
    mul-int/lit8 v9, v3, 0x1f

    invoke-static {p0, v1}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v10

    add-int v3, v9, v10

    .line 257
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    goto :goto_3

    .line 256
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->arrayNext()J

    move-result-wide v7

    goto :goto_2

    .end local v4           #i:J
    :cond_3
    move v9, v3

    .line 259
    goto :goto_1

    .line 262
    .end local v1           #elementType:Lcom/flurry/org/apache/avro/Schema;
    .end local v3           #hashCode:I
    .end local v7           #l:J
    :pswitch_6
    new-instance v9, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v10, "Can\'t hashCode maps!"

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 264
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/Schema;

    invoke-static {p0, v9}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v9

    goto :goto_1

    .line 266
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v9

    invoke-static {v12, p0, v9, v11}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I

    move-result v9

    goto :goto_1

    .line 268
    :pswitch_9
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v9

    invoke-static {v11, p0, v9, v11}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I

    move-result v9

    goto :goto_1

    .line 270
    :pswitch_a
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readInt()I

    move-result v9

    invoke-static {v12, p0, v9, v12}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashBytes(ILcom/flurry/org/apache/avro/io/BinaryData$HashData;IZ)I

    move-result v9

    goto/16 :goto_1

    .line 272
    :pswitch_b
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Decoder;->readBoolean()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4cf

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0x4d5

    goto/16 :goto_1

    :pswitch_c
    move v9, v11

    .line 274
    goto/16 :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static hashCode([BIILcom/flurry/org/apache/avro/Schema;)I
    .locals 3
    .parameter "bytes"
    .parameter "start"
    .parameter "length"
    .parameter "schema"

    .prologue
    .line 217
    sget-object v2, Lcom/flurry/org/apache/avro/io/BinaryData;->HASH_DATA:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;

    .line 218
    .local v0, data:Lcom/flurry/org/apache/avro/io/BinaryData$HashData;
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/org/apache/avro/io/BinaryData$HashData;->set([BII)V

    .line 220
    :try_start_0
    invoke-static {v0, p3}, Lcom/flurry/org/apache/avro/io/BinaryData;->hashCode(Lcom/flurry/org/apache/avro/io/BinaryData$HashData;Lcom/flurry/org/apache/avro/Schema;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v2, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static skipLong([BI)I
    .locals 4
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 298
    move v1, p1

    .line 299
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-byte v0, p0, v1

    .local v0, b:I
    :goto_0
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-byte v0, p0, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 300
    :cond_0
    return v2
.end method

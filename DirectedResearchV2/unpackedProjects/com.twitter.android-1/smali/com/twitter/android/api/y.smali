.class public final Lcom/twitter/android/api/y;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/codehaus/jackson/d;

.field private static b:Ljava/util/HashMap;

.field private static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    new-instance v0, Lorg/codehaus/jackson/d;

    invoke-direct {v0}, Lorg/codehaus/jackson/d;-><init>()V

    sput-object v0, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "favorite"

    new-instance v2, Lcom/twitter/android/api/ab;

    invoke-direct {v2, v4, v4, v5, v7}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "mention"

    new-instance v2, Lcom/twitter/android/api/ab;

    invoke-direct {v2, v5, v4, v4, v5}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "reply"

    new-instance v2, Lcom/twitter/android/api/ab;

    invoke-direct {v2, v6, v4, v5, v5}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "retweet"

    new-instance v2, Lcom/twitter/android/api/ab;

    invoke-direct {v2, v8, v4, v5, v5}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "follow"

    new-instance v2, Lcom/twitter/android/api/ab;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v4, v4, v7}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "list_member_added"

    new-instance v2, Lcom/twitter/android/api/ab;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v4, v4, v6}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    const-string v1, "list_created"

    new-instance v2, Lcom/twitter/android/api/ab;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/twitter/android/api/ab;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    const-string v1, "poi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    const-string v1, "neighborhood"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    const-string v1, "city"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    const-string v1, "admin"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    const-string v1, "country"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/e;
    .locals 13

    const/16 v11, 0x5d

    const/16 v10, 0x5b

    const/16 v9, 0x2c

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    :goto_0
    if-eqz v0, :cond_b

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v7, v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v12, v0

    move-object v0, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_0

    :sswitch_0
    const-string v0, "full_name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v12, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_2

    :cond_1
    const-string v0, "place_type"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    :cond_2
    const-string v0, "id"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :sswitch_2
    const-string v0, "bounding_box"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v12, v0

    move-object v0, v4

    move-object v4, v12

    :goto_3
    if-eqz v4, :cond_9

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v6, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v7, v4

    sparse-switch v4, :sswitch_data_1

    :goto_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_3

    :sswitch_3
    const-string v4, "coordinates"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p0, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    if-eqz v4, :cond_6

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_6

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_5

    :goto_6
    if-eqz v4, :cond_5

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_5

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_3

    invoke-static {p0}, Lcom/twitter/android/api/y;->B(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_6

    :cond_4
    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_5

    :cond_6
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v5

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_4

    :sswitch_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_4

    :cond_9
    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :cond_b
    new-instance v5, Lcom/twitter/android/api/e;

    sget-object v0, Lcom/twitter/android/api/y;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/twitter/android/api/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x7 -> :sswitch_4
    .end sparse-switch
.end method

.method private static B(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, v3

    move-object v4, v0

    move-object v0, v3

    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_2

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_1

    :cond_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static C(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/d;
    .locals 20

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_b

    sget-object v19, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v19

    if-eq v2, v0, :cond_b

    sget-object v19, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v19, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v19, "action"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "event"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    sget-object v19, Lcom/twitter/android/api/y;->b:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/ab;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/twitter/android/api/ab;->a:I

    iget v11, v2, Lcom/twitter/android/api/ab;->b:I

    iget v14, v2, Lcom/twitter/android/api/ab;->c:I

    iget v0, v2, Lcom/twitter/android/api/ab;->d:I

    move/from16 v17, v0

    goto :goto_1

    :cond_2
    const-string v19, "created_at"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    sget-object v2, Lcom/twitter/android/util/q;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/twitter/android/util/q;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_3
    const-string v19, "max_position"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    :cond_4
    const-string v19, "min_position"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v19, "sources"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v2, 0x1

    if-ne v2, v11, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :cond_6
    const-string v19, "targets"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    packed-switch v14, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v15

    goto/16 :goto_1

    :pswitch_4
    const/4 v2, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v15}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;

    move-result-object v15

    goto/16 :goto_1

    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/api/y;->c(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;

    move-result-object v15

    goto/16 :goto_1

    :cond_7
    const-string v19, "target_objects"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    packed-switch v17, :pswitch_data_2

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :pswitch_6
    const/4 v2, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_1

    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/api/y;->c(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v19, "sources_size"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v10

    goto/16 :goto_1

    :cond_9
    const-string v19, "targets_size"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v13

    goto/16 :goto_1

    :cond_a
    const-string v19, "target_objects_size"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v16

    goto/16 :goto_1

    :cond_b
    if-eqz v12, :cond_c

    if-nez v15, :cond_d

    :cond_c
    const/4 v2, 0x0

    :goto_2
    return-object v2

    :cond_d
    new-instance v2, Lcom/twitter/android/api/d;

    invoke-direct/range {v2 .. v18}, Lcom/twitter/android/api/d;-><init>(IJJJIILjava/util/List;IILjava/util/List;IILjava/util/List;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static D(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory;
    .locals 15

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v0, v10

    :goto_0
    if-eqz v1, :cond_b

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_b

    sget-object v2, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v3

    move-wide v2, v8

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    move-object v12, v8

    move-wide v8, v2

    move v3, v1

    move-object v1, v12

    goto :goto_0

    :pswitch_1
    const-string v1, "data"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v1, v10

    move-object v0, v10

    :goto_2
    if-eqz v2, :cond_3

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v11, :cond_3

    sget-object v11, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v11, v2

    packed-switch v2, :pswitch_data_1

    :cond_1
    :goto_3
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_2

    :pswitch_3
    const-string v2, "title"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    const-string v2, "articles"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_1

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v11, :cond_1

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v11, :cond_2

    invoke-static {p0}, Lcom/twitter/android/api/y;->H(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v2

    move v1, v3

    move-wide v2, v8

    goto :goto_1

    :cond_4
    if-ne v3, v6, :cond_5

    invoke-static {p0}, Lcom/twitter/android/api/y;->E(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;

    move-result-object v0

    move v1, v3

    move-wide v2, v8

    goto/16 :goto_1

    :cond_5
    if-ne v3, v5, :cond_6

    invoke-static {p0}, Lcom/twitter/android/api/y;->F(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;

    move-result-object v0

    move v1, v3

    move-wide v2, v8

    goto/16 :goto_1

    :cond_6
    if-ne v3, v7, :cond_7

    invoke-static {p0}, Lcom/twitter/android/api/y;->G(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;

    move-result-object v0

    move v1, v3

    move-wide v2, v8

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move v1, v3

    move-wide v2, v8

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "score"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()D

    move-result-wide v1

    move v12, v3

    move-wide v13, v1

    move-wide v2, v13

    move v1, v12

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "type"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "news"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v4

    move-wide v2, v8

    goto/16 :goto_1

    :cond_8
    const-string v2, "tweet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v5

    move-wide v2, v8

    goto/16 :goto_1

    :cond_9
    const-string v2, "topic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v6

    move-wide v2, v8

    goto/16 :goto_1

    :cond_a
    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    move-wide v2, v8

    goto/16 :goto_1

    :cond_b
    if-nez v0, :cond_c

    move-object v0, v10

    :goto_5
    return-object v0

    :cond_c
    new-instance v1, Lcom/twitter/android/api/TwitterStory;

    invoke-direct {v1, v3, v8, v9, v0}, Lcom/twitter/android/api/TwitterStory;-><init>(IDLcom/twitter/android/api/TwitterStory$Data;)V

    move-object v0, v1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static E(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v3, v0

    move-object v6, v1

    move-object v2, v0

    move-object v5, v0

    move v4, v8

    move-object v1, v0

    :goto_0
    if-eqz v6, :cond_3

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v9, :cond_3

    sget-object v9, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v6, v9, v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    const-string v9, "query"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v9, "name"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_2
    const-string v6, "media"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->I(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    const-string v6, "tweet_count"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v4

    goto :goto_1

    :pswitch_4
    const-string v6, "tweet"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0, v0}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;)Lcom/twitter/android/api/b;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    iget-object v0, v3, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    if-eqz v0, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$Media;

    iget-object v6, v0, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/twitter/android/util/g;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v3, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v6, v6, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, v3, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v6, v6, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v6, v6, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    iget-object v10, v0, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    if-nez v6, :cond_6

    new-instance v6, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v6}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    iget-object v8, v0, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v8, v6, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v8, v0, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v8, v6, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v0, v6, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    iput v7, v6, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    iget-object v0, v3, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, v3, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/b;ILjava/lang/String;)V

    return-object v0

    :cond_7
    move v6, v8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static F(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;
    .locals 15

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v11, v12

    move-object v0, v12

    :goto_0
    if-eqz v1, :cond_3

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :sswitch_0
    const-string v1, "status"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v12}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;)Lcom/twitter/android/api/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twitter/android/api/b;->a()Lcom/twitter/android/api/b;

    move-result-object v13

    new-instance v0, Lcom/twitter/android/api/TwitterStory$Status;

    iget-wide v1, v13, Lcom/twitter/android/api/b;->a:J

    iget-object v3, v13, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-wide v3, v3, Lcom/twitter/android/api/c;->a:J

    iget-object v5, v13, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-object v5, v5, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iget-object v6, v13, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-object v6, v6, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iget-object v7, v13, Lcom/twitter/android/api/b;->m:Lcom/twitter/android/api/c;

    iget-object v7, v7, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-object v8, v13, Lcom/twitter/android/api/b;->h:Ljava/lang/String;

    iget v9, v13, Lcom/twitter/android/api/b;->o:I

    iget-object v10, v13, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/TwitterStory$Status;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/android/api/TweetEntities;)V

    iget-object v1, v13, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    if-eqz v1, :cond_0

    iget-object v1, v13, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    invoke-virtual {v1}, Lcom/twitter/android/api/TweetEntities;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v13, Lcom/twitter/android/api/b;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v1, v1, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/twitter/android/api/TweetEntities$Media;

    const/4 v1, 0x1

    iget v4, v3, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    if-ne v1, v4, :cond_1

    new-instance v1, Lcom/twitter/android/api/TwitterStory$Media;

    iget-object v2, v3, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v3, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/android/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, v3, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    const-string v4, "photo"

    move v5, v14

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/api/TwitterStory$Media;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    if-nez v11, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v2

    goto :goto_1

    :cond_2
    iget-object v2, v3, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    const-string v1, "media"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v12

    :goto_4
    return-object v0

    :cond_4
    new-instance v1, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct {v1, v0, v11}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Lcom/twitter/android/api/TwitterStory$Status;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v2, v11

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static G(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v0, v10

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    const-string v2, "users"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    if-eqz v1, :cond_0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v8

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    :goto_2
    new-instance v0, Lcom/twitter/android/api/TwitterStory$User;

    iget-wide v1, v8, Lcom/twitter/android/api/c;->a:J

    iget-object v3, v8, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iget-object v4, v8, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iget-object v5, v8, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    iget-object v6, v8, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-boolean v7, v8, Lcom/twitter/android/api/c;->h:Z

    iget-boolean v8, v8, Lcom/twitter/android/api/c;->i:Z

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/api/TwitterStory$User;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v0, v9

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v10

    :goto_4
    return-object v0

    :cond_2
    new-instance v1, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct {v1, v0}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v9, v0

    goto :goto_2

    :cond_4
    move-object v9, v0

    goto :goto_3
.end method

.method private static H(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$ArticleResponse;
    .locals 15

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v9, v12

    move-object v8, v12

    move-object v5, v12

    move-object v2, v12

    move-object v3, v12

    move-object v1, v12

    move-object v10, v12

    :goto_0
    if-eqz v0, :cond_7

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v11, :cond_7

    sget-object v11, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v11, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "url"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v11, v12

    move-object v0, v12

    :goto_2
    if-eqz v2, :cond_2

    sget-object v13, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v13, :cond_2

    sget-object v13, Lorg/codehaus/jackson/JsonToken;->g:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v13, :cond_8

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v13, "display_url"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v11

    move-object v14, v11

    move-object v11, v2

    move-object v2, v14

    goto :goto_2

    :cond_1
    const-string v13, "expanded_url"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v2, v11

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    invoke-direct {v2, v11, v0}, Lcom/twitter/android/api/TwitterStory$ArticleUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v0, "media"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->I(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    const-string v11, "title"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v11, "description"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v11, "attribution"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_5
    const-string v11, "query"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    const-string v11, "name"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "tweet_count"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v4

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "score"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()D

    move-result-wide v6

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/TwitterStory$ArticleResponse;-><init>(Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$ArticleUrl;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :cond_8
    move-object v2, v11

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private static I(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->J(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static J(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Media;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v2, v3

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_8

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v5, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v1

    const-string v5, "type"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v5, "media_url"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    const-string v1, "sizes"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v5, :cond_6

    const-string v5, "large"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->g:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v5, :cond_4

    const-string v5, "url"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v1, :cond_5

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v5, :cond_3

    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    move-object v1, v2

    :goto_3
    new-instance v0, Lcom/twitter/android/api/TwitterStory$Media;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory$Media;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_9
    move-object v1, v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static K(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string v0, "suggestion"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    const-string v5, "users"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_0

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "next_cursor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_3
    new-instance v0, Lcom/twitter/android/api/aa;

    invoke-direct {v0, v2, v1}, Lcom/twitter/android/api/aa;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/aa;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    const-string v5, "lists"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0, p1}, Lcom/twitter/android/api/y;->c(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_0

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "next_cursor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_3
    new-instance v0, Lcom/twitter/android/api/aa;

    invoke-direct {v0, v2, v1}, Lcom/twitter/android/api/aa;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;)Lcom/twitter/android/api/b;
    .locals 54

    const/16 v24, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const-wide/16 v28, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1b

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v6, :cond_1b

    sget-object v6, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    move-object/from16 v24, v7

    move-object v7, v4

    move-object/from16 v51, v3

    move-object v3, v10

    move-object/from16 v10, v51

    move-wide/from16 v52, v5

    move-wide/from16 v4, v52

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "created_at"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v24

    move-object/from16 v51, v3

    move-object v3, v10

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto :goto_1

    :cond_1
    const-string v6, "source"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v3, "<a"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x3e

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_5

    const/16 v8, 0x3c

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v8, "href=\""

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    add-int/lit8 v8, v8, 0x6

    const/16 v9, 0x22

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v9, v0, :cond_2

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_2
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v8

    :goto_3
    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v9, v6

    move-object v8, v3

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v51, v6

    move-object v6, v3

    move-object/from16 v3, v51

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v51, v6

    move-object v6, v3

    move-object/from16 v3, v51

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v51, v6

    move-object v6, v3

    move-object/from16 v3, v51

    goto :goto_2

    :cond_7
    new-instance v3, Landroid/util/Pair;

    const/4 v8, 0x0

    invoke-direct {v3, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v3

    goto :goto_3

    :cond_8
    const-string v6, "text"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_9
    const-string v6, "retweet_count"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "100+"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v22, 0x64

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v4

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_a
    const-string v6, "in_reply_to_user_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v11

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_b
    const-string v6, "in_reply_to_status_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v13

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_c
    const-string v6, "retweet_count"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v22

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "favorited"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v15, 0x0

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "favorited"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v15, 0x1

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :pswitch_4
    const-string v3, "current_user_retweet"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_0

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v6, :cond_0

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_d

    const-string v3, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v28

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_4

    :cond_e
    const-string v3, "user"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v20

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_f
    const-string v3, "coordinates"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    const/4 v6, 0x0

    :goto_5
    if-eqz v3, :cond_12

    sget-object v25, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v25

    if-eq v3, v0, :cond_12

    sget-object v25, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v25, v3

    sparse-switch v3, :sswitch_data_0

    :goto_6
    move-object v3, v6

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    move-object/from16 v51, v3

    move-object v3, v6

    move-object/from16 v6, v51

    goto :goto_5

    :sswitch_0
    const-string v3, "coordinates"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/y;->B(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;

    move-result-object v25

    if-eqz v25, :cond_10

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_10
    move-object v3, v6

    goto :goto_7

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-object v3, v6

    goto :goto_7

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_6

    :cond_12
    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_13
    const-string v3, "place"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/y;->A(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/e;

    move-result-object v18

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_14
    const-string v3, "retweeted_status"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v19

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_15
    const-string v3, "entities"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v21

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_16
    const-string v3, "metadata"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->g:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_18

    const-string v6, "result_type"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v23

    :cond_18
    if-eqz v3, :cond_0

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v6, :cond_17

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_19
    const-string v3, "promoted_content"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/PromotedContent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v26

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-object v3, v10

    move-object/from16 v51, v7

    move-object/from16 v7, v24

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v51, v7

    move-object v7, v3

    move-object v3, v10

    move-wide/from16 v52, v4

    move-wide/from16 v5, v52

    move-object/from16 v4, v51

    goto/16 :goto_1

    :cond_1b
    if-eqz v26, :cond_1d

    const/4 v3, 0x1

    :goto_8
    sget-object v6, Lcom/twitter/android/util/q;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7}, Lcom/twitter/android/util/q;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v6

    const-string v24, "popular"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1c

    if-eqz v3, :cond_1e

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    :goto_9
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/twitter/android/api/y;->a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v30, -0x1

    cmp-long v3, v28, v30

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/twitter/android/api/b;

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v26}, Lcom/twitter/android/api/b;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/e;Lcom/twitter/android/api/b;Lcom/twitter/android/api/c;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;)V

    new-instance v27, Lcom/twitter/android/api/b;

    move-wide/from16 v30, v6

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-wide/from16 v35, v11

    move-wide/from16 v37, v13

    move/from16 v39, v15

    move-object/from16 v40, v16

    move-object/from16 v41, v17

    move-object/from16 v42, v18

    move-object/from16 v43, v3

    move-object/from16 v44, p1

    move-object/from16 v45, v21

    move/from16 v46, v22

    move-object/from16 v47, v23

    move-wide/from16 v48, v24

    move-object/from16 v50, v26

    invoke-direct/range {v27 .. v50}, Lcom/twitter/android/api/b;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/e;Lcom/twitter/android/api/b;Lcom/twitter/android/api/c;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;)V

    :goto_a
    return-object v27

    :cond_1d
    const/4 v3, 0x0

    goto :goto_8

    :cond_1e
    move-wide/from16 v24, v6

    goto :goto_9

    :cond_1f
    new-instance v3, Lcom/twitter/android/api/b;

    invoke-direct/range {v3 .. v26}, Lcom/twitter/android/api/b;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/e;Lcom/twitter/android/api/b;Lcom/twitter/android/api/c;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;)V

    move-object/from16 v27, v3

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;
    .locals 29

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    const/16 v20, 0x0

    :goto_0
    if-eqz v2, :cond_15

    sget-object v22, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v22

    if-eq v2, v0, :cond_15

    sget-object v22, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v22, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v2, v8

    move-object/from16 v8, v21

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v21

    move-object/from16 v28, v21

    move-object/from16 v21, v8

    move-object v8, v2

    move-object/from16 v2, v28

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v5

    move-object v2, v8

    move-object/from16 v8, v21

    goto :goto_1

    :cond_1
    const-string v22, "screen_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v6

    move-object v2, v8

    move-object/from16 v8, v21

    goto :goto_1

    :cond_2
    const-string v22, "profile_image_url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object/from16 v8, v21

    goto :goto_1

    :cond_3
    const-string v22, "description"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, v21

    goto :goto_1

    :cond_4
    const-string v22, "url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v10

    move-object v2, v8

    move-object/from16 v8, v21

    goto :goto_1

    :cond_5
    const-string v22, "location"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v14

    move-object v2, v8

    move-object/from16 v8, v21

    goto :goto_1

    :cond_6
    const-string v22, "created_at"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :catch_0
    move-exception v16

    sget-object v16, Lcom/twitter/android/util/q;->a:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/twitter/android/util/q;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v16

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_7
    const-string v22, "profile_background_color"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x1000000

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x10

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    or-int/2addr v11, v2

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :catch_1
    move-exception v2

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v3

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_8
    const-string v22, "followers_count"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v9

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_9
    const-string v22, "friends_count"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v15

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_a
    const-string v22, "statuses_count"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v18

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_b
    const-string v22, "favourites_count"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v26

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "protected"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/4 v12, 0x0

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_c
    const-string v22, "geo_enabled"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v19, 0x0

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "protected"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/4 v12, 0x1

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_d
    const-string v22, "verified"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/4 v13, 0x1

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_e
    const-string v22, "geo_enabled"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v19, 0x1

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_f
    const-string v22, "following"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/4 v2, 0x1

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v20

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_10
    const-string v22, "followed_by"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/4 v2, 0x2

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v20

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_11
    const-string v22, "blocking"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/4 v2, 0x4

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v20

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_12
    const-string v22, "can_dm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v20

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "status"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;)Lcom/twitter/android/api/b;

    move-result-object v23

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_13
    const-string v2, "promoted_content"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/PromotedContent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v27

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v8

    move-object v8, v2

    move-object/from16 v2, v28

    goto/16 :goto_1

    :cond_15
    new-instance v2, Lcom/twitter/android/api/c;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/twitter/android/api/y;->a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v21, 0x0

    move-wide/from16 v24, p1

    invoke-direct/range {v2 .. v27}, Lcom/twitter/android/api/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/b;JILcom/twitter/android/api/PromotedContent;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/twitter/android/api/c;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    const/16 v1, 0x200

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    sget-object v1, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/d;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "id"

    iget-wide v3, p0, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    const-string v0, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    iget-object v3, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "profile_image_url"

    iget-object v3, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "description"

    iget-object v3, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "url"

    iget-object v3, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "location"

    iget-object v3, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v3, p0, Lcom/twitter/android/api/c;->m:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    const-string v0, "created_at"

    iget-wide v3, p0, Lcom/twitter/android/api/c;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "friends_count"

    iget v3, p0, Lcom/twitter/android/api/c;->l:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "followers_count"

    iget v3, p0, Lcom/twitter/android/api/c;->k:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "statuses_count"

    iget v3, p0, Lcom/twitter/android/api/c;->n:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "geo_enabled"

    iget-boolean v3, p0, Lcom/twitter/android/api/c;->p:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    const-string v0, "protected"

    iget-boolean v3, p0, Lcom/twitter/android/api/c;->h:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    const-string v0, ""

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/android/util/a;->a:Lcom/twitter/android/util/a;

    invoke-virtual {v0, p0}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/v;

    move-result-object v0

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/twitter/android/util/v;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/twitter/android/util/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/twitter/android/util/i;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    sub-int/2addr v6, v0

    sub-int v7, v6, v5

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v0, v7

    const-string v7, " "

    invoke-virtual {v2, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v5, v7, v1

    const/4 v5, 0x1

    add-int/lit8 v6, v6, -0x1

    aput v6, v7, v5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/twitter/android/util/v;->a:Ljava/lang/String;

    const-string v1, "((\\s\\s+)|\\n|\\r)"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v1, p0}, Lorg/codehaus/jackson/d;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_1

    invoke-static {v3}, Lcom/twitter/android/api/y;->B(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_2

    invoke-static {p0, p1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;)Lcom/twitter/android/api/b;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v3, v0, Lcom/twitter/android/api/b;->q:Lcom/twitter/android/api/PromotedContent;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-wide v3, v1, Lcom/twitter/android/api/b;->e:J

    iput-wide v3, v0, Lcom/twitter/android/api/b;->e:J

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/r;
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    :sswitch_0
    const-string v3, "user"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :sswitch_1
    const-string v3, "connections"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    new-instance v2, Lcom/twitter/android/api/r;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/api/r;-><init>(Lcom/twitter/android/api/c;Ljava/util/ArrayList;)V

    move-object v0, v2

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;
    .locals 13

    const/4 v10, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v12, v0

    move-object v0, v10

    move-object v10, v12

    :goto_0
    if-eqz v10, :cond_8

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v10, v11, :cond_8

    sget-object v11, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v10

    aget v10, v11, v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v11, "full_name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v11, "description"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v11, "mode"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v8

    const-string v10, "public"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v10

    const-string v11, "member_count"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v6

    goto :goto_1

    :cond_5
    const-string v11, "subscriber_count"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v7

    goto :goto_1

    :cond_6
    const-string v11, "id"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v1

    goto :goto_1

    :pswitch_3
    const-string v10, "user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-wide/16 v9, 0x0

    invoke-static {p0, v9, v10}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v9

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/twitter/android/api/t;

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/t;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/twitter/android/api/c;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "[^a-zA-Z0-9_]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_0

    invoke-static {p0, v2, v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Lcom/twitter/android/api/c;
    .locals 3

    sget-object v0, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/d;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-static {p0, p1}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;)Lcom/twitter/android/api/b;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->f(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static f(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/s;
    .locals 15

    const/4 v4, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v9, :cond_5

    sget-object v9, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    move-object v12, v1

    move-wide v13, v2

    move-wide v1, v13

    move-object v3, v12

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    const-string v9, "created_at"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v0, v5

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_1

    :cond_1
    const-string v9, "text"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    const-string v9, "id"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v1

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_1

    :pswitch_3
    const-string v0, "sender"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v9, 0x0

    invoke-static {p0, v9, v10}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v6

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_1

    :cond_2
    const-string v0, "recipient"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v9, 0x0

    invoke-static {p0, v9, v10}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v7

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_1

    :cond_3
    const-string v0, "entities"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v8

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v5

    move-wide v11, v1

    move-object v1, v3

    move-wide v2, v11

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/twitter/android/api/s;

    sget-object v4, Lcom/twitter/android/util/q;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v3}, Lcom/twitter/android/util/q;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v5, v8}, Lcom/twitter/android/api/y;->a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/api/s;-><init>(JJLjava/lang/String;Lcom/twitter/android/api/c;Lcom/twitter/android/api/c;Lcom/twitter/android/api/TweetEntities;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static g(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_5

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-wide v8, v1

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    if-eqz v2, :cond_4

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_1

    :sswitch_0
    const-string v2, "as_of"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/twitter/android/util/q;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/util/q;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    :sswitch_2
    const-string v5, "trends"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_3
    if-eqz v2, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    invoke-static {p0}, Lcom/twitter/android/api/y;->z(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    :cond_3
    move-wide v0, v1

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-wide v8, v0

    move-object v0, v2

    move-wide v1, v8

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/x;

    int-to-long v6, v3

    add-long/2addr v6, v1

    iput-wide v6, v0, Lcom/twitter/android/api/x;->h:J

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_6
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static h(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/f;
    .locals 9

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v4, v0

    move-wide v7, v1

    move-wide v0, v7

    move v2, v3

    :goto_0
    if-eqz v4, :cond_3

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v5, v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "remaining_hits"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v3

    goto :goto_1

    :cond_1
    const-string v5, "hourly_limit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v2

    goto :goto_1

    :cond_2
    const-string v5, "reset_time_in_seconds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/twitter/android/api/f;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/twitter/android/api/f;-><init>(IIJ)V

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static i(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/z;
    .locals 4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :sswitch_0
    const-string v1, "short_url_length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/twitter/android/api/z;

    invoke-direct {v1, v0}, Lcom/twitter/android/api/z;-><init>(I)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static j(Lorg/codehaus/jackson/JsonParser;)I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v3

    :goto_0
    if-eqz v2, :cond_8

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_8

    sget-object v4, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    :sswitch_0
    const-string v2, "relationship"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    sparse-switch v2, :sswitch_data_1

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_2

    :sswitch_1
    const-string v2, "source"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    :goto_4
    if-eqz v2, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    const-string v4, "following"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v1

    goto :goto_5

    :cond_3
    const-string v4, "followed_by"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v1

    goto :goto_5

    :cond_4
    const-string v4, "blocking"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v1

    goto :goto_5

    :cond_5
    const-string v4, "can_dm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v1

    goto :goto_5

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    return v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static k(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_5

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    :sswitch_0
    const-string v3, "result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    if-eqz v2, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_3
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_2

    :pswitch_1
    const-string v2, "places"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2

    invoke-static {p0}, Lcom/twitter/android/api/y;->A(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static l(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->m(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static m(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v2, v7

    move-object v1, v7

    move-wide v5, v3

    :goto_0
    if-eqz v0, :cond_3

    sget-object v8, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v8, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v5

    goto :goto_1

    :pswitch_2
    const-string v0, "name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v0, "query"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v0, "created_at"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/android/util/q;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/twitter/android/util/q;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/twitter/android/api/x;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static n(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 8

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    move-object v2, v6

    move-object v1, v6

    :goto_0
    if-eqz v0, :cond_4

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_4

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_3

    move-object v5, v6

    :goto_1
    if-eqz v0, :cond_2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, "name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string v3, "slug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    const-string v0, "sample"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    new-instance v0, Lcom/twitter/android/api/x;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static o(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const-string v3, "users"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static p(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :goto_1
    :pswitch_0
    if-eqz v1, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static q(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/g;
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v5, v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    :sswitch_0
    const-string v3, "scribe_interval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    goto :goto_1

    :sswitch_1
    const-string v3, "scribe_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/twitter/android/api/g;

    invoke-direct {v3, v2, v0, v1}, Lcom/twitter/android/api/g;-><init>(ZJ)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static r(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->C(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static s(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/u;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v1, v2

    move-object v0, v2

    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    const-string v4, "statuses"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v4, "stories"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    new-instance v2, Lcom/twitter/android/api/u;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/api/u;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/twitter/android/api/y;->D(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static u(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string v2, "results"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    if-eqz v0, :cond_0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_2

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    const-string v0, "value"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {p0, v2, v3}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static w(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/q;
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_2

    sget-object v4, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const-string v4, "suggestions"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_1

    invoke-static {p0}, Lcom/twitter/android/api/y;->K(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :pswitch_3
    const-string v2, "msg"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const-string v2, "valid"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->q()Z

    move-result v1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/twitter/android/api/q;

    invoke-direct {v2, v1, v0, v3}, Lcom/twitter/android/api/q;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static x(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/v;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_a

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_0
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move-object v8, v1

    move-object v1, v4

    move-object v4, v8

    :goto_1
    new-instance v0, Lcom/twitter/android/api/v;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[J)V

    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    const-string v7, "favoriters_count"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v7, "repliers_count"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v7, "retweeters_count"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    const-string v7, "favoriters"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-eqz v5, :cond_5

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_5

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/twitter/android/util/q;->b(Ljava/util/Collection;)[J

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v7, "retweeters"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz v5, :cond_8

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_8

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_7

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lcom/twitter/android/util/q;->b(Ljava/util/Collection;)[J

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_0

    :cond_a
    move-object v5, v0

    move-object v4, v0

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public static y(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_8

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v4, :cond_8

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_7

    const-string v4, "errors"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_0

    move v1, v2

    :goto_2
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v4, :cond_1

    move v4, v2

    :goto_3
    and-int/2addr v1, v4

    if-eqz v1, :cond_7

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move v4, v3

    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_2

    move v1, v2

    :goto_5
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v5, :cond_3

    move v5, v2

    :goto_6
    and-int/2addr v1, v5

    if-eqz v1, :cond_4

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v1, :cond_9

    const-string v1, "code"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v1

    :goto_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v6, v4

    move v4, v1

    goto :goto_4

    :cond_0
    move v1, v3

    goto :goto_2

    :cond_1
    move v4, v3

    goto :goto_3

    :cond_2
    move v1, v3

    goto :goto_5

    :cond_3
    move v5, v3

    goto :goto_6

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    if-lez v4, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    move v1, v4

    goto :goto_7
.end method

.method private static z(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v7, v0

    move-object v5, v1

    move-object v2, v0

    move-object v1, v0

    :goto_0
    if-eqz v5, :cond_3

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/twitter/android/api/i;->a:[I

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v5, v8, v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_0

    :sswitch_0
    const-string v5, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v5, "query"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UTF8"

    invoke-static {v2, v5}, Lcom/twitter/android/util/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_1
    const-string v5, "promoted_content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/twitter/android/api/PromotedContent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    new-instance v0, Lcom/twitter/android/api/x;

    move-wide v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.class public Lcom/acmeaom/android/b/c/k/h;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;
.implements Lcom/acmeaom/android/a/f/y;


# static fields
.field public static final a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field private final b:Lcom/acmeaom/android/a/a/b/n;

.field private d:Lcom/acmeaom/android/a/f/o;

.field private e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/k/h;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    sget-object v0, Lcom/acmeaom/android/b/c/k/h;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 48
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    .line 55
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/acmeaom/android/b/c/k/i;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/k/i;-><init>(Lcom/acmeaom/android/b/c/k/h;)V

    const-string v2, "kDynamicURLsUpdated"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    new-instance v1, Lcom/acmeaom/android/b/c/k/j;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/k/j;-><init>(Lcom/acmeaom/android/b/c/k/h;)V

    const-string v2, "kWarningsStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/k/h;->j()Z

    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/acmeaom/android/a/f/f;->a()Lcom/acmeaom/android/a/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/f;->b()V

    .line 71
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 24

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 148
    check-cast p1, Ljava/util/HashMap;

    .line 152
    const-string v12, "type"

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 156
    const-string v4, "a [type class] == %@, expected String"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v3, "features"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 161
    instance-of v4, v3, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 162
    const-string v4, "[features class] == %@, expected ArrayList"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 180
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_2

    .line 181
    const-string v4, "[aFeature class] == %@, expected HashMap"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_3

    .line 186
    const-string v3, "b [type class] == %@, expected String"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    :cond_3
    const-string v5, "Feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 190
    const-string v3, "type == %@, expected @\"Feature\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 194
    :cond_4
    const-string v4, "properties"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 195
    instance-of v5, v4, Ljava/util/Map;

    if-nez v5, :cond_5

    .line 196
    const-string v3, "[properties class] == %@, expected HashMap"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 200
    :cond_5
    const-string v5, "begin"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 201
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_a

    .line 202
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/acmeaom/android/a/a/b/j;->a(D)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v5

    move-object v6, v5

    .line 207
    :goto_2
    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 208
    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_b

    .line 209
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/acmeaom/android/a/a/b/j;->a(D)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v5

    move-object v7, v5

    .line 213
    :goto_3
    const-string v5, "headline"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    if-eqz v5, :cond_23

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_23

    .line 215
    :cond_6
    const-string v8, "headline == %@, [headline class] == %@, expected String"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v5, 0x0

    move-object v8, v5

    .line 220
    :goto_4
    const-string v5, "phenomenon"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 222
    invoke-static {v5}, Lcom/acmeaom/android/b/c/k/a;->d(Ljava/lang/String;)Lcom/acmeaom/android/b/c/k/d;

    move-result-object v5

    move-object v9, v5

    .line 229
    :goto_5
    const-string v5, "significance"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 231
    invoke-static {v5}, Lcom/acmeaom/android/b/c/k/a;->e(Ljava/lang/String;)Lcom/acmeaom/android/b/c/k/c;

    move-result-object v5

    move-object v10, v5

    .line 238
    :goto_6
    const-string v5, "phenomenon_string"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 239
    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    .line 240
    :cond_7
    const/4 v5, 0x0

    .line 243
    :cond_8
    const-string v11, "significance_string"

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    instance-of v11, v4, Ljava/lang/String;

    if-eqz v11, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_22

    .line 245
    :cond_9
    const/4 v4, 0x0

    move-object v11, v4

    .line 248
    :goto_7
    const-string v4, "geometry"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 249
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_e

    .line 250
    const-string v4, "[geometry class] == %@, expected HashMap"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 204
    :cond_a
    const/4 v5, 0x0

    move-object v6, v5

    goto/16 :goto_2

    .line 211
    :cond_b
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->h()Lcom/acmeaom/android/a/a/b/j;

    move-result-object v5

    move-object v7, v5

    goto/16 :goto_3

    .line 224
    :cond_c
    const-string v9, "[phenomenonCode class] == %@, expected String"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    sget-object v5, Lcom/acmeaom/android/b/c/k/d;->a:Lcom/acmeaom/android/b/c/k/d;

    move-object v9, v5

    goto :goto_5

    .line 233
    :cond_d
    const-string v10, "[significanceType class] == %@, expected String"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v15

    invoke-static {v10, v11}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    sget-object v5, Lcom/acmeaom/android/b/c/k/c;->a:Lcom/acmeaom/android/b/c/k/c;

    move-object v10, v5

    goto :goto_6

    .line 254
    :cond_e
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 255
    instance-of v15, v4, Ljava/lang/String;

    if-nez v15, :cond_f

    .line 256
    const-string v3, "c [type class] == %@, expected String"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 260
    :cond_f
    const-string v4, "coordinates"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 261
    instance-of v4, v3, Ljava/util/ArrayList;

    if-nez v4, :cond_10

    .line 262
    const-string v4, "[coordinates class] == %@, expected ArrayList"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 266
    :cond_10
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    if-nez v15, :cond_11

    .line 268
    const-string v4, "couldn\'t allocate polygons with capacity %u"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 271
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 277
    instance-of v4, v3, Ljava/util/ArrayList;

    if-nez v4, :cond_12

    .line 278
    const-string v4, "[aPolygon class] == %@, expected ArrayList"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v18

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 282
    :cond_12
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    if-nez v17, :cond_13

    .line 284
    const-string v4, "couldn\'t allocate points with capacity %u"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v17, v18

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 287
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 288
    instance-of v4, v3, Ljava/util/ArrayList;

    if-nez v4, :cond_14

    .line 289
    const-string v4, "[aPoint class] == %@, expected ArrayList"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 293
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v4, v0, :cond_15

    .line 294
    const-string v4, "[aPoint count] == %u"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 297
    :cond_15
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 298
    instance-of v0, v4, Ljava/lang/Number;

    move/from16 v19, v0

    if-nez v19, :cond_16

    .line 299
    const-string v3, "coordinateNumber doesn\'t respond to -doubleValue, is of class %@"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v20

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 303
    :cond_16
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    .line 304
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 305
    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_17

    .line 306
    const-string v4, "coordinateNumber doesn\'t respond to -doubleValue, is of class %@"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/ab;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 310
    :cond_17
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 311
    new-instance v21, Lcom/acmeaom/android/a/a/d/a;

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 312
    if-nez v21, :cond_18

    .line 313
    const-string v21, "couldn\'t create location with lat == %lf, lon == %lf"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v22, v23

    const/4 v3, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v22, v3

    invoke-static/range {v21 .. v22}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 316
    :cond_18
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 318
    :cond_19
    const/4 v3, 0x3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v3, v4, :cond_1a

    .line 319
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 321
    :cond_1a
    const-string v3, "not enough points to make a polygon"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 325
    :cond_1b
    new-instance v3, Lcom/acmeaom/android/b/c/k/a;

    invoke-direct {v3}, Lcom/acmeaom/android/b/c/k/a;-><init>()V

    .line 326
    if-eqz v3, :cond_1c

    .line 327
    invoke-virtual {v3, v9}, Lcom/acmeaom/android/b/c/k/a;->a(Lcom/acmeaom/android/b/c/k/d;)V

    .line 328
    invoke-virtual {v3, v10}, Lcom/acmeaom/android/b/c/k/a;->a(Lcom/acmeaom/android/b/c/k/c;)V

    .line 329
    invoke-virtual {v3, v5}, Lcom/acmeaom/android/b/c/k/a;->a(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v3, v11}, Lcom/acmeaom/android/b/c/k/a;->b(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/acmeaom/android/b/c/k/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/acmeaom/android/b/c/k/a;->c(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3, v15}, Lcom/acmeaom/android/b/c/k/a;->a(Ljava/util/ArrayList;)V

    .line 333
    invoke-virtual {v3, v6}, Lcom/acmeaom/android/b/c/k/a;->a(Lcom/acmeaom/android/a/a/b/j;)V

    .line 334
    invoke-virtual {v3, v7}, Lcom/acmeaom/android/b/c/k/a;->b(Lcom/acmeaom/android/a/a/b/j;)V

    .line 335
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 337
    :cond_1c
    const-string v3, "couldn\'t create newWarning"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 342
    :cond_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acmeaom/android/b/c/k/a;

    .line 346
    :try_start_0
    new-instance v7, Lcom/acmeaom/android/b/c/k/e;

    invoke-direct {v7, v3}, Lcom/acmeaom/android/b/c/k/e;-><init>(Lcom/acmeaom/android/b/c/k/a;)V

    .line 347
    if-eqz v7, :cond_1f

    .line 348
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1f
    new-instance v7, Lcom/acmeaom/android/b/c/k/f;

    invoke-virtual/range {p0 .. p0}, Lcom/acmeaom/android/b/c/k/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v8

    invoke-direct {v7, v3, v8}, Lcom/acmeaom/android/b/c/k/f;-><init>(Lcom/acmeaom/android/b/c/k/a;F)V

    .line 351
    if-eqz v7, :cond_1e

    .line 352
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/acmeaom/android/c/g/c/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 354
    :catch_0
    move-exception v3

    .line 355
    invoke-static {v3}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 359
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_21

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/acmeaom/android/b/c/k/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 362
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/n;->b()V

    goto/16 :goto_0

    :cond_22
    move-object v11, v4

    goto/16 :goto_7

    :cond_23
    move-object v8, v5

    goto/16 :goto_4
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 134
    const-string v0, "kDynamicURLsKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    const-string v1, "https://%s?c=1"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    .line 128
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->g()V

    .line 129
    invoke-direct {p0, p2}, Lcom/acmeaom/android/b/c/k/h;->a(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->r()V

    .line 131
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/k/h;->j()Z

    move-result v1

    .line 80
    const-string v0, "kWarningsStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->g()V

    .line 382
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->b_()V

    .line 383
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    .line 92
    invoke-static {}, Lcom/acmeaom/android/a/f/o;->b()Lcom/acmeaom/android/a/f/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    .line 93
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    .line 94
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/Iterable;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 104
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 108
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->e:Ljava/util/ArrayList;

    .line 112
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->b:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 113
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/h;->g()V

    .line 124
    :cond_0
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/h;->d:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 377
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

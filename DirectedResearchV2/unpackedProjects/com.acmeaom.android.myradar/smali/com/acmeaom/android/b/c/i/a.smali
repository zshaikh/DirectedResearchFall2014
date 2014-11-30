.class public Lcom/acmeaom/android/b/c/i/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:D

.field public final b:Lcom/acmeaom/android/a/a/b/aa;

.field public final c:Lcom/acmeaom/android/a/a/d/b;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/acmeaom/android/a/a/b/aa;

.field public final f:Lcom/acmeaom/android/a/a/b/aa;

.field public final g:Lcom/acmeaom/android/a/a/b/aa;

.field public final h:Lcom/acmeaom/android/b/c/i/b;

.field private i:Lcom/acmeaom/android/a/i/d;

.field private j:Lcom/acmeaom/android/a/i/d;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/b/k;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "temp"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/acmeaom/android/b/a/a;->a(Lcom/acmeaom/android/a/a/b/aa;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    .line 59
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/acmeaom/android/b/c/i/a;->a:D

    .line 61
    const-string v0, "la"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v0

    .line 62
    const-string v2, "lo"

    invoke-direct {p0, p1, v2}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v2

    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/acmeaom/android/a/a/d/b;->a(DD)Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->c:Lcom/acmeaom/android/a/a/d/b;

    .line 65
    const-string v0, "st"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->b(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->d:Ljava/lang/String;

    .line 66
    const-string v0, "bp"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->e:Lcom/acmeaom/android/a/a/b/aa;

    .line 67
    const-string v0, "wd"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->f:Lcom/acmeaom/android/a/a/b/aa;

    .line 68
    const-string v0, "ws"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->g:Lcom/acmeaom/android/a/a/b/aa;

    .line 69
    const-string v0, "type"

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/b/c/i/a;->a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->e()I

    move-result v0

    .line 70
    invoke-static {}, Lcom/acmeaom/android/b/c/i/b;->values()[Lcom/acmeaom/android/b/c/i/b;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->h:Lcom/acmeaom/android/b/c/i/b;

    .line 71
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/aa;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1, p2}, Lcom/acmeaom/android/a/a/b/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    check-cast v0, Ljava/lang/Number;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Number;)V

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/acmeaom/android/a/a/b/aa;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 180
    sget-object v8, Lcom/acmeaom/android/a/a/b/g;->a:Lcom/acmeaom/android/a/a/b/g;

    .line 181
    new-instance v9, Lcom/acmeaom/android/a/a/b/ag;

    invoke-direct {v9, p0}, Lcom/acmeaom/android/a/a/b/ag;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lcom/acmeaom/android/a/a/b/ag;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 185
    const-string v0, ","

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    const-string v2, ","

    invoke-virtual {v9, v2, v0}, Lcom/acmeaom/android/a/a/b/ag;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v2

    .line 192
    if-nez v2, :cond_1

    move-object v0, v1

    .line 197
    :cond_1
    const-string v2, ","

    invoke-virtual {v9, v2, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 199
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    const-string v2, ","

    invoke-virtual {v9, v2, v7}, Lcom/acmeaom/android/a/a/b/ag;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v2

    .line 204
    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 211
    :goto_1
    const-string v3, ","

    invoke-virtual {v9, v3, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 216
    const-string v3, ","

    invoke-virtual {v9, v3, v7}, Lcom/acmeaom/android/a/a/b/ag;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v3

    .line 217
    if-eqz v3, :cond_3

    .line 218
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 224
    :goto_2
    const-string v4, ","

    invoke-virtual {v9, v4, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 228
    const-string v4, ","

    invoke-virtual {v9, v4, v7}, Lcom/acmeaom/android/a/a/b/ag;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    .line 230
    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 237
    :goto_3
    const-string v5, ","

    invoke-virtual {v9, v5, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 242
    const-string v5, ","

    invoke-virtual {v9, v5, v7}, Lcom/acmeaom/android/a/a/b/ag;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v5

    .line 243
    if-eqz v5, :cond_5

    .line 244
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 250
    :goto_4
    const-string v6, ","

    invoke-virtual {v9, v6, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 255
    const-string v6, ","

    invoke-virtual {v9, v6, v7}, Lcom/acmeaom/android/a/a/b/ag;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v6

    .line 256
    if-eqz v6, :cond_6

    .line 257
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 263
    :goto_5
    const-string v11, ","

    invoke-virtual {v9, v11, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 269
    invoke-virtual {v9, v8, v7}, Lcom/acmeaom/android/a/a/b/ag;->a(Lcom/acmeaom/android/a/a/b/g;Ljava/lang/StringBuffer;)Z

    move-result v11

    .line 270
    if-eqz v11, :cond_7

    .line 271
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    .line 277
    :goto_6
    invoke-virtual {v9, v8, v1}, Lcom/acmeaom/android/a/a/b/ag;->b(Lcom/acmeaom/android/a/a/b/g;Ljava/lang/StringBuffer;)V

    .line 279
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 284
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    .line 285
    const-wide v13, -0x3fa7400000000000L

    .line 286
    cmpg-double v11, v11, v13

    if-lez v11, :cond_0

    .line 290
    new-instance v11, Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v11, v12, v13, v2, v3}, Lcom/acmeaom/android/a/a/d/b;-><init>(DD)V

    .line 293
    new-instance v2, Lcom/acmeaom/android/b/c/i/a;

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v12

    const/4 v0, 0x1

    const-string v12, "st"

    aput-object v12, v3, v0

    const/4 v0, 0x2

    invoke-virtual {v11}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v3, v0

    const/4 v0, 0x3

    const-string v12, "la"

    aput-object v12, v3, v0

    const/4 v0, 0x4

    invoke-virtual {v11}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v3, v0

    const/4 v0, 0x5

    const-string v11, "lo"

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "temp"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "wd"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "ws"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "type"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/k;->a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/acmeaom/android/b/c/i/a;-><init>(Lcom/acmeaom/android/a/a/b/k;)V

    .line 303
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move-object v2, v1

    .line 207
    goto/16 :goto_1

    :cond_3
    move-object v3, v1

    .line 220
    goto/16 :goto_2

    :cond_4
    move-object v4, v1

    .line 233
    goto/16 :goto_3

    :cond_5
    move-object v5, v1

    .line 246
    goto/16 :goto_4

    :cond_6
    move-object v6, v1

    .line 259
    goto/16 :goto_5

    :cond_7
    move-object v7, v1

    .line 273
    goto/16 :goto_6

    .line 306
    :cond_8
    return-object v10
.end method

.method private b(Lcom/acmeaom/android/a/a/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const-string v1, ""

    .line 89
    invoke-virtual {p1, p2}, Lcom/acmeaom/android/a/a/b/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 19

    .prologue
    .line 134
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L

    const-wide/high16 v11, 0x3fe0000000000000L

    .line 142
    const-wide v1, 0x3f0613c6391278dcL

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v7}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v7

    const-wide v9, 0x406bde978d4fdf3bL

    sub-double/2addr v7, v9

    mul-double/2addr v1, v7

    const-wide v7, 0x40f1d7719999999aL

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v9}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v9

    const-wide v13, 0x4080e083126e978dL

    sub-double/2addr v9, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v13}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v7, v9

    mul-double/2addr v1, v7

    .line 145
    cmpg-double v7, v1, v3

    if-gez v7, :cond_2

    move-wide v1, v3

    .line 150
    :cond_0
    :goto_0
    const-wide v7, 0x3f0497c00f4a00f2L

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v9}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v9

    const-wide v13, 0x407013cac083126fL

    sub-double/2addr v9, v13

    mul-double/2addr v7, v9

    const-wide v9, 0x40f7729000000000L

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v13}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v13

    const-wide v15, 0x408359604189374cL

    sub-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v15}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    mul-double/2addr v7, v9

    .line 153
    cmpg-double v9, v7, v3

    if-gez v9, :cond_3

    move-wide v7, v3

    .line 158
    :cond_1
    :goto_1
    const-wide v9, 0x3ee27aab95b91b04L

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v13}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v13

    const-wide v15, 0x406b6472b020c49cL

    sub-double/2addr v13, v15

    mul-double/2addr v9, v13

    const-wide v13, 0x40f656b800000000L

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v15}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v15

    const-wide v17, 0x4082da4395810625L

    sub-double v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/acmeaom/android/b/c/i/a;->b:Lcom/acmeaom/android/a/a/b/aa;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    mul-double/2addr v9, v13

    .line 161
    cmpg-double v13, v9, v3

    if-gez v13, :cond_4

    .line 166
    :goto_2
    new-instance v5, Lcom/acmeaom/android/a/i/d;

    double-to-float v6, v1

    double-to-float v9, v7

    double-to-float v10, v3

    const v13, 0x3f4ccccd

    invoke-direct {v5, v6, v9, v10, v13}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    .line 168
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/acmeaom/android/b/c/i/a;->i:Lcom/acmeaom/android/a/i/d;

    .line 170
    const-wide v5, 0x3fcb367a0f9096bcL

    mul-double/2addr v1, v5

    const-wide v5, 0x3fe6e2eb1c432ca5L

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    const-wide v5, 0x3fb27bb2fec56d5dL

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 171
    cmpl-double v1, v1, v11

    if-lez v1, :cond_5

    .line 172
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    .line 176
    :goto_3
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/acmeaom/android/b/c/i/a;->j:Lcom/acmeaom/android/a/i/d;

    .line 177
    return-void

    .line 147
    :cond_2
    cmpl-double v7, v1, v5

    if-lez v7, :cond_0

    move-wide v1, v5

    .line 148
    goto/16 :goto_0

    .line 155
    :cond_3
    cmpl-double v9, v7, v5

    if-lez v9, :cond_1

    move-wide v7, v5

    .line 156
    goto :goto_1

    .line 163
    :cond_4
    cmpl-double v3, v9, v5

    if-lez v3, :cond_6

    move-wide v3, v5

    .line 164
    goto :goto_2

    .line 174
    :cond_5
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->b()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-wide v3, v9

    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->i:Lcom/acmeaom/android/a/i/d;

    .line 113
    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/i/a;->c()V

    .line 115
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->i:Lcom/acmeaom/android/a/i/d;

    .line 118
    :cond_0
    return-object v0
.end method

.method public b()Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->j:Lcom/acmeaom/android/a/i/d;

    .line 125
    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/i/a;->c()V

    .line 127
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->j:Lcom/acmeaom/android/a/i/d;

    .line 130
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->c:Lcom/acmeaom/android/a/a/d/b;

    .line 101
    const-string v1, "<Station: %s, Location: (%.0f, %.0f)>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/acmeaom/android/b/c/i/a;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.class public abstract La/a/a/a/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public a(DDI)D
    .locals 20

    .prologue
    .line 125
    .line 126
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v3, v1, v2}, La/a/a/a/c/a;->a(ID)D

    move-result-wide v3

    .line 129
    const-wide/16 v5, 0x0

    const-wide v7, 0x358dee7a4ad4b81fL

    invoke-static/range {v3 .. v8}, La/a/a/a/c/g;->a(DDD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    const-wide v3, 0x358dee7a4ad4b81fL

    .line 133
    :cond_0
    const/4 v7, 0x1

    .line 134
    const-wide/16 v5, 0x0

    move-wide v11, v3

    move v13, v7

    move-wide v14, v3

    .line 138
    :goto_0
    move/from16 v0, p5

    if-ge v13, v0, :cond_4

    .line 139
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v13, v1, v2}, La/a/a/a/c/a;->a(ID)D

    move-result-wide v16

    .line 140
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v13, v1, v2}, La/a/a/a/c/a;->b(ID)D

    move-result-wide v18

    .line 142
    mul-double v3, v18, v5

    add-double v3, v3, v16

    .line 143
    const-wide/16 v5, 0x0

    const-wide v7, 0x358dee7a4ad4b81fL

    invoke-static/range {v3 .. v8}, La/a/a/a/c/g;->a(DDD)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    const-wide v3, 0x358dee7a4ad4b81fL

    move-wide v9, v3

    .line 146
    :goto_1
    div-double v3, v18, v11

    add-double v3, v3, v16

    .line 147
    const-wide/16 v5, 0x0

    const-wide v7, 0x358dee7a4ad4b81fL

    invoke-static/range {v3 .. v8}, La/a/a/a/c/g;->a(DDD)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    const-wide v3, 0x358dee7a4ad4b81fL

    .line 151
    :cond_1
    const-wide/high16 v5, 0x3ff0000000000000L

    div-double v7, v5, v9

    .line 152
    mul-double v9, v3, v7

    .line 153
    mul-double v5, v14, v9

    .line 155
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 156
    new-instance v3, La/a/a/a/a/a;

    sget-object v4, La/a/a/a/a/a/d;->G:La/a/a/a/a/a/d;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, La/a/a/a/a/a;-><init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    throw v3

    .line 159
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 160
    new-instance v3, La/a/a/a/a/a;

    sget-object v4, La/a/a/a/a/a/d;->H:La/a/a/a/a/a/d;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, La/a/a/a/a/a;-><init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    throw v3

    .line 164
    :cond_3
    const-wide/high16 v11, 0x3ff0000000000000L

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, La/a/a/a/c/b;->d(D)D

    move-result-wide v9

    cmpg-double v9, v9, p3

    if-gez v9, :cond_5

    move-wide v3, v5

    .line 174
    :cond_4
    move/from16 v0, p5

    if-lt v13, v0, :cond_6

    .line 175
    new-instance v3, La/a/a/a/a/e;

    sget-object v4, La/a/a/a/a/a/d;->bE:La/a/a/a/a/a/d;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v3, v4, v5, v6}, La/a/a/a/a/e;-><init>(La/a/a/a/a/a/c;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v3

    .line 171
    :cond_5
    add-int/lit8 v9, v13, 0x1

    move-wide v11, v3

    move v13, v9

    move-wide v14, v5

    move-wide v3, v5

    move-wide v5, v7

    .line 172
    goto/16 :goto_0

    .line 179
    :cond_6
    return-wide v3

    :cond_7
    move-wide v9, v3

    goto :goto_1
.end method

.method protected abstract a(ID)D
.end method

.method protected abstract b(ID)D
.end method

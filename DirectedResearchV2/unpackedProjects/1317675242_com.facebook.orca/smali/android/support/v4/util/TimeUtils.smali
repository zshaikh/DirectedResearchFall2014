.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->a:Ljava/lang/Object;

    .line 33
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->b:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIZI)I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 37
    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 45
    :goto_0
    return v0

    .line 39
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 40
    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 42
    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 43
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 45
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(JI)I
    .locals 18

    .prologue
    .line 73
    sget-object v4, Landroid/support/v4/util/TimeUtils;->b:[C

    array-length v4, v4

    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 74
    move/from16 v0, p2

    new-array v0, v0, [C

    move-object v4, v0

    sput-object v4, Landroid/support/v4/util/TimeUtils;->b:[C

    .line 77
    :cond_0
    sget-object v4, Landroid/support/v4/util/TimeUtils;->b:[C

    .line 79
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-nez v5, :cond_2

    .line 80
    const/16 p0, 0x0

    .line 81
    add-int/lit8 p1, p2, -0x1

    .line 82
    :goto_0
    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 83
    const/16 p2, 0x20

    aput-char p2, v4, p0

    goto :goto_0

    .line 85
    :cond_1
    const/16 p1, 0x30

    aput-char p1, v4, p0

    .line 86
    add-int/lit8 p0, p0, 0x1

    .line 140
    :goto_1
    return p0

    .line 90
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_3

    .line 91
    const/16 v5, 0x2b

    move/from16 v17, v5

    move-wide/from16 v5, p0

    move/from16 p0, v17

    .line 97
    :goto_2
    const-wide/16 v7, 0x3e8

    rem-long v7, v5, v7

    move-wide v0, v7

    long-to-int v0, v0

    move/from16 p1, v0

    .line 98
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 99
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 101
    const v9, 0x15180

    if-le v5, v9, :cond_14

    .line 102
    const v6, 0x15180

    div-int v6, v5, v6

    .line 103
    const v9, 0x15180

    mul-int/2addr v9, v6

    sub-int/2addr v5, v9

    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    .line 105
    :goto_3
    const/16 v9, 0xe10

    if-le v6, v9, :cond_13

    .line 106
    div-int/lit16 v7, v6, 0xe10

    .line 107
    mul-int/lit16 v9, v7, 0xe10

    sub-int/2addr v6, v9

    move v14, v7

    .line 109
    :goto_4
    const/16 v7, 0x3c

    if-le v6, v7, :cond_12

    .line 110
    div-int/lit8 v7, v6, 0x3c

    .line 111
    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v6, v8

    move v15, v7

    move/from16 v16, v6

    .line 114
    :goto_5
    const/4 v6, 0x0

    .line 116
    if-eqz p2, :cond_9

    .line 117
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9}, Landroid/support/v4/util/TimeUtils;->a(IIZI)I

    move-result v7

    .line 118
    const/4 v8, 0x1

    if-lez v7, :cond_4

    const/4 v9, 0x1

    :goto_6
    const/4 v10, 0x2

    invoke-static {v14, v8, v9, v10}, Landroid/support/v4/util/TimeUtils;->a(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    .line 119
    const/4 v8, 0x1

    if-lez v7, :cond_5

    const/4 v9, 0x1

    :goto_7
    const/4 v10, 0x2

    invoke-static {v15, v8, v9, v10}, Landroid/support/v4/util/TimeUtils;->a(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    .line 120
    const/4 v8, 0x1

    if-lez v7, :cond_6

    const/4 v9, 0x1

    :goto_8
    const/4 v10, 0x2

    move/from16 v0, v16

    move v1, v8

    move v2, v9

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/util/TimeUtils;->a(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    .line 121
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lez v7, :cond_7

    const/4 v10, 0x3

    :goto_9
    move/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/util/TimeUtils;->a(IIZI)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    move/from16 v17, v7

    move v7, v6

    move/from16 v6, v17

    .line 122
    :goto_a
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    .line 123
    const/16 v8, 0x20

    aput-char v8, v4, v7

    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 93
    :cond_3
    const/16 v5, 0x2d

    .line 94
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move/from16 v17, v5

    move-wide/from16 v5, p0

    move/from16 p0, v17

    goto/16 :goto_2

    .line 118
    :cond_4
    const/4 v9, 0x0

    goto :goto_6

    .line 119
    :cond_5
    const/4 v9, 0x0

    goto :goto_7

    .line 120
    :cond_6
    const/4 v9, 0x0

    goto :goto_8

    .line 121
    :cond_7
    const/4 v10, 0x0

    goto :goto_9

    :cond_8
    move v6, v7

    .line 129
    :cond_9
    aput-char p0, v4, v6

    .line 130
    add-int/lit8 v7, v6, 0x1

    .line 133
    if-eqz p2, :cond_a

    const/16 p0, 0x1

    .line 134
    :goto_b
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/support/v4/util/TimeUtils;->a([CICIZI)I

    move-result v11

    .line 135
    const/16 v10, 0x68

    if-eq v11, v7, :cond_b

    const/16 p2, 0x1

    move/from16 v12, p2

    :goto_c
    if-eqz p0, :cond_c

    const/16 p2, 0x2

    move/from16 v13, p2

    :goto_d
    move-object v8, v4

    move v9, v14

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->a([CICIZI)I

    move-result v11

    .line 136
    const/16 v10, 0x6d

    if-eq v11, v7, :cond_d

    const/16 p2, 0x1

    move/from16 v12, p2

    :goto_e
    if-eqz p0, :cond_e

    const/16 p2, 0x2

    move/from16 v13, p2

    :goto_f
    move-object v8, v4

    move v9, v15

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->a([CICIZI)I

    move-result v11

    .line 137
    const/16 v10, 0x73

    if-eq v11, v7, :cond_f

    const/16 p2, 0x1

    move/from16 v12, p2

    :goto_10
    if-eqz p0, :cond_10

    const/16 p2, 0x2

    move/from16 v13, p2

    :goto_11
    move-object v8, v4

    move/from16 v9, v16

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->a([CICIZI)I

    move-result p2

    .line 138
    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz p0, :cond_11

    move/from16 v0, p2

    move v1, v7

    if-eq v0, v1, :cond_11

    const/16 p0, 0x3

    move/from16 v9, p0

    :goto_12
    move/from16 v5, p1

    move/from16 v7, p2

    invoke-static/range {v4 .. v9}, Landroid/support/v4/util/TimeUtils;->a([CICIZI)I

    move-result p0

    .line 139
    const/16 p1, 0x73

    aput-char p1, v4, p0

    .line 140
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    .line 133
    :cond_a
    const/16 p0, 0x0

    goto :goto_b

    .line 135
    :cond_b
    const/16 p2, 0x0

    move/from16 v12, p2

    goto :goto_c

    :cond_c
    const/16 p2, 0x0

    move/from16 v13, p2

    goto :goto_d

    .line 136
    :cond_d
    const/16 p2, 0x0

    move/from16 v12, p2

    goto :goto_e

    :cond_e
    const/16 p2, 0x0

    move/from16 v13, p2

    goto :goto_f

    .line 137
    :cond_f
    const/16 p2, 0x0

    move/from16 v12, p2

    goto :goto_10

    :cond_10
    const/16 p2, 0x0

    move/from16 v13, p2

    goto :goto_11

    .line 138
    :cond_11
    const/16 p0, 0x0

    move/from16 v9, p0

    goto :goto_12

    :cond_12
    move v15, v8

    move/from16 v16, v6

    goto/16 :goto_5

    :cond_13
    move v14, v7

    goto/16 :goto_4

    :cond_14
    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    goto/16 :goto_3
.end method

.method private static a([CICIZI)I
    .locals 5

    .prologue
    .line 50
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 52
    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x3

    if-ge p5, v0, :cond_2

    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_6

    .line 53
    :cond_2
    div-int/lit8 v0, p1, 0x64

    .line 54
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 55
    add-int/lit8 v1, p3, 0x1

    .line 56
    mul-int/lit8 v0, v0, 0x64

    sub-int v0, p1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 58
    :goto_0
    if-eqz p4, :cond_3

    const/4 v2, 0x2

    if-ge p5, v2, :cond_4

    :cond_3
    const/16 v2, 0x9

    if-gt v1, v2, :cond_4

    if-eq p3, v0, :cond_5

    .line 59
    :cond_4
    div-int/lit8 v2, v1, 0xa

    .line 60
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    aput-char v3, p0, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 64
    :cond_5
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    aput-char p2, p0, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 69
    :goto_1
    return v0

    :cond_6
    move v0, p3

    move v1, p1

    goto :goto_0

    :cond_7
    move v0, p3

    goto :goto_1
.end method

.method public static a(JJLjava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->a(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static a(JLjava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->a(JLjava/io/PrintWriter;I)V

    .line 162
    return-void
.end method

.method public static a(JLjava/io/PrintWriter;I)V
    .locals 5

    .prologue
    .line 153
    sget-object v0, Landroid/support/v4/util/TimeUtils;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->a(JI)I

    move-result v1

    .line 155
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->b:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

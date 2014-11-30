.class Lc/a/a/d/af;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/ak;
.implements Lc/a/a/d/al;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:[Lc/a/a/d/af;

.field private final g:Lc/a/a/d/ah;

.field private final h:Lc/a/a/d/ah;


# direct methods
.method constructor <init>(IIIZI[Lc/a/a/d/af;Lc/a/a/d/ah;Lc/a/a/d/ah;)V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput p1, p0, Lc/a/a/d/af;->a:I

    .line 1055
    iput p2, p0, Lc/a/a/d/af;->b:I

    .line 1056
    iput p3, p0, Lc/a/a/d/af;->c:I

    .line 1057
    iput-boolean p4, p0, Lc/a/a/d/af;->d:Z

    .line 1058
    iput p5, p0, Lc/a/a/d/af;->e:I

    .line 1059
    iput-object p6, p0, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    .line 1060
    iput-object p7, p0, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    .line 1061
    iput-object p8, p0, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    .line 1062
    return-void
.end method

.method constructor <init>(Lc/a/a/d/af;Lc/a/a/d/ah;)V
    .locals 2

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iget v0, p1, Lc/a/a/d/af;->a:I

    iput v0, p0, Lc/a/a/d/af;->a:I

    .line 1066
    iget v0, p1, Lc/a/a/d/af;->b:I

    iput v0, p0, Lc/a/a/d/af;->b:I

    .line 1067
    iget v0, p1, Lc/a/a/d/af;->c:I

    iput v0, p0, Lc/a/a/d/af;->c:I

    .line 1068
    iget-boolean v0, p1, Lc/a/a/d/af;->d:Z

    iput-boolean v0, p0, Lc/a/a/d/af;->d:Z

    .line 1069
    iget v0, p1, Lc/a/a/d/af;->e:I

    iput v0, p0, Lc/a/a/d/af;->e:I

    .line 1070
    iget-object v0, p1, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    iput-object v0, p0, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    .line 1071
    iget-object v0, p1, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    iput-object v0, p0, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    .line 1072
    iget-object v0, p1, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Lc/a/a/d/ae;

    iget-object v1, p1, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    invoke-direct {v0, v1, p2}, Lc/a/a/d/ae;-><init>(Lc/a/a/d/ah;Lc/a/a/d/ah;)V

    move-object p2, v0

    .line 1075
    :cond_0
    iput-object p2, p0, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    .line 1076
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 1535
    iget v0, p0, Lc/a/a/d/af;->e:I

    return v0
.end method

.method public a(Lc/a/a/z;ILjava/util/Locale;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1079
    if-gtz p2, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return v0

    .line 1082
    :cond_1
    iget v1, p0, Lc/a/a/d/af;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1}, Lc/a/a/d/af;->a(Lc/a/a/z;)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1083
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lc/a/a/z;Ljava/util/Locale;)I
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0x0

    .line 1089
    invoke-virtual {p0, p1}, Lc/a/a/d/af;->a(Lc/a/a/z;)J

    move-result-wide v1

    .line 1090
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 1091
    const/4 v0, 0x0

    .line 1117
    :cond_0
    :goto_0
    return v0

    .line 1094
    :cond_1
    invoke-static {v1, v2}, Lc/a/a/d/x;->a(J)I

    move-result v0

    iget v3, p0, Lc/a/a/d/af;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1095
    iget v3, p0, Lc/a/a/d/af;->e:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    .line 1098
    cmp-long v3, v1, v5

    if-gez v3, :cond_5

    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1101
    iget v3, p0, Lc/a/a/d/af;->e:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    rem-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1103
    add-int/lit8 v0, v0, -0x4

    .line 1106
    :cond_2
    div-long/2addr v1, v7

    .line 1108
    :cond_3
    long-to-int v1, v1

    .line 1110
    iget-object v2, p0, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    if-eqz v2, :cond_4

    .line 1111
    iget-object v2, p0, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    invoke-interface {v2, v1}, Lc/a/a/d/ah;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1113
    :cond_4
    iget-object v2, p0, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    if-eqz v2, :cond_0

    .line 1114
    iget-object v2, p0, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    invoke-interface {v2, v1}, Lc/a/a/d/ah;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 1098
    :cond_5
    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method a(Lc/a/a/z;)J
    .locals 11

    .prologue
    const/16 v10, 0x9

    const-wide v0, 0x7fffffffffffffffL

    .line 1386
    iget v2, p0, Lc/a/a/d/af;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1387
    const/4 v2, 0x0

    move-object v5, v2

    .line 1391
    :goto_0
    if-eqz v5, :cond_2

    iget v2, p0, Lc/a/a/d/af;->e:I

    invoke-virtual {p0, v5, v2}, Lc/a/a/d/af;->a(Lc/a/a/u;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1464
    :cond_0
    :goto_1
    :pswitch_0
    return-wide v0

    .line 1389
    :cond_1
    invoke-interface {p1}, Lc/a/a/z;->b()Lc/a/a/u;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    .line 1397
    :cond_2
    iget v2, p0, Lc/a/a/d/af;->e:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1401
    :pswitch_1
    invoke-static {}, Lc/a/a/m;->j()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1433
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_3

    .line 1434
    iget v4, p0, Lc/a/a/d/af;->b:I

    packed-switch v4, :pswitch_data_1

    :cond_3
    :pswitch_2
    move-wide v0, v2

    .line 1464
    goto :goto_1

    .line 1404
    :pswitch_3
    invoke-static {}, Lc/a/a/m;->i()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1405
    goto :goto_2

    .line 1407
    :pswitch_4
    invoke-static {}, Lc/a/a/m;->g()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1408
    goto :goto_2

    .line 1410
    :pswitch_5
    invoke-static {}, Lc/a/a/m;->f()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1411
    goto :goto_2

    .line 1413
    :pswitch_6
    invoke-static {}, Lc/a/a/m;->d()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1414
    goto :goto_2

    .line 1416
    :pswitch_7
    invoke-static {}, Lc/a/a/m;->c()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1417
    goto :goto_2

    .line 1419
    :pswitch_8
    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1420
    goto :goto_2

    .line 1422
    :pswitch_9
    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    int-to-long v2, v2

    .line 1423
    goto :goto_2

    .line 1426
    :pswitch_a
    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v2

    invoke-interface {p1, v2}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v2

    .line 1427
    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v3

    invoke-interface {p1, v3}, Lc/a/a/z;->a(Lc/a/a/m;)I

    move-result v3

    .line 1428
    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    int-to-long v2, v3

    add-long/2addr v2, v6

    goto :goto_2

    .line 1438
    :pswitch_b
    invoke-virtual {p0, p1}, Lc/a/a/d/af;->b(Lc/a/a/z;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    iget v6, p0, Lc/a/a/d/af;->e:I

    aget-object v4, v4, v6

    if-ne v4, p0, :cond_0

    .line 1439
    iget v4, p0, Lc/a/a/d/af;->e:I

    add-int/lit8 v4, v4, 0x1

    :goto_3
    if-gt v4, v10, :cond_3

    .line 1440
    invoke-virtual {p0, v5, v4}, Lc/a/a/d/af;->a(Lc/a/a/u;I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    aget-object v6, v6, v4

    if-nez v6, :cond_0

    .line 1439
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1449
    :pswitch_c
    invoke-virtual {p0, p1}, Lc/a/a/d/af;->b(Lc/a/a/z;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    iget v6, p0, Lc/a/a/d/af;->e:I

    aget-object v4, v4, v6

    if-ne v4, p0, :cond_0

    .line 1450
    iget v4, p0, Lc/a/a/d/af;->e:I

    const/16 v6, 0x8

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1451
    add-int/lit8 v4, v4, -0x1

    .line 1452
    :goto_4
    if-ltz v4, :cond_3

    if-gt v4, v10, :cond_3

    .line 1453
    invoke-virtual {p0, v5, v4}, Lc/a/a/d/af;->a(Lc/a/a/u;I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lc/a/a/d/af;->f:[Lc/a/a/d/af;

    aget-object v6, v6, v4

    if-nez v6, :cond_0

    .line 1452
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 1397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 1434
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/StringBuffer;Lc/a/a/z;Ljava/util/Locale;)V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/16 v6, 0x8

    .line 1121
    invoke-virtual {p0, p2}, Lc/a/a/d/af;->a(Lc/a/a/z;)J

    move-result-wide v1

    .line 1122
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    long-to-int v0, v1

    .line 1126
    iget v3, p0, Lc/a/a/d/af;->e:I

    if-lt v3, v6, :cond_2

    .line 1127
    div-long v3, v1, v7

    long-to-int v0, v3

    .line 1130
    :cond_2
    iget-object v3, p0, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    if-eqz v3, :cond_3

    .line 1131
    iget-object v3, p0, Lc/a/a/d/af;->g:Lc/a/a/d/ah;

    invoke-interface {v3, p1, v0}, Lc/a/a/d/ah;->a(Ljava/lang/StringBuffer;I)V

    .line 1133
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1134
    iget v4, p0, Lc/a/a/d/af;->a:I

    .line 1135
    const/4 v5, 0x1

    if-gt v4, v5, :cond_7

    .line 1136
    invoke-static {p1, v0}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;I)V

    .line 1140
    :goto_1
    iget v4, p0, Lc/a/a/d/af;->e:I

    if-lt v4, v6, :cond_6

    .line 1141
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    rem-long/2addr v4, v7

    long-to-int v4, v4

    .line 1142
    iget v5, p0, Lc/a/a/d/af;->e:I

    if-eq v5, v6, :cond_4

    if-lez v4, :cond_6

    .line 1143
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    const-wide/16 v5, -0x3e8

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    .line 1144
    const/16 v1, 0x2d

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1146
    :cond_5
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1147
    const/4 v1, 0x3

    invoke-static {p1, v4, v1}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V

    .line 1150
    :cond_6
    iget-object v1, p0, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lc/a/a/d/af;->h:Lc/a/a/d/ah;

    invoke-interface {v1, p1, v0}, Lc/a/a/d/ah;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 1138
    :cond_7
    invoke-static {p1, v0, v4}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V

    goto :goto_1
.end method

.method a(Lc/a/a/u;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1477
    packed-switch p2, :pswitch_data_0

    .line 1498
    :cond_0
    :goto_0
    return v0

    .line 1481
    :pswitch_0
    invoke-static {}, Lc/a/a/m;->j()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1483
    :pswitch_1
    invoke-static {}, Lc/a/a/m;->i()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1485
    :pswitch_2
    invoke-static {}, Lc/a/a/m;->g()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1487
    :pswitch_3
    invoke-static {}, Lc/a/a/m;->f()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1489
    :pswitch_4
    invoke-static {}, Lc/a/a/m;->d()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1491
    :pswitch_5
    invoke-static {}, Lc/a/a/m;->c()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1493
    :pswitch_6
    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1495
    :pswitch_7
    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v0

    goto :goto_0

    .line 1498
    :pswitch_8
    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lc/a/a/m;->a()Lc/a/a/m;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc/a/a/u;->a(Lc/a/a/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method b(Lc/a/a/z;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1468
    invoke-interface {p1}, Lc/a/a/z;->h()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1469
    invoke-interface {p1, v1}, Lc/a/a/z;->c(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    :goto_1
    return v0

    .line 1468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1473
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

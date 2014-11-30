.class public Lcom/acmeaom/android/a/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final r:Lcom/acmeaom/android/a/a/a/b;

.field private static final s:Ljava/lang/ThreadLocal;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field private final q:[F


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 10
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000

    invoke-direct/range {v0 .. v16}, Lcom/acmeaom/android/a/a/a/b;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/acmeaom/android/a/a/a/b;->r:Lcom/acmeaom/android/a/a/a/b;

    .line 15
    new-instance v0, Lcom/acmeaom/android/a/a/a/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/c;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/a/a/b;->s:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    .line 79
    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    .line 59
    iput p1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 60
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    .line 61
    iput p3, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    .line 62
    iput p4, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    .line 63
    iput p5, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    .line 64
    iput p6, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 65
    iput p7, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    .line 66
    iput p8, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    .line 67
    iput p9, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    .line 68
    iput p10, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    .line 69
    iput p11, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 70
    iput p12, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 71
    iput p13, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 72
    move/from16 v0, p14

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 73
    move/from16 v0, p15

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 74
    move/from16 v0, p16

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/a/b;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    .line 37
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 38
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    .line 39
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    .line 40
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    .line 41
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    .line 42
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 43
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    .line 44
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    .line 45
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    .line 46
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    .line 47
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 48
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 49
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 50
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 51
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 52
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    .line 53
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/a/b;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/acmeaom/android/a/a/a/b;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/a/b;

    .line 24
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/acmeaom/android/a/a/a/b;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadLocalIdentity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalIdentity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/acmeaom/android/a/a/a/b;->r:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 29
    :cond_0
    return-object v0
.end method

.method public static a([F)Lcom/acmeaom/android/a/a/a/b;
    .locals 17

    .prologue
    .line 194
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget v4, p0, v4

    const/4 v5, 0x4

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v6, p0, v6

    const/4 v7, 0x6

    aget v7, p0, v7

    const/4 v8, 0x7

    aget v8, p0, v8

    const/16 v9, 0x8

    aget v9, p0, v9

    const/16 v10, 0x9

    aget v10, p0, v10

    const/16 v11, 0xa

    aget v11, p0, v11

    const/16 v12, 0xb

    aget v12, p0, v12

    const/16 v13, 0xc

    aget v13, p0, v13

    const/16 v14, 0xd

    aget v14, p0, v14

    const/16 v15, 0xe

    aget v15, p0, v15

    const/16 v16, 0xf

    aget v16, p0, v16

    invoke-direct/range {v0 .. v16}, Lcom/acmeaom/android/a/a/a/b;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v0
.end method

.method public static b()Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    return-object v0
.end method

.method static synthetic e()Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/acmeaom/android/a/a/a/b;->r:Lcom/acmeaom/android/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 84
    :pswitch_0
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 114
    :goto_0
    return v0

    .line 86
    :pswitch_1
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    goto :goto_0

    .line 88
    :pswitch_2
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    goto :goto_0

    .line 90
    :pswitch_3
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    goto :goto_0

    .line 92
    :pswitch_4
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    goto :goto_0

    .line 94
    :pswitch_5
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    goto :goto_0

    .line 96
    :pswitch_6
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    goto :goto_0

    .line 98
    :pswitch_7
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    goto :goto_0

    .line 100
    :pswitch_8
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    goto :goto_0

    .line 102
    :pswitch_9
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    goto :goto_0

    .line 104
    :pswitch_a
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    goto :goto_0

    .line 106
    :pswitch_b
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    goto :goto_0

    .line 108
    :pswitch_c
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    goto :goto_0

    .line 110
    :pswitch_d
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    goto :goto_0

    .line 112
    :pswitch_e
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    goto :goto_0

    .line 114
    :pswitch_f
    iget v0, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    goto :goto_0

    .line 82
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 122
    :pswitch_0
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 168
    :goto_0
    return-void

    .line 125
    :pswitch_1
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    goto :goto_0

    .line 128
    :pswitch_2
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    goto :goto_0

    .line 131
    :pswitch_3
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    goto :goto_0

    .line 134
    :pswitch_4
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    goto :goto_0

    .line 137
    :pswitch_5
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    goto :goto_0

    .line 140
    :pswitch_6
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    goto :goto_0

    .line 143
    :pswitch_7
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    goto :goto_0

    .line 146
    :pswitch_8
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    goto :goto_0

    .line 149
    :pswitch_9
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    goto :goto_0

    .line 152
    :pswitch_a
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    goto :goto_0

    .line 155
    :pswitch_b
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    goto :goto_0

    .line 158
    :pswitch_c
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    goto :goto_0

    .line 161
    :pswitch_d
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    goto :goto_0

    .line 164
    :pswitch_e
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    goto :goto_0

    .line 167
    :pswitch_f
    iput p2, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    goto :goto_0

    .line 120
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;)V
    .locals 1

    .prologue
    .line 226
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    .line 227
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    .line 228
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    .line 229
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    .line 230
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    .line 231
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    .line 232
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    .line 233
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    .line 234
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    .line 235
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    .line 236
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    .line 237
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    .line 238
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    .line 239
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    .line 240
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    .line 241
    iget v0, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    iput v0, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    .line 242
    return-void
.end method

.method public c()[F
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    aput v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    aput v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    aput v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    aput v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    aput v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    aput v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x6

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    aput v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    aput v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0x8

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    aput v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0x9

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    aput v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0xa

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    aput v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0xb

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    aput v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0xc

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    aput v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0xd

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    aput v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0xe

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    aput v2, v0, v1

    .line 189
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    const/16 v1, 0xf

    iget v2, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    aput v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/b;->q:[F

    return-object v0
.end method

.method public d()Lcom/acmeaom/android/a/a/a/b;
    .locals 18

    .prologue
    .line 252
    new-instance v1, Lcom/acmeaom/android/a/a/a/b;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/acmeaom/android/a/a/a/b;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/acmeaom/android/a/a/a/b;->e:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/acmeaom/android/a/a/a/b;->i:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/acmeaom/android/a/a/a/b;->m:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/acmeaom/android/a/a/a/b;->b:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/acmeaom/android/a/a/a/b;->f:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/acmeaom/android/a/a/a/b;->j:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/acmeaom/android/a/a/a/b;->n:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/acmeaom/android/a/a/a/b;->c:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/acmeaom/android/a/a/a/b;->g:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/acmeaom/android/a/a/a/b;->k:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/acmeaom/android/a/a/a/b;->o:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/acmeaom/android/a/a/a/b;->d:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/acmeaom/android/a/a/a/b;->h:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acmeaom/android/a/a/a/b;->l:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/acmeaom/android/a/a/a/b;->p:F

    move/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/acmeaom/android/a/a/a/b;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    instance-of v1, p1, Lcom/acmeaom/android/a/a/a/b;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    check-cast p1, Lcom/acmeaom/android/a/a/a/b;

    .line 207
    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->d:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->e:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->h:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->i:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->j:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->k:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->l:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->m:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->n:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->o:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    iget v2, p1, Lcom/acmeaom/android/a/a/a/b;->p:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/a/b;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

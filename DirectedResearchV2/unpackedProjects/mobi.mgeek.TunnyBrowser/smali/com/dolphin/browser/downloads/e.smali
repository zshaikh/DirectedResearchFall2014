.class public Lcom/dolphin/browser/downloads/e;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public A:Ljava/lang/String;

.field public volatile B:Z

.field private C:I

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/dolphin/browser/downloads/e;->a:I

    .line 52
    iput-object p2, p0, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/dolphin/browser/downloads/e;->c:Z

    .line 54
    iput-object p4, p0, Lcom/dolphin/browser/downloads/e;->d:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Lcom/dolphin/browser/downloads/e;->C:I

    .line 62
    iput p8, p0, Lcom/dolphin/browser/downloads/e;->g:I

    .line 63
    iput p9, p0, Lcom/dolphin/browser/downloads/e;->h:I

    .line 64
    iput p10, p0, Lcom/dolphin/browser/downloads/e;->i:I

    .line 65
    iput p11, p0, Lcom/dolphin/browser/downloads/e;->j:I

    .line 66
    move/from16 v0, p12

    iput v0, p0, Lcom/dolphin/browser/downloads/e;->k:I

    .line 67
    move/from16 v0, p13

    iput v0, p0, Lcom/dolphin/browser/downloads/e;->l:I

    .line 68
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/dolphin/browser/downloads/e;->m:J

    .line 69
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->n:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->o:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->p:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->q:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->r:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->s:Ljava/lang/String;

    .line 75
    move/from16 v0, p22

    iput v0, p0, Lcom/dolphin/browser/downloads/e;->t:I

    .line 76
    move/from16 v0, p23

    iput v0, p0, Lcom/dolphin/browser/downloads/e;->u:I

    .line 77
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->v:Ljava/lang/String;

    .line 78
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/e;->w:Z

    .line 79
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/e;->x:Z

    .line 80
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/e;->y:Z

    .line 81
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/dolphin/browser/downloads/e;->A:Ljava/lang/String;

    .line 82
    sget-object v2, Lcom/dolphin/browser/downloads/v;->a:Ljava/util/Random;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/downloads/e;->z:I

    .line 83
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 113
    iget v0, p0, Lcom/dolphin/browser/downloads/e;->k:I

    if-lez v0, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/dolphin/browser/downloads/e;->m:J

    iget v2, p0, Lcom/dolphin/browser/downloads/e;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 116
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/dolphin/browser/downloads/e;->m:J

    iget v2, p0, Lcom/dolphin/browser/downloads/e;->z:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/dolphin/browser/downloads/e;->j:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TUNNY_DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/dolphin/browser/downloads/e;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/downloads/e;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/dolphin/browser/downloads/e;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/downloads/e;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/dolphin/browser/downloads/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->h:I

    if-ne v2, v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    if-nez v2, :cond_2

    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_4

    move v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_4
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_0

    .line 143
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->j:I

    if-nez v2, :cond_5

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/e;->a()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public a(ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    if-nez p1, :cond_1

    move v0, v1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->C:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 214
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 197
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v2}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->g:I

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public b(J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 165
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->h:I

    if-ne v2, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    if-nez v2, :cond_2

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_0

    .line 178
    iget v2, p0, Lcom/dolphin/browser/downloads/e;->j:I

    if-nez v2, :cond_4

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/e;->a()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/dolphin/browser/downloads/e;->C:I

    return v0
.end method

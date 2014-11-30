.class public Lcom/dolphin/browser/download/d;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 25

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 30
    const-string v3, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 31
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 32
    const-string v3, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 33
    const-string v3, "current_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 34
    const-string v3, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 35
    const-string v3, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 36
    const-string v3, "lastmod"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 37
    const-string v3, "notificationpackage"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 38
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 39
    const-string v3, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 40
    const-string v3, "speed"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 41
    const-string v3, "support_byte_range"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 42
    const-string v3, "control"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 43
    const-string v3, "notificationextras"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 44
    const-string v3, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 45
    const-string v3, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 47
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 48
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 51
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 52
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 53
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 54
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 55
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 56
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 57
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 58
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 59
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_0

    const/16 v20, 0x1

    .line 60
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 61
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 62
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 63
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v2, p0

    .line 65
    invoke-direct/range {v2 .. v24}, Lcom/dolphin/browser/download/d;->a(JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;IJZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 59
    :cond_0
    const/16 v20, 0x0

    goto :goto_0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;IJZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/download/d;->a(J)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/download/d;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p4}, Lcom/dolphin/browser/download/d;->b(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p5}, Lcom/dolphin/browser/download/d;->a(I)V

    .line 87
    invoke-virtual {p0, p6, p7}, Lcom/dolphin/browser/download/d;->e(J)V

    .line 88
    invoke-virtual {p0, p8, p9}, Lcom/dolphin/browser/download/d;->b(J)V

    .line 89
    invoke-virtual {p0, p10}, Lcom/dolphin/browser/download/d;->c(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p11, p12}, Lcom/dolphin/browser/download/d;->c(J)V

    .line 91
    invoke-virtual {p0, p13}, Lcom/dolphin/browser/download/d;->d(Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->e(Ljava/lang/String;)V

    .line 93
    move/from16 v0, p15

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->b(I)V

    .line 94
    move-wide/from16 v0, p16

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/download/d;->d(J)V

    .line 95
    move/from16 v0, p18

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->a(Z)V

    .line 96
    move/from16 v0, p19

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->c(I)V

    .line 97
    move-object/from16 v0, p20

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->f(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p21

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->g(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p22

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/d;->h(Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/dolphin/browser/download/d;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/dolphin/browser/download/d;->d:I

    .line 132
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/dolphin/browser/download/d;->a:J

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->b:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/dolphin/browser/download/d;->m:Z

    .line 212
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/download/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcom/dolphin/browser/download/d;->k:I

    .line 182
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/dolphin/browser/download/d;->f:J

    .line 140
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->c:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/download/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/dolphin/browser/download/d;->n:I

    .line 222
    return-void
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/dolphin/browser/download/d;->h:J

    .line 156
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->g:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/dolphin/browser/download/d;->d:I

    return v0
.end method

.method public d(J)V
    .locals 0

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/dolphin/browser/download/d;->l:J

    .line 192
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->i:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/dolphin/browser/download/d;->f:J

    return-wide v0
.end method

.method public e(J)V
    .locals 0

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/dolphin/browser/download/d;->e:J

    .line 202
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->j:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/dolphin/browser/download/d;->h:J

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->o:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/download/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->p:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/download/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dolphin/browser/download/d;->q:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public i()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/dolphin/browser/download/d;->l:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/dolphin/browser/download/d;->e:J

    return-wide v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/dolphin/browser/download/d;->m:Z

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/dolphin/browser/download/d;->n:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/download/d;->q:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/b/a/a/a;
.super Lcom/b/a/a/c;
.source "BoxFile.java"


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:J

.field protected transient e:Lcom/b/a/a/b;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:J

.field protected i:J

.field protected j:J

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/b/a/a/c;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/a;->d:J

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a;->q:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/b/a/a/a;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 473
    iput p1, p0, Lcom/b/a/a/a;->r:I

    .line 474
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/b/a/a/a;->a:J

    .line 117
    return-void
.end method

.method public a(Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/b/a/a/a;->e:Lcom/b/a/a/b;

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/b/a/a/a;->b:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 485
    const-string v0, "file_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    :cond_0
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a;->a(J)V

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    const-string v0, "folder_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    const-wide/16 v0, -0x1

    invoke-static {p2, v0, v1}, Lcom/b/a/e/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a;->b(J)V

    goto :goto_0

    .line 491
    :cond_3
    const-string v0, "file_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 492
    :cond_4
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_5
    const-string v0, "shared_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 495
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_6
    const-string v0, "pic_l"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 498
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_7
    const-string v0, "pic_s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 501
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_8
    const-string v0, "pic_x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 504
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_9
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 507
    invoke-static {p2}, Lcom/b/a/e/c;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a;->e(J)V

    goto :goto_0

    .line 509
    :cond_a
    const-string v0, "sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 510
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_b
    const-string v0, "created"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 513
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a;->c(J)V

    goto/16 :goto_0

    .line 515
    :cond_c
    const-string v0, "updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 516
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/a;->d(J)V

    goto/16 :goto_0

    .line 518
    :cond_d
    const-string v0, "thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 519
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :cond_e
    const-string v0, "small_thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 522
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :cond_f
    const-string v0, "large_thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 525
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_10
    const-string v0, "larger_thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 528
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :cond_11
    const-string v0, "preview_thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 531
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_12
    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 534
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :cond_13
    const-string v0, "comment_count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 537
    invoke-static {p2}, Lcom/b/a/e/c;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/a/a;->a(I)V

    goto/16 :goto_0

    .line 539
    :cond_14
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0, p2}, Lcom/b/a/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/b/a/a/a;->d:J

    .line 147
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/b/a/a/a;->c:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/b/a/a/a;->h:J

    .line 197
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/b/a/a/a;->f:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public d(J)V
    .locals 0

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/b/a/a/a;->i:J

    .line 207
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/b/a/a/a;->g:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public e(J)V
    .locals 0

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/b/a/a/a;->j:J

    .line 217
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/b/a/a/a;->k:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/b/a/a/a;->l:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/b/a/a/a;->m:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/b/a/a/a;->n:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/b/a/a/a;->o:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/b/a/a/a;->p:Ljava/lang/String;

    .line 277
    return-void
.end method

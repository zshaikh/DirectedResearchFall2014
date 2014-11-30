.class public Lcom/b/a/a/b;
.super Lcom/b/a/a/c;
.source "BoxFolder.java"


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:J

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:J

.field protected l:J

.field protected m:J

.field protected n:J

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:J

.field protected transient v:Lcom/b/a/a/b;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/b/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/b/a/a/c;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/b;->u:J

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b;->x:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b;->y:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b;->z:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/b/a/a/b;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/b/a/a/b;->a:J

    .line 146
    return-void
.end method

.method public a(Lcom/b/a/a/a;)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/b/a/a/b;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    return-void
.end method

.method public a(Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/b/a/a/b;->v:Lcom/b/a/a/b;

    .line 366
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/b/a/a/b;->b:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 666
    const-string v2, "folder_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    :cond_0
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->a(J)V

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 669
    :cond_2
    const-string v2, "folder_name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    :cond_3
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_4
    const-string v2, "shared"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 673
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/b/a/a/b;->a(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 675
    :cond_6
    const-string v2, "shared_name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 676
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_7
    const-string v2, "shared_link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 679
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_8
    const-string v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 682
    invoke-static {p2}, Lcom/b/a/e/c;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->f(J)V

    goto :goto_0

    .line 684
    :cond_9
    const-string v2, "pic_l"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 685
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_a
    const-string v2, "pic_s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 688
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_b
    const-string v2, "pic_x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 691
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_c
    const-string v2, "created"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 694
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->c(J)V

    goto/16 :goto_0

    .line 696
    :cond_d
    const-string v2, "updated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 697
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->d(J)V

    goto/16 :goto_0

    .line 699
    :cond_e
    const-string v2, "file_count"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 700
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->g(J)V

    goto/16 :goto_0

    .line 702
    :cond_f
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 703
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->b(J)V

    goto/16 :goto_0

    .line 705
    :cond_10
    const-string v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 706
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :cond_11
    const-string v2, "public_name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 709
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :cond_12
    const-string v2, "parent_folder_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 712
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/b;->e(J)V

    goto/16 :goto_0

    .line 714
    :cond_13
    const-string v2, "password"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 715
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    :cond_14
    const-string v2, "thumbnail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 718
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    :cond_15
    const-string v2, "small_thumbnail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 721
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_16
    const-string v2, "large_thumbnail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 724
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    :cond_17
    const-string v2, "larger_thumbnail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 727
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_18
    const-string v2, "permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 730
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :cond_19
    const-string v2, "has_collaborators"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 733
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :goto_2
    invoke-virtual {p0, v0}, Lcom/b/a/a/b;->b(Z)V

    goto/16 :goto_0

    :cond_1a
    move v0, v1

    goto :goto_2

    .line 735
    :cond_1b
    const-string v0, "folder_path_ids"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 736
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :cond_1c
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, p2}, Lcom/b/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/b/a/a/b;->e:Z

    .line 186
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/b/a/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/b/a/a/b;->d:J

    .line 176
    return-void
.end method

.method public b(Lcom/b/a/a/b;)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/b/a/a/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/b/a/a/b;->c:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/b/a/a/b;->h:Z

    .line 216
    return-void
.end method

.method public c()Lcom/b/a/a/b;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/b/a/a/b;->v:Lcom/b/a/a/b;

    return-object v0
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/b/a/a/b;->m:J

    .line 226
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/b/a/a/b;->f:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/b/a/a/b;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d(J)V
    .locals 0

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/b/a/a/b;->n:J

    .line 236
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/b/a/a/b;->g:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public e()Ljava/util/ArrayList;
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
    .line 639
    iget-object v0, p0, Lcom/b/a/a/b;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e(J)V
    .locals 0

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/b/a/a/b;->u:J

    .line 306
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/b/a/a/b;->o:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public f(J)V
    .locals 0

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/b/a/a/b;->k:J

    .line 326
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/b/a/a/b;->p:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public g(J)V
    .locals 0

    .prologue
    .line 355
    iput-wide p1, p0, Lcom/b/a/a/b;->l:J

    .line 356
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/b/a/a/b;->q:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/b/a/a/b;->r:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/b/a/a/b;->s:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/b/a/a/b;->t:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/b/a/a/b;->w:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/b/a/a/b;->i:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/b/a/a/b;->j:Ljava/lang/String;

    .line 346
    return-void
.end method

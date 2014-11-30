.class public final Lcom/twitter/android/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:I

.field public final o:Lcom/twitter/android/api/b;

.field public final p:Z

.field public final q:J

.field public final r:I

.field public final s:Lcom/twitter/android/api/PromotedContent;

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/android/api/p;

    invoke-direct {v0}, Lcom/twitter/android/api/p;-><init>()V

    sput-object v0, Lcom/twitter/android/api/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/b;JILcom/twitter/android/api/PromotedContent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/c;->a:J

    iput-object p3, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-eqz p6, :cond_0

    const-string v2, "null"

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    :goto_0
    iput p7, p0, Lcom/twitter/android/api/c;->k:I

    if-eqz p8, :cond_1

    const-string v2, "null"

    invoke-virtual {p8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    :goto_1
    iput p9, p0, Lcom/twitter/android/api/c;->f:I

    iput-boolean p10, p0, Lcom/twitter/android/api/c;->h:Z

    iput-boolean p11, p0, Lcom/twitter/android/api/c;->i:Z

    if-eqz p12, :cond_2

    const-string v2, "null"

    invoke-virtual {p12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    :goto_2
    move/from16 v0, p13

    iput v0, p0, Lcom/twitter/android/api/c;->l:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/twitter/android/api/c;->m:J

    move/from16 v0, p16

    iput v0, p0, Lcom/twitter/android/api/c;->n:I

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/twitter/android/api/c;->p:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/twitter/android/api/c;->t:I

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/twitter/android/api/c;->q:J

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twitter/android/api/c;->v:Z

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/twitter/android/api/c;->u:J

    move/from16 v0, p24

    iput v0, p0, Lcom/twitter/android/api/c;->r:I

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    return-void

    :cond_0
    iput-object p6, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p8, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p12, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/c;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/c;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/api/c;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/api/c;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/c;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/api/c;->m:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/c;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/twitter/android/api/c;->p:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/c;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/c;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/c;->u:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/c;->r:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    iput-boolean v2, p0, Lcom/twitter/android/api/c;->v:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/twitter/android/api/c;

    iget-wide v2, p0, Lcom/twitter/android/api/c;->m:J

    iget-wide v4, p1, Lcom/twitter/android/api/c;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/twitter/android/api/c;->r:I

    iget v3, p1, Lcom/twitter/android/api/c;->r:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/twitter/android/api/c;->k:I

    iget v3, p1, Lcom/twitter/android/api/c;->k:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/twitter/android/api/c;->l:I

    iget v3, p1, Lcom/twitter/android/api/c;->l:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/twitter/android/api/c;->t:I

    iget v3, p1, Lcom/twitter/android/api/c;->t:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-wide v2, p0, Lcom/twitter/android/api/c;->q:J

    iget-wide v4, p1, Lcom/twitter/android/api/c;->q:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-boolean v2, p0, Lcom/twitter/android/api/c;->p:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/c;->p:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-boolean v2, p0, Lcom/twitter/android/api/c;->h:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/c;->h:Z

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/twitter/android/api/c;->u:J

    iget-wide v4, p1, Lcom/twitter/android/api/c;->u:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-boolean v2, p0, Lcom/twitter/android/api/c;->v:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/c;->v:Z

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget v2, p0, Lcom/twitter/android/api/c;->n:I

    iget v3, p1, Lcom/twitter/android/api/c;->n:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    iget-wide v2, p0, Lcom/twitter/android/api/c;->a:J

    iget-wide v4, p1, Lcom/twitter/android/api/c;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    iget-boolean v2, p0, Lcom/twitter/android/api/c;->i:Z

    iget-boolean v3, p1, Lcom/twitter/android/api/c;->i:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    iget-object v2, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v2, p1, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    if-nez v2, :cond_11

    :cond_13
    iget-object v2, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-nez v2, :cond_14

    :cond_16
    iget-object v2, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    if-nez v2, :cond_17

    :cond_19
    iget-object v2, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-nez v2, :cond_1a

    :cond_1c
    iget-object v2, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    if-nez v2, :cond_1d

    :cond_1f
    iget v2, p0, Lcom/twitter/android/api/c;->f:I

    iget v3, p1, Lcom/twitter/android/api/c;->f:I

    if-eq v2, v3, :cond_20

    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p0, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    iget-object v3, p1, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    move v0, v1

    goto/16 :goto_0

    :cond_22
    iget-object v2, p1, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    if-nez v2, :cond_21

    :cond_23
    iget-object v2, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_24
    move v0, v1

    goto/16 :goto_0

    :cond_25
    iget-object v2, p1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    if-nez v2, :cond_24

    :cond_26
    iget-object v2, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    iget-object v3, p1, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v2, v3}, Lcom/twitter/android/api/PromotedContent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_27
    iget-object v2, p1, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 8

    const/16 v7, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v3, p0, Lcom/twitter/android/api/c;->a:J

    iget-wide v5, p0, Lcom/twitter/android/api/c;->a:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/c;->f:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/android/api/c;->h:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/android/api/c;->i:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/c;->k:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/c;->l:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/twitter/android/api/c;->m:J

    iget-wide v5, p0, Lcom/twitter/android/api/c;->m:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/c;->n:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/api/c;->o:Lcom/twitter/android/api/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/android/api/c;->p:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/c;->t:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/android/api/c;->r:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/twitter/android/api/c;->u:J

    iget-wide v5, p0, Lcom/twitter/android/api/c;->u:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/twitter/android/api/c;->v:Z

    if-eqz v3, :cond_b

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v1}, Lcom/twitter/android/api/PromotedContent;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v2, v1

    goto :goto_a
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/api/c;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/api/c;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/api/c;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/api/c;->i:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/api/c;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/api/c;->m:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/api/c;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/api/c;->p:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/api/c;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/twitter/android/api/c;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/twitter/android/api/c;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/api/c;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/api/c;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

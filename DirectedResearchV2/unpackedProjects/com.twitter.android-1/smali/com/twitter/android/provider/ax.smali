.class public Lcom/twitter/android/provider/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# instance fields
.field public A:Z

.field public B:I

.field public C:Lcom/twitter/android/api/e;

.field public D:J

.field public E:Lcom/twitter/android/api/PromotedContent;

.field public F:J

.field public G:Z

.field private H:I

.field private I:I

.field private J:I

.field private a:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Z

.field public s:J

.field public t:I

.field public u:Z

.field public v:D

.field public w:D

.field public x:[B

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "g_status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "updated_at"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "in_r_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "place_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "favorited"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "place_bounding"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "timeline"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "entities"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tweet_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "s_username"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ref_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "place_type"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "place_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "s_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "r_content"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "g_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/android/provider/ax;->c:[Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    sget-object v1, Lcom/twitter/android/provider/ax;->c:[Ljava/lang/String;

    sget-object v2, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/twitter/android/provider/ax;->c:[Ljava/lang/String;

    sget-object v1, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "rt_orig_ref_id"

    aput-object v2, v0, v1

    new-instance v0, Lcom/twitter/android/provider/bb;

    invoke-direct {v0}, Lcom/twitter/android/provider/bb;-><init>()V

    sput-object v0, Lcom/twitter/android/provider/ax;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/twitter/android/provider/ax;->j:J

    iput v0, p0, Lcom/twitter/android/provider/ax;->t:I

    iput v0, p0, Lcom/twitter/android/provider/ax;->B:I

    iput-wide v1, p0, Lcom/twitter/android/provider/ax;->D:J

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/twitter/android/provider/ax;->j:J

    iput v0, p0, Lcom/twitter/android/provider/ax;->t:I

    iput v0, p0, Lcom/twitter/android/provider/ax;->B:I

    iput-wide v1, p0, Lcom/twitter/android/provider/ax;->D:J

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/ax;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->j:J

    iput v1, p0, Lcom/twitter/android/provider/ax;->t:I

    iput v1, p0, Lcom/twitter/android/provider/ax;->B:I

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->o:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->r:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->s:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->u:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->v:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->w:D

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->x:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->y:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->z:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->A:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->B:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/e;

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->H:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->I:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->F:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/twitter/android/provider/ax;->G:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->J:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->q:J

    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->s:J

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->r:Z

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->h:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->i:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->j:J

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->l:Z

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->m:Z

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->n:J

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->s:J

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->o:J

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->u:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->v:D

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->w:D

    :cond_0
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->x:[B

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->y:Z

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->z:J

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/android/provider/ax;->A:Z

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/twitter/android/api/e;

    const/16 v3, 0x1a

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x18

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/twitter/android/api/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    :cond_1
    const-string v0, "rt_orig_ref_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->D:J

    :cond_2
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->a:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->H:I

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->I:I

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/provider/ax;->F:J

    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_6
    iput-boolean v1, p0, Lcom/twitter/android/provider/ax;->G:Z

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/provider/ax;->J:I

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v1, v2

    goto :goto_6
.end method

.method public final a(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/twitter/android/provider/ax;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/provider/ax;->q:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/twitter/android/provider/ax;->u:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    iget v1, v1, Lcom/twitter/android/api/e;->a:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/ax;->H:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/twitter/android/provider/ax;

    iget-wide v2, p0, Lcom/twitter/android/provider/ax;->s:J

    iget-wide v4, p1, Lcom/twitter/android/provider/ax;->s:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/ax;->I:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/ax;->I:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/ax;->H:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/twitter/android/provider/ax;->s:J

    iget-wide v2, p0, Lcom/twitter/android/provider/ax;->s:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/provider/ax;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/provider/ax;->J:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->h:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->j:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->l:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->m:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->o:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->q:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->s:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/provider/ax;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->u:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->v:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->w:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->x:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->y:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->z:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->A:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/provider/ax;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->D:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/provider/ax;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/provider/ax;->I:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-wide v3, p0, Lcom/twitter/android/provider/ax;->F:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/provider/ax;->G:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/provider/ax;->J:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method

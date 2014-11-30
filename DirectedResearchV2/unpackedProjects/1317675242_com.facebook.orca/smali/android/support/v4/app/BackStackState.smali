.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move v1, v7

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 44
    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->d:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 48
    iget-boolean v0, p2, Landroid/support/v4/app/BackStackRecord;->i:Z

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    move v0, v7

    .line 54
    :goto_1
    if-eqz v1, :cond_5

    .line 55
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    aput v4, v2, v0

    .line 56
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v4, v4, Landroid/support/v4/app/Fragment;->m:I

    aput v4, v0, v3

    .line 57
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    iget v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    aput v4, v0, v2

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    iget v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    aput v4, v0, v3

    .line 59
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    move v2, v7

    .line 62
    :goto_2
    if-ge v2, v3, :cond_3

    .line 63
    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->m:I

    aput v0, v5, v4

    .line 62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v6

    goto :goto_2

    :cond_3
    move v0, v4

    .line 68
    :goto_3
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_1

    .line 66
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aput v7, v0, v2

    move v0, v3

    goto :goto_3

    .line 70
    :cond_5
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->g:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 71
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->h:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 72
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 73
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->m:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 74
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->n:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 75
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 76
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->p:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 77
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 78
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 93
    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v1, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    move v0, v8

    .line 95
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 96
    new-instance v2, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v2}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 97
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    iput v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 98
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BSE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " set base fragment #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 101
    iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 102
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v5, 0x1

    aget v0, v0, v5

    iput v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    .line 103
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v4, v0, v4

    .line 105
    if-lez v4, :cond_2

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    move v0, v3

    move v3, v8

    .line 107
    :goto_1
    if-ge v3, v4, :cond_3

    .line 108
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BSE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set remove fragment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v7, v0, 0x1

    aget v0, v6, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 111
    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v3

    .line 114
    :cond_3
    invoke-virtual {v1, v2}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    goto/16 :goto_0

    .line 116
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->g:I

    .line 117
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->h:I

    .line 118
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object v0, v1, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/String;

    .line 119
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->m:I

    .line 120
    iput-boolean v9, v1, Landroid/support/v4/app/BackStackRecord;->i:Z

    .line 121
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->n:I

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v0, v1, Landroid/support/v4/app/BackStackRecord;->o:Ljava/lang/CharSequence;

    .line 123
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v0, v1, Landroid/support/v4/app/BackStackRecord;->p:I

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v0, v1, Landroid/support/v4/app/BackStackRecord;->q:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {v1, v9}, Landroid/support/v4/app/BackStackRecord;->a(I)V

    .line 126
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 141
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 143
    return-void
.end method

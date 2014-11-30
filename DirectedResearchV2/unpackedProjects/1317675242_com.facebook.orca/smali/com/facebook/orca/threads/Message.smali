.class public Lcom/facebook/orca/threads/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:Lcom/facebook/orca/location/Coordinates;

.field private final j:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation
.end field

.field private final l:I

.field private final m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private final o:Z

.field private final p:Ljava/lang/String;

.field private final q:Lcom/facebook/orca/threads/Message$ChannelSource;

.field private final r:Lcom/facebook/orca/attachments/MediaResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/facebook/orca/threads/Message$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/Message$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    .line 87
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->d:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    .line 92
    const-class v0, Lcom/facebook/orca/location/Coordinates;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/Coordinates;

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    .line 93
    const-class v0, Lcom/facebook/orca/threads/AttachmentInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    .line 94
    const-class v0, Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    .line 96
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/Message$ChannelSource;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 101
    const-class v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaResource;

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 102
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/Message$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/MessageBuilder;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->d:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->i()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    .line 74
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->l()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    .line 75
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    .line 78
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->q()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->r()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 81
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    return-wide v0
.end method

.method public d()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->d:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    return v0
.end method

.method public n()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->d:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 229
    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message$ChannelSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 236
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

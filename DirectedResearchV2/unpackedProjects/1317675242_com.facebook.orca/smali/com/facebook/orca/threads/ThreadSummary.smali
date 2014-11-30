.class public Lcom/facebook/orca/threads/ThreadSummary;
.super Ljava/lang/Object;
.source "ThreadSummary.java"

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
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final p:Ljava/lang/String;

.field private final q:Landroid/net/Uri;

.field private final r:Z

.field private final s:Z

.field private final t:Z

.field private final u:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummary$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ThreadSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/facebook/orca/threads/ThreadParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    .line 83
    sget-object v0, Lcom/facebook/orca/threads/ThreadParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    .line 84
    sget-object v0, Lcom/facebook/orca/threads/ParticipantInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    .line 88
    sget-object v0, Lcom/facebook/orca/threads/ParticipantInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Lcom/google/common/collect/ImmutableMap;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->b(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/google/common/collect/ImmutableMap;

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v2

    .line 94
    goto :goto_1

    :cond_2
    move v0, v2

    .line 95
    goto :goto_2

    :cond_3
    move v0, v2

    .line 96
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/ThreadSummary$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ThreadSummary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/ThreadSummaryBuilder;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Lcom/google/common/collect/ImmutableMap;

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->b(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/google/common/collect/ImmutableMap;

    .line 74
    return-void
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 109
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 112
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_1
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 122
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 127
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    move-object v0, p0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    return-object p0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public j()Lcom/google/common/collect/ImmutableList;
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
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    return-wide v0
.end method

.method public l()Lcom/google/common/collect/ImmutableList;
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
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    return v0
.end method

.method public w()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 304
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 311
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    return-void

    :cond_0
    move v0, v2

    .line 304
    goto :goto_0

    :cond_1
    move v0, v2

    .line 313
    goto :goto_1

    :cond_2
    move v0, v2

    .line 314
    goto :goto_2

    :cond_3
    move v0, v2

    .line 315
    goto :goto_3
.end method

.method public x()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummary$MergedList;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

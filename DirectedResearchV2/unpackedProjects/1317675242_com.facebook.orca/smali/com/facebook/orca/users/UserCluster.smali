.class public Lcom/facebook/orca/users/UserCluster;
.super Ljava/lang/Object;
.source "UserCluster.java"

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
            "Lcom/facebook/orca/users/UserCluster;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Lcom/facebook/orca/users/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserCluster;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 130
    new-instance v0, Lcom/facebook/orca/users/UserCluster$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserCluster$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/facebook/orca/users/UserInCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    .line 40
    sget-object v0, Lcom/facebook/orca/users/UserCluster;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/UserCluster;->c:J

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/facebook/orca/users/UserCluster;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/UserCluster$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserCluster;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    .line 34
    sget-object v0, Lcom/facebook/orca/users/UserCluster;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/UserCluster;->c:J

    .line 35
    invoke-static {p1}, Lcom/facebook/orca/users/UserCluster;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    .line 36
    return-void
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/users/User;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;)",
            "Lcom/facebook/orca/users/User;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    .line 47
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-ne v2, v3, :cond_2

    .line 48
    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiple primary users in cluster"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-eq v2, v3, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Facebook user in cluster that isn\'t primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_3
    if-nez v0, :cond_4

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No primary user in cluster"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    .line 88
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserIdentifier;

    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserCluster;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserCluster;->e()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()F
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    .line 125
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->u()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 127
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v1, "Cluster: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/orca/users/UserCluster;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserInCluster;

    .line 156
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 149
    return-void
.end method

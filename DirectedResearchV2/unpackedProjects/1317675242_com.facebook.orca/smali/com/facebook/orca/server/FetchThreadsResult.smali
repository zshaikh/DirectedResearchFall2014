.class public Lcom/facebook/orca/server/FetchThreadsResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "FetchThreadsResult.java"

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
            "Lcom/facebook/orca/server/FetchThreadsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Lcom/facebook/orca/server/FetchThreadsResult;


# instance fields
.field private final b:Lcom/facebook/orca/threads/ThreadsCollection;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/threads/FolderCounts;

.field private final f:Lcom/facebook/orca/notify/NotificationSetting;

.field private final g:Z

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-wide v10, v8

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    sput-object v0, Lcom/facebook/orca/server/FetchThreadsResult;->a:Lcom/facebook/orca/server/FetchThreadsResult;

    .line 93
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadsResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchThreadsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 56
    const-class v0, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadsCollection;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 57
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 58
    const-class v0, Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderCounts;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->e:Lcom/facebook/orca/threads/FolderCounts;

    .line 59
    const-class v0, Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->f:Lcom/facebook/orca/notify/NotificationSetting;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->g:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->h:J

    .line 63
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/FetchThreadsResult$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/DataFreshnessResult;",
            "Lcom/facebook/orca/threads/ThreadsCollection;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/orca/threads/FolderCounts;",
            "Lcom/facebook/orca/notify/NotificationSetting;",
            "ZJJ)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p8, p9}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 45
    iput-object p2, p0, Lcom/facebook/orca/server/FetchThreadsResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 46
    iput-object p3, p0, Lcom/facebook/orca/server/FetchThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 47
    iput-object p4, p0, Lcom/facebook/orca/server/FetchThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 48
    iput-object p5, p0, Lcom/facebook/orca/server/FetchThreadsResult;->e:Lcom/facebook/orca/threads/FolderCounts;

    .line 49
    iput-object p6, p0, Lcom/facebook/orca/server/FetchThreadsResult;->f:Lcom/facebook/orca/notify/NotificationSetting;

    .line 50
    iput-boolean p7, p0, Lcom/facebook/orca/server/FetchThreadsResult;->g:Z

    .line 51
    iput-wide p10, p0, Lcom/facebook/orca/server/FetchThreadsResult;->h:J

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/threads/FolderCounts;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->e:Lcom/facebook/orca/threads/FolderCounts;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->f:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->g:Z

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->h:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->e:Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->f:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadsResult;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/facebook/orca/threads/ThreadsCollection;
.super Ljava/lang/Object;
.source "ThreadsCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/ThreadsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/facebook/orca/threads/ThreadsCollection;


# instance fields
.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    sput-object v0, Lcom/facebook/orca/threads/ThreadsCollection;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 139
    new-instance v0, Lcom/facebook/orca/threads/ThreadsCollection$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadsCollection$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ThreadsCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->c:Z

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/ThreadsCollection$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    .line 28
    iput-boolean p2, p0, Lcom/facebook/orca/threads/ThreadsCollection;->c:Z

    .line 29
    invoke-static {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 30
    return-void
.end method

.method public static a()Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/orca/threads/ThreadsCollection;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/threads/ThreadsCollection;Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 134
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 114
    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 124
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 125
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 130
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 134
    :cond_5
    new-instance v0, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    goto :goto_0
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const-wide v0, 0x7fffffffffffffffL

    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threads were not in order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/ThreadSummary;

    return-object p0
.end method

.method public b()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 158
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadsCollection;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

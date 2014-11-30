.class public Lcom/facebook/orca/threads/MessagesCollection;
.super Ljava/lang/Object;
.source "MessagesCollection.java"

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
            "Lcom/facebook/orca/threads/MessagesCollection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/MessagesCollection$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/MessagesCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->a:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/facebook/orca/threads/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Z

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/MessagesCollection$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/threads/MessagesCollection;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    .line 29
    iput-boolean p3, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Z

    .line 30
    invoke-static {p2}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 31
    return-void
.end method

.method public static a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message Collections with different thread ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 175
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 152
    goto :goto_0

    .line 156
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 163
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 164
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 166
    if-eqz v4, :cond_4

    .line 167
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v0, v4

    :goto_2
    move v4, v0

    .line 171
    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    .line 171
    goto :goto_2

    .line 175
    :cond_5
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v2, p0, Lcom/facebook/orca/threads/MessagesCollection;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_2
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    const-wide v0, 0x7fffffffffffffffL

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/Message;

    .line 43
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thread messages were not in order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public static b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 209
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 196
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 198
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/Message;

    .line 204
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v4

    .line 206
    goto :goto_0

    .line 209
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/Message;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/threads/Message;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/Message;

    move-object v0, p0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 232
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

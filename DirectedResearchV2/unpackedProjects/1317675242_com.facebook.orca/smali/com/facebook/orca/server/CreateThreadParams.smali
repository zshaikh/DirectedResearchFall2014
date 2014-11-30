.class public Lcom/facebook/orca/server/CreateThreadParams;
.super Ljava/lang/Object;
.source "CreateThreadParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/CreateThreadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/threads/Message;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/facebook/orca/server/CreateThreadParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/CreateThreadParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/CreateThreadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->a:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->b:Lcom/facebook/orca/threads/Message;

    .line 35
    const-class v0, Lcom/facebook/orca/contacts/data/PickedUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->c:Lcom/google/common/collect/ImmutableList;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/server/CreateThreadParams;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/server/CreateThreadParams;->b:Lcom/facebook/orca/threads/Message;

    .line 29
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->c:Lcom/google/common/collect/ImmutableList;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->b:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->b:Lcom/facebook/orca/threads/Message;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/server/CreateThreadParams;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 79
    return-void
.end method

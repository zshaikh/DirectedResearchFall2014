.class public Lcom/facebook/orca/server/SendMessageResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "SendMessageResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/SendMessageResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/threads/Message;

.field private final c:Lcom/facebook/orca/threads/MessagesCollection;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/orca/server/SendMessageResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/SendMessageResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/SendMessageResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->a:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->b:Lcom/facebook/orca/threads/Message;

    .line 40
    const-class v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    iput-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/SendMessageResult;->d:Z

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/SendMessageResult$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/SendMessageResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;JZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p5, p6}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/server/SendMessageResult;->a:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/facebook/orca/server/SendMessageResult;->b:Lcom/facebook/orca/threads/Message;

    .line 32
    iput-object p4, p0, Lcom/facebook/orca/server/SendMessageResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    .line 33
    iput-boolean p7, p0, Lcom/facebook/orca/server/SendMessageResult;->d:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->b:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->b:Lcom/facebook/orca/threads/Message;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/server/SendMessageResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-boolean v0, p0, Lcom/facebook/orca/server/SendMessageResult;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

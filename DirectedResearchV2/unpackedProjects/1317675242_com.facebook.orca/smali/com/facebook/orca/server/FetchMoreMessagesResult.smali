.class public Lcom/facebook/orca/server/FetchMoreMessagesResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "FetchMoreMessagesResult.java"

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
            "Lcom/facebook/orca/server/FetchMoreMessagesResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/threads/MessagesCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 30
    const-class v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/threads/MessagesCollection;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/FetchMoreMessagesResult$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/MessagesCollection;J)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 25
    iput-object p2, p0, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/threads/MessagesCollection;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/threads/MessagesCollection;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    return-void
.end method

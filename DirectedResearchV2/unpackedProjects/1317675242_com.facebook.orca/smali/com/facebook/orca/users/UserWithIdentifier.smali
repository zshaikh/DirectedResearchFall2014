.class public Lcom/facebook/orca/users/UserWithIdentifier;
.super Ljava/lang/Object;
.source "UserWithIdentifier.java"

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
            "Lcom/facebook/orca/users/UserWithIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/users/User;

.field private final b:Lcom/facebook/orca/users/UserIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/orca/users/UserWithIdentifier$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserWithIdentifier$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserWithIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    iput-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    .line 28
    const-class v0, Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserIdentifier;

    iput-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/UserWithIdentifier$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    .line 23
    iput-object p2, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/users/UserIdentifier;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method

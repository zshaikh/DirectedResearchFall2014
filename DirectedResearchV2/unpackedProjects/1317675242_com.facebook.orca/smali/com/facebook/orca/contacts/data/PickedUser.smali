.class public Lcom/facebook/orca/contacts/data/PickedUser;
.super Ljava/lang/Object;
.source "PickedUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/users/UserWithIdentifier;

.field private final b:Lcom/facebook/orca/users/UserIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/orca/contacts/data/PickedUser$1;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/data/PickedUser$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/data/PickedUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserWithIdentifier;

    iput-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    .line 33
    const-class v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserIdentifier;

    iput-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->b:Lcom/facebook/orca/users/UserIdentifier;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/contacts/data/PickedUser$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/contacts/data/PickedUser;->b:Lcom/facebook/orca/users/UserIdentifier;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/facebook/orca/users/UserIdentifier;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/facebook/orca/users/UserIdentifier;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->b:Lcom/facebook/orca/users/UserIdentifier;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/orca/users/UserWithIdentifier;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/data/PickedUser;->b:Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    return-void
.end method

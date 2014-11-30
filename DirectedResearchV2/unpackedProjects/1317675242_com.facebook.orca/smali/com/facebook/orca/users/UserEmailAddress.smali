.class public Lcom/facebook/orca/users/UserEmailAddress;
.super Lcom/facebook/orca/users/UserIdentifier;
.source "UserEmailAddress.java"

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
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/orca/users/UserEmailAddress$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserEmailAddress$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserEmailAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserIdentifier;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->c:I

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/UserEmailAddress$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserIdentifier;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/users/UserEmailAddress;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->a:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/facebook/orca/users/UserEmailAddress;->c:I

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->a:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/facebook/orca/users/UserEmailAddress;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method

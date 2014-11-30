.class public Lcom/facebook/orca/users/UserPhoneNumber;
.super Lcom/facebook/orca/users/UserIdentifier;
.source "UserPhoneNumber.java"

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
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/facebook/orca/common/util/TriState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/orca/users/UserPhoneNumber$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserPhoneNumber$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserPhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserIdentifier;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->c:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/TriState;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->d:Lcom/facebook/orca/common/util/TriState;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/UserPhoneNumber$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/orca/common/util/TriState;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/orca/common/util/TriState;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserIdentifier;-><init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/users/UserPhoneNumber;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/users/UserPhoneNumber;->b:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/facebook/orca/users/UserPhoneNumber;->c:I

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/users/UserPhoneNumber;->d:Lcom/facebook/orca/common/util/TriState;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->c:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/users/UserPhoneNumber;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->d:Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/users/UserPhoneNumber;->d:Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/TriState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method

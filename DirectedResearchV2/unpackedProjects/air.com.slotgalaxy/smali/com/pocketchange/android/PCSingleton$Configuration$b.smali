.class Lcom/pocketchange/android/PCSingleton$Configuration$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PCSingleton$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pocketchange/android/PCSingleton$Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/PCSingleton$1;)V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 1

    .prologue
    .line 1839
    new-instance v0, Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-direct {v0, p1}, Lcom/pocketchange/android/PCSingleton$Configuration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 1

    .prologue
    .line 1843
    new-array v0, p1, [Lcom/pocketchange/android/PCSingleton$Configuration;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1837
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/PCSingleton$Configuration$b;->a(Landroid/os/Parcel;)Lcom/pocketchange/android/PCSingleton$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1837
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/PCSingleton$Configuration$b;->a(I)[Lcom/pocketchange/android/PCSingleton$Configuration;

    move-result-object v0

    return-object v0
.end method

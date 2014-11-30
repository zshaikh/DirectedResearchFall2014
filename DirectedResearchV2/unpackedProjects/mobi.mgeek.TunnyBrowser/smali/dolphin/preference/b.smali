.class final Ldolphin/preference/b;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/preference/DialogPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/preference/DialogPreference$SavedState;
    .locals 1

    .prologue
    .line 534
    new-instance v0, Ldolphin/preference/DialogPreference$SavedState;

    invoke-direct {v0, p1}, Ldolphin/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ldolphin/preference/DialogPreference$SavedState;
    .locals 1

    .prologue
    .line 538
    new-array v0, p1, [Ldolphin/preference/DialogPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Ldolphin/preference/b;->a(Landroid/os/Parcel;)Ldolphin/preference/DialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Ldolphin/preference/b;->a(I)[Ldolphin/preference/DialogPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

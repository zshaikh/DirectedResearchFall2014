.class final Ldolphin/preference/c;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/preference/EditTextPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/preference/EditTextPreference$SavedState;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Ldolphin/preference/EditTextPreference$SavedState;

    invoke-direct {v0, p1}, Ldolphin/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ldolphin/preference/EditTextPreference$SavedState;
    .locals 1

    .prologue
    .line 263
    new-array v0, p1, [Ldolphin/preference/EditTextPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Ldolphin/preference/c;->a(Landroid/os/Parcel;)Ldolphin/preference/EditTextPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Ldolphin/preference/c;->a(I)[Ldolphin/preference/EditTextPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

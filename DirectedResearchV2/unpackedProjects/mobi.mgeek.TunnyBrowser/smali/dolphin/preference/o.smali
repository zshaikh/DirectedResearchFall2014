.class final Ldolphin/preference/o;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/preference/ListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/preference/ListPreference$SavedState;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Ldolphin/preference/ListPreference$SavedState;

    invoke-direct {v0, p1}, Ldolphin/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ldolphin/preference/ListPreference$SavedState;
    .locals 1

    .prologue
    .line 340
    new-array v0, p1, [Ldolphin/preference/ListPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ldolphin/preference/o;->a(Landroid/os/Parcel;)Ldolphin/preference/ListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ldolphin/preference/o;->a(I)[Ldolphin/preference/ListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

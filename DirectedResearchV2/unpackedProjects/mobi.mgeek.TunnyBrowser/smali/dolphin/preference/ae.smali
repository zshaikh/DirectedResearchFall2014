.class final Ldolphin/preference/ae;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/preference/PreferenceScreen$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/preference/PreferenceScreen$SavedState;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Ldolphin/preference/PreferenceScreen$SavedState;

    invoke-direct {v0, p1}, Ldolphin/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ldolphin/preference/PreferenceScreen$SavedState;
    .locals 1

    .prologue
    .line 261
    new-array v0, p1, [Ldolphin/preference/PreferenceScreen$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Ldolphin/preference/ae;->a(Landroid/os/Parcel;)Ldolphin/preference/PreferenceScreen$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Ldolphin/preference/ae;->a(I)[Ldolphin/preference/PreferenceScreen$SavedState;

    move-result-object v0

    return-object v0
.end method

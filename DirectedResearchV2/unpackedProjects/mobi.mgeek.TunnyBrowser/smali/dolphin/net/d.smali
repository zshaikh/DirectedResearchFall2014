.class final Ldolphin/net/d;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ldolphin/net/ProxyProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ldolphin/net/ProxyProperties;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    .line 203
    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 210
    new-instance v0, Ldolphin/net/ProxyProperties;

    invoke-direct/range {v0 .. v5}, Ldolphin/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ldolphin/net/d;)V

    .line 212
    return-object v0

    :cond_0
    move-object v1, v5

    goto :goto_0
.end method

.method public a(I)[Ldolphin/net/ProxyProperties;
    .locals 1

    .prologue
    .line 216
    new-array v0, p1, [Ldolphin/net/ProxyProperties;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Ldolphin/net/d;->a(Landroid/os/Parcel;)Ldolphin/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Ldolphin/net/d;->a(I)[Ldolphin/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

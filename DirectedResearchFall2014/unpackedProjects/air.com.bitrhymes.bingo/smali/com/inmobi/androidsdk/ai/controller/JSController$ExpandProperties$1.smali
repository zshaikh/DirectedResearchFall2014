.class Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties$1;
.super Ljava/lang/Object;
.source "JSController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
    .locals 1
    .parameter

    .prologue
    .line 237
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {v0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
    .locals 1
    .parameter

    .prologue
    .line 241
    new-array v0, p1, [Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties$1;->a(Landroid/os/Parcel;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties$1;->a(I)[Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    return-object v0
.end method

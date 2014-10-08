.class public Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;
    check-cast p0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;

    invoke-virtual {p0, p1}, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;->a(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 68
    new-array v0, p1, [Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;

    return-object v0
.end method

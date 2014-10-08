.class public Lcom/vungle/sdk/net/http/RequestAdHttpRequest;
.super Lcom/vungle/sdk/net/http/VungleHttpRequest;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/vungle/sdk/u;->a()Lcom/vungle/sdk/ap;

    move-result-object v0

    const-class v1, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/ap;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    sput-object v0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->CREATOR:Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    return-void
.end method

.method protected constructor <init>(Lcom/vungle/sdk/ak;)V
    .locals 0
    .param p1    # Lcom/vungle/sdk/ak;
        .annotation runtime Ljavax/inject/Named;
            value = "RequestAdHttpResponseHandler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/sdk/net/http/VungleHttpRequest;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vungle/sdk/ah;->b:Lcom/vungle/sdk/ak;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/sdk/ah$b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vungle/sdk/ah$b;->b:Lcom/vungle/sdk/ah$b;

    return-object v0
.end method

.method protected final a(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/RequestAdHttpRequest;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->c:Ljava/lang/String;

    .line 70
    invoke-super {p0, p1}, Lcom/vungle/sdk/net/http/VungleHttpRequest;->b(Landroid/os/Parcel;)Lcom/vungle/sdk/ah;

    .line 71
    return-object p0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected final b()Lcom/vungle/sdk/ah$a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/vungle/sdk/ah$a;->a:Lcom/vungle/sdk/ah$a;

    return-object v0
.end method

.method protected final synthetic b(Landroid/os/Parcel;)Lcom/vungle/sdk/ah;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->a(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/RequestAdHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/vungle/sdk/net/http/VungleHttpRequest;->d()V

    .line 30
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->a:Landroid/os/Bundle;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Lcom/vungle/sdk/net/http/VungleHttpRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    return-void
.end method

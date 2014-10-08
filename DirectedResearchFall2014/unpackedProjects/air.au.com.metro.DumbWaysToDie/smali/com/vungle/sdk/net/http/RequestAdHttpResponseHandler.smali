.class public Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;
.super Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final CREATOR:Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;


# instance fields
.field d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleCache;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/sdk/model/VungleParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/vungle/sdk/u;->a()Lcom/vungle/sdk/ap;

    move-result-object v0

    const-class v1, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/ap;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;

    sput-object v0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;->CREATOR:Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;->b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;

    .line 63
    return-object p0
.end method

.method protected final a(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;->e:Lcom/vungle/sdk/model/VungleParser;

    invoke-virtual {p2}, Lcom/vungle/sdk/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/model/VungleParser;->a(Ljava/lang/String;)Lcom/vungle/sdk/z;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/sdk/model/RequestAd;->a(Lcom/vungle/sdk/z;)V

    .line 36
    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/vungle/sdk/ah;->j()Lcom/vungle/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/al;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;->c(I)J

    move-result-wide v0

    .line 41
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-interface {p3, p1, v0, v1}, Lcom/vungle/sdk/am;->a(Lcom/vungle/sdk/ah;J)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/vungle/sdk/z;->a()Ljava/lang/Long;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p3, p1, v0, v1}, Lcom/vungle/sdk/am;->a(Lcom/vungle/sdk/ah;J)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/sdk/VungleCache;

    .line 52
    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/z;)V

    goto :goto_0
.end method

.method protected final bridge synthetic b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;->b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;->b(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V

    return-void
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/vungle/sdk/net/http/InfiniteRetryHttpResponseHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

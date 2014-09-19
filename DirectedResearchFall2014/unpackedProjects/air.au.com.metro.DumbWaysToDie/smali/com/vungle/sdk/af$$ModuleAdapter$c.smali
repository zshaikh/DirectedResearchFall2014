.class public final Lcom/vungle/sdk/af$$ModuleAdapter$c;
.super Lcom/vungle/sdk/aq;
.source "vungle"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/af$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Lcom/vungle/sdk/ak;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/sdk/ak;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/vungle/sdk/af;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/af;)V
    .locals 4
    .parameter

    .prologue
    .line 102
    const-string v0, "@javax.inject.Named(value=RequestAdHttpResponseHandler)/com.vungle.sdk.net.http.HttpResponseHandler"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.vungle.sdk.inject.PublisherModule.provideRequestAdHttpResponseHandler()"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/vungle/sdk/af$$ModuleAdapter$c;->e:Lcom/vungle/sdk/af;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/sdk/af$$ModuleAdapter$c;->c(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter$c;->e:Lcom/vungle/sdk/af;

    new-instance v0, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;

    invoke-direct {v0}, Lcom/vungle/sdk/net/http/RequestAdHttpResponseHandler;-><init>()V

    return-object v0
.end method

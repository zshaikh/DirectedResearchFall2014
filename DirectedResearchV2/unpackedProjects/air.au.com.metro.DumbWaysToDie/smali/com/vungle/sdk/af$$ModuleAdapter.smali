.class public final Lcom/vungle/sdk/af$$ModuleAdapter;
.super Lcom/vungle/sdk/ay;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/af$$ModuleAdapter$e;,
        Lcom/vungle/sdk/af$$ModuleAdapter$d;,
        Lcom/vungle/sdk/af$$ModuleAdapter$c;,
        Lcom/vungle/sdk/af$$ModuleAdapter$b;,
        Lcom/vungle/sdk/af$$ModuleAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/ay",
        "<",
        "Lcom/vungle/sdk/af;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.vungle.sdk.VunglePub"

    aput-object v1, v0, v3

    const-string v1, "members/com.vungle.sdk.VungleAdvert"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "members/com.vungle.sdk.net.http.RequestAdHttpRequest$Creator"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "members/com.vungle.sdk.net.http.RequestAdHttpResponseHandler$Creator"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/sdk/af$$ModuleAdapter;->h:[Ljava/lang/String;

    .line 16
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/vungle/sdk/VungleConnectionHandler;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/af$$ModuleAdapter;->i:[Ljava/lang/Class;

    .line 17
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/vungle/sdk/af$$ModuleAdapter;->j:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/vungle/sdk/af$$ModuleAdapter;->h:[Ljava/lang/String;

    sget-object v1, Lcom/vungle/sdk/af$$ModuleAdapter;->i:[Ljava/lang/Class;

    sget-object v2, Lcom/vungle/sdk/af$$ModuleAdapter;->j:[Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/sdk/ay;-><init>([Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vungle/sdk/aq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    const-string v1, "android.media.AudioManager"

    new-instance v2, Lcom/vungle/sdk/af$$ModuleAdapter$a;

    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter;->g:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/sdk/af;

    invoke-direct {v2, v0}, Lcom/vungle/sdk/af$$ModuleAdapter$a;-><init>(Lcom/vungle/sdk/af;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "android.content.Context"

    new-instance v2, Lcom/vungle/sdk/af$$ModuleAdapter$b;

    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter;->g:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/sdk/af;

    invoke-direct {v2, v0}, Lcom/vungle/sdk/af$$ModuleAdapter$b;-><init>(Lcom/vungle/sdk/af;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "@javax.inject.Named(value=RequestAdHttpResponseHandler)/com.vungle.sdk.net.http.HttpResponseHandler"

    new-instance v2, Lcom/vungle/sdk/af$$ModuleAdapter$c;

    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter;->g:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/sdk/af;

    invoke-direct {v2, v0}, Lcom/vungle/sdk/af$$ModuleAdapter$c;-><init>(Lcom/vungle/sdk/af;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "android.telephony.TelephonyManager"

    new-instance v2, Lcom/vungle/sdk/af$$ModuleAdapter$d;

    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter;->g:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/sdk/af;

    invoke-direct {v2, v0}, Lcom/vungle/sdk/af$$ModuleAdapter$d;-><init>(Lcom/vungle/sdk/af;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "com.vungle.sdk.VungleCache"

    new-instance v1, Lcom/vungle/sdk/af$$ModuleAdapter$e;

    iget-object p0, p0, Lcom/vungle/sdk/af$$ModuleAdapter;->g:Ljava/lang/Object;

    check-cast p0, Lcom/vungle/sdk/af;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/af$$ModuleAdapter$e;-><init>(Lcom/vungle/sdk/af;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

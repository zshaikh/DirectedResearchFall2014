.class public final Lcom/vungle/sdk/af$$ModuleAdapter$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Lcom/vungle/sdk/VungleCache;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/sdk/VungleCache;",
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
    const/4 v3, 0x0

    .line 156
    const-string v0, "com.vungle.sdk.VungleCache"

    const/4 v1, 0x0

    const-string v2, "com.vungle.sdk.inject.PublisherModule.provideVungleCache()"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 157
    iput-object p1, p0, Lcom/vungle/sdk/af$$ModuleAdapter$e;->e:Lcom/vungle/sdk/af;

    .line 158
    invoke-virtual {p0, v3}, Lcom/vungle/sdk/af$$ModuleAdapter$e;->c(Z)V

    .line 159
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter$e;->e:Lcom/vungle/sdk/af;

    invoke-virtual {v0}, Lcom/vungle/sdk/af;->a()Lcom/vungle/sdk/VungleCache;

    move-result-object v0

    return-object v0
.end method

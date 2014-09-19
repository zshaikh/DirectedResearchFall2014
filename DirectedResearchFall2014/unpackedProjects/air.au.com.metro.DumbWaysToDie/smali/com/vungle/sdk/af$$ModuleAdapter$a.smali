.class public final Lcom/vungle/sdk/af$$ModuleAdapter$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Landroid/media/AudioManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/media/AudioManager;",
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

    .line 48
    const-string v0, "android.media.AudioManager"

    const/4 v1, 0x0

    const-string v2, "com.vungle.sdk.inject.PublisherModule.provideAudioManager()"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/vungle/sdk/af$$ModuleAdapter$a;->e:Lcom/vungle/sdk/af;

    .line 50
    invoke-virtual {p0, v3}, Lcom/vungle/sdk/af$$ModuleAdapter$a;->c(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/sdk/af$$ModuleAdapter$a;->e:Lcom/vungle/sdk/af;

    iget-object v0, v0, Lcom/vungle/sdk/af;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

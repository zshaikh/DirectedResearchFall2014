.class final Lcom/vungle/sdk/IVungleConstants$1;
.super Lcom/vungle/sdk/IVungleConstants$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/IVungleConstants;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VunglePub$EventListener;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/vungle/sdk/IVungleConstants$a;-><init>(Lcom/vungle/sdk/VunglePub$EventListener;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vungle/sdk/IVungleConstants$1;->a:Lcom/vungle/sdk/VunglePub$EventListener;

    invoke-interface {v0}, Lcom/vungle/sdk/VunglePub$EventListener;->onVungleAdStart()V

    .line 257
    return-void
.end method

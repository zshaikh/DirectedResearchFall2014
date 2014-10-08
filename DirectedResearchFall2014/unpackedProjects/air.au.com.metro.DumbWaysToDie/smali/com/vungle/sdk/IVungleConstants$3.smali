.class final Lcom/vungle/sdk/IVungleConstants$3;
.super Lcom/vungle/sdk/IVungleConstants$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/IVungleConstants;->a(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private b:D

.field private c:D


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VunglePub$EventListener;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/vungle/sdk/IVungleConstants$a;-><init>(Lcom/vungle/sdk/VunglePub$EventListener;)V

    return-void
.end method


# virtual methods
.method public final a(DD)Lcom/vungle/sdk/IVungleConstants$a;
    .locals 0

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/vungle/sdk/IVungleConstants$3;->b:D

    .line 301
    iput-wide p3, p0, Lcom/vungle/sdk/IVungleConstants$3;->c:D

    .line 302
    return-object p0
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vungle/sdk/IVungleConstants$3;->a:Lcom/vungle/sdk/VunglePub$EventListener;

    iget-wide v1, p0, Lcom/vungle/sdk/IVungleConstants$3;->b:D

    iget-wide v3, p0, Lcom/vungle/sdk/IVungleConstants$3;->c:D

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vungle/sdk/VunglePub$EventListener;->onVungleView(DD)V

    .line 307
    return-void
.end method

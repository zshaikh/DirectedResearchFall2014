.class abstract Lcom/vungle/sdk/IVungleConstants$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/IVungleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/vungle/sdk/VunglePub$EventListener;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/VunglePub$EventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/vungle/sdk/IVungleConstants$a;->a:Lcom/vungle/sdk/VunglePub$EventListener;

    .line 324
    return-void
.end method

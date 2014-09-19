.class public final Lcom/vungle/sdk/w;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public a:D

.field public b:D

.field private c:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v0, p0, Lcom/vungle/sdk/w;->a:D

    .line 18
    iput-wide v0, p0, Lcom/vungle/sdk/w;->b:D

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/w;->c:Landroid/location/LocationManager;

    .line 50
    return-void
.end method

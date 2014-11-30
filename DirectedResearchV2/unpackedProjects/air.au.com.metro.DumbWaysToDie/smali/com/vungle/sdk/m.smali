.class public final Lcom/vungle/sdk/m;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Lcom/vungle/sdk/m;


# instance fields
.field private b:Lcom/vungle/sdk/VungleBitmapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/vungle/sdk/m;

    invoke-direct {v0}, Lcom/vungle/sdk/m;-><init>()V

    sput-object v0, Lcom/vungle/sdk/m;->a:Lcom/vungle/sdk/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/sdk/m;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/vungle/sdk/m;->a:Lcom/vungle/sdk/m;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/VungleBitmapFactory;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vungle/sdk/m;->b:Lcom/vungle/sdk/VungleBitmapFactory;

    .line 24
    return-void
.end method

.method public final b()Lcom/vungle/sdk/VungleBitmapFactory;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/sdk/m;->b:Lcom/vungle/sdk/VungleBitmapFactory;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/vungle/sdk/a;->a()Lcom/vungle/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/m;->b:Lcom/vungle/sdk/VungleBitmapFactory;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/m;->b:Lcom/vungle/sdk/VungleBitmapFactory;

    return-object v0
.end method

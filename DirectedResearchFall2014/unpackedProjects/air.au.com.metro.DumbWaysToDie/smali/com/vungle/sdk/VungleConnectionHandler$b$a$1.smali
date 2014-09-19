.class final Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/VungleConnectionHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleConnectionHandler$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleConnectionHandler;

.field final synthetic b:Lcom/vungle/sdk/VungleConnectionHandler$b$a;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleConnectionHandler$b$a;Lcom/vungle/sdk/VungleConnectionHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;->b:Lcom/vungle/sdk/VungleConnectionHandler$b$a;

    iput-object p2, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleConnectionHandler;->a(Lcom/vungle/sdk/VungleConnectionHandler;I)I

    .line 476
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleConnectionHandler;->a(Lcom/vungle/sdk/VungleConnectionHandler;Z)Z

    .line 477
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-static {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->a(Lcom/vungle/sdk/VungleConnectionHandler;)V

    .line 479
    return-void
.end method

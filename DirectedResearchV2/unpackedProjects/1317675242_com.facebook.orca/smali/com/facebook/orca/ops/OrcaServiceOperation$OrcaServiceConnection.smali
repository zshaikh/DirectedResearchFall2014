.class Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperation$1;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {p2}, Lcom/facebook/orca/server/IOrcaService$Stub;->a(Landroid/os/IBinder;)Lcom/facebook/orca/server/IOrcaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Z)Z

    .line 79
    return-void
.end method

.class Lcom/voxel/sdk/ConnectionMonitor$2;
.super Ljava/lang/Object;
.source "ConnectionMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/ConnectionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/ConnectionMonitor;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/ConnectionMonitor;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/voxel/sdk/ConnectionMonitor$2;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/voxel/sdk/ConnectionMonitor$2;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v0}, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivity()V

    .line 77
    return-void
.end method

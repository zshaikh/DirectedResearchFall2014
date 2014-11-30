.class Lcom/facebook/orca/server/OrcaServiceQueue$3;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$3;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$3;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    .line 153
    return-void
.end method

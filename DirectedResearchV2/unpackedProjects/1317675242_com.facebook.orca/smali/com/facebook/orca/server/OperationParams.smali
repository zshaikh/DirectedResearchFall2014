.class public Lcom/facebook/orca/server/OperationParams;
.super Ljava/lang/Object;
.source "OperationParams.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Bundle;

.field private final c:Lcom/facebook/orca/server/OrcaServiceProgressCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/server/OperationParams;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/facebook/orca/server/OperationParams;->b:Landroid/os/Bundle;

    .line 25
    iput-object p3, p0, Lcom/facebook/orca/server/OperationParams;->c:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/server/OperationParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/server/OperationParams;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/server/OrcaServiceProgressCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/server/OperationParams;->c:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    return-object v0
.end method

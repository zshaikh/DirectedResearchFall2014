.class public Lcom/facebook/orca/ops/OrcaServiceFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrcaServiceFragment.java"


# instance fields
.field private a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

.field private c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

.field private d:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->a()V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 72
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 73
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 74
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 31
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/ops/OrcaServiceFragment$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/ops/OrcaServiceFragment$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Landroid/os/Bundle;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->d:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->d:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 65
    iput-boolean v2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->e:Z

    .line 66
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->e:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->d:Lcom/facebook/orca/ops/OperationProgressIndicator;

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 115
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method

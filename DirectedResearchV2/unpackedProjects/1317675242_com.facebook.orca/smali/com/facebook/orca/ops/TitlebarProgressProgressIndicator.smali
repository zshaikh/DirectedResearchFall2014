.class public Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;
.super Ljava/lang/Object;
.source "TitlebarProgressProgressIndicator.java"

# interfaces
.implements Lcom/facebook/orca/ops/OperationProgressIndicator;


# instance fields
.field private final a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Z)V

    .line 23
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Z)V

    .line 28
    return-void
.end method

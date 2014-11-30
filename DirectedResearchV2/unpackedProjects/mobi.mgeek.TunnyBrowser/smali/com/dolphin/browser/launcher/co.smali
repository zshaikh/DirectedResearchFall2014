.class Lcom/dolphin/browser/launcher/co;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/cc;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Workspace;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    iget-boolean v0, v0, Lcom/dolphin/browser/launcher/Workspace;->b:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->i()V

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/Workspace;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/Workspace;)[I

    move-result-object v1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/Workspace;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/Workspace;)[I

    move-result-object v1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->c(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/co;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/Workspace;)[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZ)V

    goto :goto_0
.end method

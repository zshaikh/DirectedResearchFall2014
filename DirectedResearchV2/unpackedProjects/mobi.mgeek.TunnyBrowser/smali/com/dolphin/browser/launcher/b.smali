.class Lcom/dolphin/browser/launcher/b;
.super Ljava/lang/Object;
.source "ButtonDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/aj;

.field final synthetic b:Lcom/dolphin/browser/launcher/ButtonDropTarget;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/ButtonDropTarget;Lcom/dolphin/browser/launcher/aj;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dolphin/browser/launcher/b;->b:Lcom/dolphin/browser/launcher/ButtonDropTarget;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/b;->a:Lcom/dolphin/browser/launcher/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/launcher/b;->b:Lcom/dolphin/browser/launcher/ButtonDropTarget;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/ButtonDropTarget;->c:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->g()V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/launcher/b;->b:Lcom/dolphin/browser/launcher/ButtonDropTarget;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/b;->a:Lcom/dolphin/browser/launcher/aj;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/ButtonDropTarget;->h(Lcom/dolphin/browser/launcher/aj;)V

    .line 176
    return-void
.end method

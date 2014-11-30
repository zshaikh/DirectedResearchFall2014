.class Lcom/dolphin/browser/launcher/cp;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Workspace;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cp;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cp;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->k()V

    .line 456
    return-void
.end method

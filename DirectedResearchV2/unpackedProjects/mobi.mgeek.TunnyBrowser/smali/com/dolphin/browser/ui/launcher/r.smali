.class Lcom/dolphin/browser/ui/launcher/r;
.super Ljava/lang/Object;
.source "MostVisitedFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/q;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/q;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/r;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/r;->a:Lcom/dolphin/browser/ui/launcher/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 321
    return-void
.end method

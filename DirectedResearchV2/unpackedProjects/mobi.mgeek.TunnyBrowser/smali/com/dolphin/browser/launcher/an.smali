.class Lcom/dolphin/browser/launcher/an;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/a;

.field final synthetic b:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Folder;Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/dolphin/browser/launcher/an;->b:Lcom/dolphin/browser/launcher/Folder;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/an;->a:Lcom/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/launcher/an;->a:Lcom/g/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/an;->b:Lcom/dolphin/browser/launcher/Folder;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/Folder;->l:Lcom/g/a/a;

    if-eq v0, v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/an;->a:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->a()V

    goto :goto_0
.end method

.class Lcom/dolphin/browser/ui/launcher/d;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/a;

.field final synthetic b:Lcom/dolphin/browser/ui/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/Folder;Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/d;->b:Lcom/dolphin/browser/ui/launcher/Folder;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/d;->a:Lcom/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/d;->a:Lcom/g/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/d;->b:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/Folder;->d(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/g/a/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/d;->a:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->a()V

    goto :goto_0
.end method

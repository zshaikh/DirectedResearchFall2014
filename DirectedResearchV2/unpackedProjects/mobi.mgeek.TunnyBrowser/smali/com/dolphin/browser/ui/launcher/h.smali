.class Lcom/dolphin/browser/ui/launcher/h;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/f/b/d;

.field final synthetic b:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/f/b/d;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/h;->b:Lcom/dolphin/browser/ui/launcher/g;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/h;->a:Lcom/dolphin/browser/f/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/h;->a:Lcom/dolphin/browser/f/b/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/d;->b()V

    .line 233
    return-void
.end method

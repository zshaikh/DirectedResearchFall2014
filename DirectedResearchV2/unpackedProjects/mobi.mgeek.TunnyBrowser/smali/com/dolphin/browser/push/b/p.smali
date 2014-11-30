.class Lcom/dolphin/browser/push/b/p;
.super Ljava/lang/Object;
.source "DeleteSpeedDialMessageExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/g;

.field final synthetic b:Lcom/dolphin/browser/launcher/cl;

.field final synthetic c:Lcom/dolphin/browser/push/b/n;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/b/n;Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/cl;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/push/b/p;->c:Lcom/dolphin/browser/push/b/n;

    iput-object p2, p0, Lcom/dolphin/browser/push/b/p;->a:Lcom/dolphin/browser/ui/launcher/g;

    iput-object p3, p0, Lcom/dolphin/browser/push/b/p;->b:Lcom/dolphin/browser/launcher/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/push/b/p;->a:Lcom/dolphin/browser/ui/launcher/g;

    iget-object v1, p0, Lcom/dolphin/browser/push/b/p;->b:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/launcher/bi;)V

    .line 55
    return-void
.end method

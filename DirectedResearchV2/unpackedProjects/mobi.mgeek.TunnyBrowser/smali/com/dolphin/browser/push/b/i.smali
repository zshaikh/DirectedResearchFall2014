.class Lcom/dolphin/browser/push/b/i;
.super Ljava/lang/Object;
.source "AddSpeedDialMessageExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/g;

.field final synthetic b:Lcom/dolphin/browser/launcher/bi;

.field final synthetic c:Lcom/dolphin/browser/push/b/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/b/g;Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/push/b/i;->c:Lcom/dolphin/browser/push/b/g;

    iput-object p2, p0, Lcom/dolphin/browser/push/b/i;->a:Lcom/dolphin/browser/ui/launcher/g;

    iput-object p3, p0, Lcom/dolphin/browser/push/b/i;->b:Lcom/dolphin/browser/launcher/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/push/b/i;->a:Lcom/dolphin/browser/ui/launcher/g;

    iget-object v1, p0, Lcom/dolphin/browser/push/b/i;->b:Lcom/dolphin/browser/launcher/bi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    .line 111
    return-void
.end method

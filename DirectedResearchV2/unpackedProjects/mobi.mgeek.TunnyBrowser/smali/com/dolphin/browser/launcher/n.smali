.class Lcom/dolphin/browser/launcher/n;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bi;

.field final synthetic b:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/dolphin/browser/launcher/n;->b:Lcom/dolphin/browser/launcher/f;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/n;->a:Lcom/dolphin/browser/launcher/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/dolphin/browser/launcher/n;->b:Lcom/dolphin/browser/launcher/f;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;)Lcom/dolphin/browser/launcher/q;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/n;->a:Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/launcher/bi;)Z

    .line 654
    return-void
.end method

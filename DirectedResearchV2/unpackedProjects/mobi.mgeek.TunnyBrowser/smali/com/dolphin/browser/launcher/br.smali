.class Lcom/dolphin/browser/launcher/br;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bq;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bq;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dolphin/browser/launcher/br;->a:Lcom/dolphin/browser/launcher/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/launcher/br;->a:Lcom/dolphin/browser/launcher/bq;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bq;->a:Lcom/dolphin/browser/launcher/bk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/bk;->i:Z

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/launcher/br;->a:Lcom/dolphin/browser/launcher/bq;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bq;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->d()V

    .line 169
    return-void
.end method

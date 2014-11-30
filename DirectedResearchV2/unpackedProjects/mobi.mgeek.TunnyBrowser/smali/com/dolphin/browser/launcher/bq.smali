.class Lcom/dolphin/browser/launcher/bq;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bq;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->d()V

    .line 165
    new-instance v0, Lcom/dolphin/browser/launcher/br;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/br;-><init>(Lcom/dolphin/browser/launcher/bq;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

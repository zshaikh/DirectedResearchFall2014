.class Lcom/dolphin/browser/launcher/bl;
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
    .line 114
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bl;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bl;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bk;)V

    .line 117
    return-void
.end method

.class Lcom/dolphin/browser/launcher/bn;
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
    .line 133
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bn;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/dolphin/browser/launcher/bo;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/bo;-><init>(Lcom/dolphin/browser/launcher/bn;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

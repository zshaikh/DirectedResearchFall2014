.class Lcom/dolphin/browser/share/tabpush/i;
.super Ljava/lang/Object;
.source "TabPushShareContentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/tabpush/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/tabpush/f;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/i;->a:Lcom/dolphin/browser/share/tabpush/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/i;->a:Lcom/dolphin/browser/share/tabpush/f;

    iget-object v0, v0, Lcom/dolphin/browser/share/tabpush/f;->a:Lcom/dolphin/browser/share/tabpush/e;

    iget-object v0, v0, Lcom/dolphin/browser/share/tabpush/e;->b:Lcom/dolphin/browser/share/tabpush/d;

    invoke-static {v0}, Lcom/dolphin/browser/share/tabpush/d;->a(Lcom/dolphin/browser/share/tabpush/d;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0502

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 322
    return-void
.end method

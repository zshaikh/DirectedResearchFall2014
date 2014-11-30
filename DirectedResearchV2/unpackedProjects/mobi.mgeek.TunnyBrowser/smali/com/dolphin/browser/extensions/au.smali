.class Lcom/dolphin/browser/extensions/au;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/al;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/dolphin/browser/extensions/au;->a:Lcom/dolphin/browser/extensions/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/dolphin/browser/extensions/au;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->d(Lcom/dolphin/browser/extensions/al;)V

    .line 1982
    iget-object v0, p0, Lcom/dolphin/browser/extensions/au;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->e(Lcom/dolphin/browser/extensions/al;)V

    .line 1983
    return-void
.end method

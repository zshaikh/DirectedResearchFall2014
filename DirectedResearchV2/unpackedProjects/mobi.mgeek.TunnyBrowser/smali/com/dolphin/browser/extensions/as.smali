.class Lcom/dolphin/browser/extensions/as;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/ar;)V
    .locals 0

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/dolphin/browser/extensions/as;->a:Lcom/dolphin/browser/extensions/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/dolphin/browser/extensions/as;->a:Lcom/dolphin/browser/extensions/ar;

    iget-object v0, v0, Lcom/dolphin/browser/extensions/ar;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->c(Lcom/dolphin/browser/extensions/al;)V

    .line 1841
    return-void
.end method

.class Lcom/dolphin/browser/extension/b;
.super Ljava/lang/Object;
.source "AdBlockAddon.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extension/AdBlockAddon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extension/AdBlockAddon;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/extension/b;->a:Lcom/dolphin/browser/extension/AdBlockAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 58
    return-void
.end method

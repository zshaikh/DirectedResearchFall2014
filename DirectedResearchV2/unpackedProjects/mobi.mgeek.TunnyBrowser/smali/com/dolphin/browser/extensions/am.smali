.class Lcom/dolphin/browser/extensions/am;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/al;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/dolphin/browser/extensions/am;->a:Lcom/dolphin/browser/extensions/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/extensions/am;->a:Lcom/dolphin/browser/extensions/al;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->j()V

    .line 188
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 189
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    invoke-static {}, Lcom/dolphin/browser/extensions/a/c;->a()Lcom/dolphin/browser/extensions/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/a/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/extensions/am;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/al;)V

    .line 194
    :cond_0
    return-void
.end method

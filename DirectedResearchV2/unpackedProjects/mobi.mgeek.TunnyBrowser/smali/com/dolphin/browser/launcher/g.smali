.class Lcom/dolphin/browser/launcher/g;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/s;

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/launcher/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/s;I)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dolphin/browser/launcher/g;->c:Lcom/dolphin/browser/launcher/f;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/g;->a:Lcom/dolphin/browser/launcher/s;

    iput p3, p0, Lcom/dolphin/browser/launcher/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/launcher/g;->a:Lcom/dolphin/browser/launcher/s;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/launcher/g;->a:Lcom/dolphin/browser/launcher/s;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/g;->c:Lcom/dolphin/browser/launcher/f;

    iget v2, p0, Lcom/dolphin/browser/launcher/g;->b:I

    invoke-static {v1, v2}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/f;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/launcher/s;->a(Ljava/util/List;)V

    .line 149
    :cond_0
    return-void
.end method

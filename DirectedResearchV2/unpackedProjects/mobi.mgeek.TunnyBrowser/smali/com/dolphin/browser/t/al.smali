.class Lcom/dolphin/browser/t/al;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/dolphin/browser/t/al;->c:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/al;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/dolphin/browser/t/al;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/dolphin/browser/t/al;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 634
    iget-object v1, p0, Lcom/dolphin/browser/t/al;->c:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/al;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/extensions/n;Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    return-void
.end method

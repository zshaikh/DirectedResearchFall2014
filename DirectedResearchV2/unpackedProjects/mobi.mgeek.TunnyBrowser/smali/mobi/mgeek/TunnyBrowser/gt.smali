.class Lmobi/mgeek/TunnyBrowser/gt;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ShareActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ShareActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gt;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 170
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gt;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    iget-object v1, v1, Lmobi/mgeek/TunnyBrowser/ShareActivity;->n:Lcom/dolphin/browser/extensions/bh;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/bh;->e(Lcom/dolphin/browser/extensions/n;)V

    .line 171
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gt;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->f()V

    .line 172
    return-void
.end method

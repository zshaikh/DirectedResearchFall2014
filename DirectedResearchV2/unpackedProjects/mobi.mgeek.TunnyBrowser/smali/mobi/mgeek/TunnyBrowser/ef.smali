.class Lmobi/mgeek/TunnyBrowser/ef;
.super Ljava/lang/Object;
.source "DolphinWebkitPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/p/b;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;Lcom/dolphin/browser/p/b;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ef;->c:Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/ef;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v1, v1, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v1, v1, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/p/b;->c:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/dolphin/browser/p/a;->a()Lcom/dolphin/browser/p/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ef;->c:Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v2, v2, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v3, v3, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/p/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ef;->b:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ef;->a:Lcom/dolphin/browser/p/b;

    iget-object v1, v1, Lcom/dolphin/browser/p/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 197
    return-void
.end method

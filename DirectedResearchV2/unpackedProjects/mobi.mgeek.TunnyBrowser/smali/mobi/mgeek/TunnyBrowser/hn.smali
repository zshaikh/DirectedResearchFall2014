.class Lmobi/mgeek/TunnyBrowser/hn;
.super Ljava/lang/Object;
.source "SubscriptionActivity.java"

# interfaces
.implements Lcom/mobosquare/sdk/subscription/c;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->removeDialog(I)V

    .line 203
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0649

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->finish()V

    .line 215
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->removeDialog(I)V

    .line 216
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0648

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hn;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->showDialog(I)V

    .line 198
    return-void
.end method

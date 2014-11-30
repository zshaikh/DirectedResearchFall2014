.class Lmobi/mgeek/TunnyBrowser/cp;
.super Ljava/lang/Object;
.source "ClearDataGroupPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cn;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cn;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cp;->a:Lmobi/mgeek/TunnyBrowser/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cp;->a:Lmobi/mgeek/TunnyBrowser/cn;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00ec

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method

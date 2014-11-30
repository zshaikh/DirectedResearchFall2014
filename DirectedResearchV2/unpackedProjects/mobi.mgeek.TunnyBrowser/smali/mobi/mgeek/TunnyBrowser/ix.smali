.class Lmobi/mgeek/TunnyBrowser/ix;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Lcom/dolphin/browser/core/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/core/ValueCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/is;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/is;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ix;->d:Lmobi/mgeek/TunnyBrowser/is;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ix;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/ix;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/ix;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ix;->d:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/is;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ix;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ix;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ix;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ix;->d:Lmobi/mgeek/TunnyBrowser/is;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ix;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/is;->a(Landroid/widget/ImageView;J)V

    .line 508
    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 499
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ix;->a(Ljava/lang/Long;)V

    return-void
.end method

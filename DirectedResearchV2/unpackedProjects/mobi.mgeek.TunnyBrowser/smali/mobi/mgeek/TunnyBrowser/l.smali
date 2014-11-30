.class Lmobi/mgeek/TunnyBrowser/l;
.super Ljava/lang/Object;
.source "BackupRestoreDialogHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/k;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/k;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/l;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 292
    if-eqz p2, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0092

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setText(I)V

    .line 293
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/l;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/k;->c(Lmobi/mgeek/TunnyBrowser/k;)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 294
    return-void

    .line 292
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0091

    goto :goto_0

    .line 293
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

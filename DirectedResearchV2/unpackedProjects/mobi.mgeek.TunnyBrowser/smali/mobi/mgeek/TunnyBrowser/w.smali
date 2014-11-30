.class Lmobi/mgeek/TunnyBrowser/w;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/Browser;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/Browser;Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/w;->c:Lmobi/mgeek/TunnyBrowser/Browser;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/w;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/w;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/w;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 576
    if-eqz v0, :cond_0

    .line 577
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/w;->b:Ljava/lang/String;

    invoke-static {v1}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/lang/String;)Ljava/io/File;

    .line 579
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/w;->c:Lmobi/mgeek/TunnyBrowser/Browser;

    invoke-static {v1, v0}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Lmobi/mgeek/TunnyBrowser/Browser;Z)V

    .line 580
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/w;->c:Lmobi/mgeek/TunnyBrowser/Browser;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Lmobi/mgeek/TunnyBrowser/Browser;)V

    .line 581
    invoke-static {p1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 582
    return-void
.end method

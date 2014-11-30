.class Lmobi/mgeek/TunnyBrowser/v;
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
    .line 584
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/v;->c:Lmobi/mgeek/TunnyBrowser/Browser;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/v;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 587
    invoke-static {p1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 588
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/v;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/v;->b:Ljava/lang/String;

    invoke-static {v0}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 590
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 592
    :cond_0
    return-void
.end method

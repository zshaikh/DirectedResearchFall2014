.class Lmobi/mgeek/TunnyBrowser/hp;
.super Ljava/lang/Object;
.source "TermsOfUseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hp;->a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hp;->a:Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/TermsOfUseActivity;->finish()V

    .line 46
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 47
    return-void
.end method

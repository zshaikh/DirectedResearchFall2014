.class Lmobi/mgeek/TunnyBrowser/ey;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ew;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ew;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ey;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ey;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ew;->dismiss()V

    .line 51
    return-void
.end method

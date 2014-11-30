.class Lmobi/mgeek/TunnyBrowser/gr;
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
    .line 105
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gr;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gr;->a:Lmobi/mgeek/TunnyBrowser/ShareActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ShareActivity;->finish()V

    .line 109
    return-void
.end method

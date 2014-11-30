.class Lmobi/mgeek/TunnyBrowser/gz;
.super Landroid/content/AsyncQueryHandler;
.source "SpeedDialChooser.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/gy;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/gy;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gz;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gz;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/gy;->a(Lmobi/mgeek/TunnyBrowser/gy;)Lmobi/mgeek/TunnyBrowser/he;

    move-result-object v0

    invoke-virtual {v0, p3}, Lmobi/mgeek/TunnyBrowser/he;->changeCursor(Landroid/database/Cursor;)V

    .line 215
    return-void
.end method

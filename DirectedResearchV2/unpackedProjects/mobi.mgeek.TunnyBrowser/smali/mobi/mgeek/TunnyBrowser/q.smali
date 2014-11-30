.class final Lmobi/mgeek/TunnyBrowser/q;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/q;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Browser;->f(Landroid/content/Context;)V

    .line 284
    return-void
.end method

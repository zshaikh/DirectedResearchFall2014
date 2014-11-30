.class public Lcom/dolphin/browser/c/q;
.super Lcom/dolphin/browser/c/a;
.source "MenuBarCommand.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/c/q;->a:I

    .line 13
    iput p1, p0, Lcom/dolphin/browser/c/q;->a:I

    .line 14
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/c/u;

    invoke-direct {v0}, Lcom/dolphin/browser/c/u;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/u;->a()Z

    goto :goto_0

    .line 30
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/c/w;

    invoke-direct {v0}, Lcom/dolphin/browser/c/w;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/w;->a()Z

    goto :goto_0

    .line 33
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/c/y;

    invoke-direct {v0}, Lcom/dolphin/browser/c/y;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/y;->a()Z

    goto :goto_0

    .line 36
    :pswitch_3
    new-instance v0, Lcom/dolphin/browser/c/z;

    invoke-direct {v0}, Lcom/dolphin/browser/c/z;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/z;->a()Z

    goto :goto_0

    .line 40
    :pswitch_4
    new-instance v0, Lcom/dolphin/browser/c/m;

    invoke-direct {v0}, Lcom/dolphin/browser/c/m;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/m;->a()Z

    goto :goto_0

    .line 43
    :pswitch_5
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionLoadHomepage2()Z

    goto :goto_0

    .line 49
    :pswitch_6
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/dolphin/browser/c/q;->a:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/c/q;->a(I)V

    .line 20
    const/4 v0, 0x1

    return v0
.end method
